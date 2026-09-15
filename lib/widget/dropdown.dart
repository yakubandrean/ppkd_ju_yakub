
import 'package:flutter/material.dart';

/// =====================================================
/// 3. HALAMAN DROPDOWN - Pilih Kategori Produk
/// =====================================================
class DropdownPage extends StatefulWidget {
  const DropdownPage({super.key});

  @override
  State<DropdownPage> createState() => _DropdownPageState();
}

class _DropdownPageState extends State<DropdownPage> {
  final List<String> _kategori = [
    'Elektronik',
    'Pakaian',
    'Makanan',
    'Lainnya',
  ];
  String? _kategoriTerpilih;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Kategori Produk',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              labelText: 'Pilih Kategori',
              border: OutlineInputBorder(),
            ),
            value: _kategoriTerpilih,
            items: _kategori
                .map(
                  (kategori) =>
                      DropdownMenuItem(value: kategori, child: Text(kategori)),
                )
                .toList(),
            onChanged: (value) {
              setState(() {
                _kategoriTerpilih = value;
              });
            },
          ),
          const SizedBox(height: 24),
          const Divider(),
          const SizedBox(height: 8),
          const Text(
            'Status Terkini:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.indigo.shade50,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.indigo),
            ),
            child: Text(
              _kategoriTerpilih == null
                  ? 'Anda belum memilih kategori'
                  : 'Anda memilih kategori: $_kategoriTerpilih',
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}