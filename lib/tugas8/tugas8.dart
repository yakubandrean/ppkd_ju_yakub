import 'package:flutter/material.dart';
import 'package:yakub_ppkd_app_dev/tugas7/tugas7.dart';

class Tugas8 extends StatefulWidget {
  const Tugas8({Key? key}) : super(key: key);

  @override
  State<Tugas8> createState() => _Tugas8State();
}

class _Tugas8State extends State<Tugas8> {
  int _selectedIndex = 0;
  static final List<Widget> _pages = <Widget>[
    const Tugas7(),
    const TentangAplikasiPage(),
  ];

  // Fungsi yang dipanggil saat tab di klik
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Tentang Aplikasi',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo,
        onTap: _onItemTapped,
      ),
    );
  }
}

class TentangAplikasiPage extends StatelessWidget {
  const TentangAplikasiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Aplikasi'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Judul Aplikasi:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(
              'Aplikasi Latihan Navigasi PPKD',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),

            Text(
              'Penjelasan Singkat:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(
              'Aplikasi ini dibuat untuk memenuhi Tugas 8. Menggunakan BottomNavigationBar untuk berpindah antara form input (Tugas 7) dan informasi aplikasi.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),

            Text(
              'Nama Pembuat:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(
              'Yakub Andrean',
              style: TextStyle(fontSize: 16),
            ), // Diambil dari nama direktori project Anda
            SizedBox(height: 16),

            Text(
              'Versi:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text('1.0.0', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
