import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'services/api_service.dart';
import 'models/character_model.dart';

class Tugas14 extends StatefulWidget {
  const Tugas14({super.key});

  @override
  State<Tugas14> createState() => _Tugas14State();
}

class _Tugas14State extends State<Tugas14> {
  final ApiService _apiService = ApiService(Dio());
  late Future<List<Character>> _charactersFuture;
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _charactersFuture = _apiService.getAllCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game of Thrones'),
        backgroundColor: const Color.fromARGB(255, 35, 152, 211),
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // ================= SEARCH BAR =================
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Cari nama karakter...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),

          // ================= DAFTAR KARAKTER =================
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                setState(() {
                  _charactersFuture = _apiService.getAllCharacters();
                });
              },
              child: FutureBuilder<List<Character>>(
                future: _charactersFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return const Center(
                      child: Text('Tidak ada karakter ditemukan.'),
                    );
                  }

                  // Logika Filter dengan penanganan nilai null
                  final characters = snapshot.data!.where((character) {
                    final namaKarakter = character.fullName ?? '';
                    return namaKarakter.toLowerCase().contains(
                      _searchQuery.toLowerCase(),
                    );
                  }).toList();

                  if (characters.isEmpty) {
                    return const Center(
                      child: Text('Karakter tidak ditemukan.'),
                    );
                  }

                  return ListView.builder(
                    itemCount: characters.length,
                    itemBuilder: (context, index) {
                      final character = characters[index];

                      return Card(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        elevation: 3,
                        child: InkWell(
                          // ================= PINDAH KE DETAIL PAGE =================
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailScreen(character: character),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    character.imageUrl ?? '',
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover,
                                    errorBuilder:
                                        (context, error, stackTrace) =>
                                            Container(
                                              width: 60,
                                              height: 60,
                                              color: Colors.grey,
                                            ),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Text(
                                    character.fullName ?? 'Unknown',
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ================= HALAMAN DETAIL PAGE =================
class DetailScreen extends StatelessWidget {
  final Character character;

  const DetailScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.fullName ?? 'Detail Karakter'),
        backgroundColor: const Color.fromARGB(255, 35, 152, 211),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              character.imageUrl ?? '',
              width: double.infinity,
              height: 350,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  Container(height: 350, color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    character.fullName ?? 'Unknown',
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.badge, color: Colors.blueGrey),
                    title: const Text('Title / Gelar'),
                    subtitle: Text(
                      character.title ?? '-',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.family_restroom,
                      color: Colors.blueGrey,
                    ),
                    title: const Text('House / Keluarga'),
                    subtitle: Text(
                      character.family ?? '-',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
