import 'package:flutter/material.dart';

class TugasLayouting extends StatelessWidget {
  const TugasLayouting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black87),
          onPressed: () {},
        ),
        title: const Text(
          'Luminous News',
          style: TextStyle(
            color: Color.fromARGB(255, 10, 163, 92),
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              radius: 16,
              backgroundImage: NetworkImage(
                'https://picsum.photos/100', // Ganti dengan URL foto profil
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Kategori / Tag
            Row(
              children: [
                const Icon(
                  Icons.circle_rounded,
                  size: 7,
                  color: Color.fromARGB(255, 10, 163, 92),
                ),
                const SizedBox(width: 4),
                Text(
                  'Innovation',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 10, 163, 92),
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Judul Utama
            const Text(
              'Masa Depan Energi Terbarukan: Inovasi EcoSync di Tahun 2024',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                height: 1.3,
              ),
            ),
            const SizedBox(height: 12),

            // Meta Info (Tanggal & Penulis)
            Row(
              children: const [
                Icon(
                  Icons.calendar_today_outlined,
                  size: 14,
                  color: Colors.grey,
                ),
                SizedBox(width: 4),
                Text(
                  '24 Mei 2024',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(width: 8),
                Text('•', style: TextStyle(color: Colors.grey, fontSize: 12)),
                SizedBox(width: 8),
                Text(
                  'Oleh Admin EcoSync',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Gambar Sampel
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                'https://picsum.photos/600/400', // Ganti dengan URL / asset gambar
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),

            // Deskripsi / Isi Artikel
            Padding(
              padding: const EdgeInsets.only(
                left: 7,
                top: 0,
                right: 40,
                bottom: 0,
              ),
              child: const Text(
                'Teknologi rumah pintar terus berkembang pesat, membawa efisiensi energi ke tingkat yang belum pernah terbayangkan sebelumnya.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  height: 1.5,
                ),
              ),
            ),
          ], // Children
        ),
      ),
    );
  }
}
