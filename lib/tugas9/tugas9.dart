// lib/tugas9/tugas9.dart
//
// Tugas 9 Flutter: Menampilkan Daftar Kategori dengan ListView.builder
// Semua digabung dalam 1 file:
//   - Model Produk
//   - Data dummy (kategori & produk)
//   - Widget ListProduk
//   - 3 Screen (List<String>, List<Map>, Model)
//   - Halaman utama dengan BottomNavigationBar
//
// Cara pakai: panggil Tugas9App() dari main.dart, misalnya:
//   import 'tugas9/tugas9.dart';
//   void main() => runApp(const Tugas9App());

import 'package:flutter/material.dart';
import 'package:yakub_ppkd_app_dev/tugas8/tugas8.dart';

/// ============================================================
/// MODEL
/// ============================================================
class Produk {
  final String nama;
  final String deskripsi;
  final String gambar; // URL gambar (network image)
  final String harga;

  const Produk({
    required this.nama,
    required this.deskripsi,
    required this.gambar,
    required this.harga,
  });
}

/// ============================================================
/// DATA DUMMY
/// ============================================================

// TUGAS 1 — List<String>
final List<String> kategoriString = [
  'Buah-buahan',
  'Sayuran',
  'Elektronik',
  'Pakaian Pria',
  'Pakaian Wanita',
  'Alat Tulis Kantor',
  'Buku & Majalah',
  'Peralatan Dapur',
  'Makanan Ringan',
  'Minuman',
];

// TUGAS 2 — List<Map<String, dynamic>>
final List<Map<String, dynamic>> kategoriMap = [
  {'nama': 'Buah-buahan', 'icon': Icons.apple},
  {'nama': 'Sayuran', 'icon': Icons.grass},
  {'nama': 'Elektronik', 'icon': Icons.electrical_services},
  {'nama': 'Pakaian Pria', 'icon': Icons.man},
  {'nama': 'Pakaian Wanita', 'icon': Icons.woman},
  {'nama': 'Alat Tulis Kantor', 'icon': Icons.edit},
  {'nama': 'Buku & Majalah', 'icon': Icons.menu_book},
  {'nama': 'Peralatan Dapur', 'icon': Icons.kitchen},
  {'nama': 'Makanan Ringan', 'icon': Icons.fastfood},
  {'nama': 'Minuman', 'icon': Icons.local_drink},
];

// TUGAS 3 — Model
// Kategori di sini contohnya "Buah-buahan" (kategori 1).
// Ganti sesuai kategori hasil urutan namamu di daftar pengumpulan tugas.
final List<Produk> produkBuahBuahan = const [
  Produk(
    nama: 'Apel Fuji',
    deskripsi:
        'Apel merah segar, renyah, dan manis. Cocok untuk camilan sehat.',
    gambar: 'https://picsum.photos/seed/apel/300/300',
    harga: 'Rp 32.000/kg',
  ),
  Produk(
    nama: 'Pisang Cavendish',
    deskripsi: 'Pisang manis kaya kalium, cocok untuk sarapan atau smoothie.',
    gambar: 'https://picsum.photos/seed/pisang/300/300',
    harga: 'Rp 18.000/sisir',
  ),
  Produk(
    nama: 'Jeruk Medan',
    deskripsi: 'Jeruk segar rasa manis sedikit asam, kaya vitamin C.',
    gambar: 'https://picsum.photos/seed/jeruk/300/300',
    harga: 'Rp 25.000/kg',
  ),
  Produk(
    nama: 'Mangga Harum Manis',
    deskripsi: 'Mangga matang dengan aroma harum dan daging buah lembut.',
    gambar: 'https://picsum.photos/seed/mangga/300/300',
    harga: 'Rp 30.000/kg',
  ),
  Produk(
    nama: 'Anggur Merah',
    deskripsi: 'Anggur tanpa biji, segar, dan cocok untuk camilan keluarga.',
    gambar: 'https://picsum.photos/seed/anggur/300/300',
    harga: 'Rp 45.000/kg',
  ),
  Produk(
    nama: 'Semangka Merah',
    deskripsi: 'Semangka besar berair, sangat segar untuk cuaca panas.',
    gambar: 'https://picsum.photos/seed/semangka/300/300',
    harga: 'Rp 15.000/kg',
  ),
  Produk(
    nama: 'Melon Golden',
    deskripsi: 'Melon manis dengan daging buah renyah dan aroma khas.',
    gambar: 'https://picsum.photos/seed/melon/300/300',
    harga: 'Rp 20.000/kg',
  ),
  Produk(
    nama: 'Nanas Madu',
    deskripsi: 'Nanas manis rendah asam, enak dimakan langsung atau dijus.',
    gambar: 'https://picsum.photos/seed/nanas/300/300',
    harga: 'Rp 12.000/buah',
  ),
  Produk(
    nama: 'Pepaya California',
    deskripsi: 'Pepaya dengan daging tebal, manis, dan baik untuk pencernaan.',
    gambar: 'https://picsum.photos/seed/pepaya/300/300',
    harga: 'Rp 10.000/buah',
  ),
  Produk(
    nama: 'Stroberi Segar',
    deskripsi: 'Stroberi segar asam manis, cocok untuk topping dessert.',
    gambar: 'https://picsum.photos/seed/stroberi/300/300',
    harga: 'Rp 35.000/box',
  ),
];

