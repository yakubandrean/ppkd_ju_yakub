import 'package:flutter/material.dart';

class Tugas4 extends StatelessWidget {
  const Tugas4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(102, 214, 214, 30),
        title: Text(
          'Laporan & Riwayat Udara',
          style: TextStyle(
            color: Color.fromARGB(255, 9, 9, 9),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 211, 211, 211),
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Center(
                  child: Text(
                    'Laporan Kondisi Udara',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 245, 245, 245),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Icon(Icons.map, color: Colors.grey[700]),
                      ),
                      hintText: 'Titik Lokasi (Nama Jalan/Gedung)',
                      contentPadding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 245, 245, 245),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Icon(Icons.air, color: Colors.grey[700]),
                      ),
                      hintText: 'Skor AQI Teramati',
                      contentPadding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 245, 245, 245),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Icon(Icons.person, color: Colors.grey[700]),
                      ),
                      hintText: 'Nama Pelapor',
                      contentPadding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 245, 245, 245),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Icon(Icons.notes, color: Colors.grey[700]),
                      ),
                      hintText:
                          'Catatan Tambahan (Misal: Berkabut, Berdebu, dll)',
                      contentPadding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ], // Children
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 5, top: 17, right: 12, bottom: 10),
            child: Text(
              'Riwayat Laporan Terakhir',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          const SizedBox(height: 10),
          Card(
            color: Colors.white,
            margin: const EdgeInsets.symmetric(vertical: 4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: const Icon(Icons.warning, color: Colors.red),
              title: const Text(
                'Jakarta Pusat',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                'AQI: 156 - Tidak Sehat. Dilaporkan 5 menit lalu.',
              ),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ),
          Card(
            color: Colors.white,
            margin: const EdgeInsets.symmetric(vertical: 4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: const Icon(Icons.cloud, color: Colors.orange),
              title: const Text(
                'Bandung Kota',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                'AQI: 95 - Sedang. Dilaporkan 30 menit lalu.',
              ),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ),
          Card(
            color: Colors.white,
            margin: const EdgeInsets.symmetric(vertical: 4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: const Icon(Icons.check_circle, color: Colors.green),
              title: const Text(
                'Yogyakarta',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('AQI: 42 - Baik. Dilaporkan 1 hari lalu.'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ),
          Card(
            color: Colors.white,
            margin: const EdgeInsets.symmetric(vertical: 4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: const Icon(Icons.masks, color: Colors.deepOrange),
              title: const Text(
                'Semarang',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                'AQI: 120 - Sensitif. Dilaporkan 1 hari lalu.',
              ),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ),
        ], // Children
      ),
    );
  }
}