/// ============================================================
/// WIDGET — dipanggil per item pada Tugas 3
/// ============================================================
class ListProduk extends StatelessWidget {
  final Produk produk;

  const ListProduk({super.key, required this.produk});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      elevation: 2,
      child: ListTile(
        contentPadding: const EdgeInsets.all(8),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            produk.gambar,
            width: 64,
            height: 64,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Container(
              width: 64,
              height: 64,
              color: Colors.grey[300],
              child: const Icon(Icons.image_not_supported),
            ),
          ),
        ),
        title: Text(
          produk.nama,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text('${produk.deskripsi}\n${produk.harga}'),
        isThreeLine: true,
      ),
    );
  }
}

/// ============================================================
/// TUGAS 1 — List<String>
/// ============================================================
class ListKategoriStringScreen extends StatelessWidget {
  const ListKategoriStringScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: kategoriString.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(child: Text('${index + 1}')),
          title: Text(kategoriString[index]),
        );
      },
    );
  }
}

/// ============================================================
/// TUGAS 2 — List<Map<String, dynamic>>
/// ============================================================
class ListKategoriMapScreen extends StatelessWidget {
  const ListKategoriMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: kategoriMap.length,
      itemBuilder: (context, index) {
        final kategori = kategoriMap[index];
        return ListTile(
          leading: Icon(kategori['icon'] as IconData, color: Colors.green),
          title: Text(kategori['nama'] as String),
        );
      },
    );
  }
}

/// ============================================================
/// TUGAS 3 — Model
/// ============================================================
class ListProdukScreen extends StatelessWidget {
  const ListProdukScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final produk = produkBuahBuahan;

    return ListView.builder(
      itemCount: produk.length,
      itemBuilder: (context, index) {
        return ListProduk(produk: produk[index]);
      },
    );
  }
}

/// ============================================================
/// HALAMAN UTAMA — menggabungkan 3 tugas dengan BottomNavigationBar
/// ============================================================
class Tugas9App extends StatelessWidget {
  const Tugas9App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas 9 - Aplikasi Kategori Toko',
      theme: ThemeData(primarySwatch: Colors.green, useMaterial3: true),
      home: const Tugas9HomePage(),
    );
  }
}

class Tugas9HomePage extends StatefulWidget {
  const Tugas9HomePage({super.key});

  @override
  State<Tugas9HomePage> createState() => _Tugas9HomePageState();
}

class _Tugas9HomePageState extends State<Tugas9HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    ListKategoriStringScreen(), // Tugas 1
    ListKategoriMapScreen(), // Tugas 2
    ListProdukScreen(), // Tugas 3
  ];

  final List<String> _titles = const [
    'Tugas 1: List<String>',
    'Tugas 2: List<Map>',
    'Tugas 3: Model (Produk)',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_titles[_selectedIndex]), centerTitle: true),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Map'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Model',
          ),
        ],
      ),
    );
  }
}
