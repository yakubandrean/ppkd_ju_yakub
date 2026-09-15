import 'package:flutter/material.dart';

/// =====================================================
/// 1. HALAMAN CHECKBOX - Syarat & Ketentuan
/// =====================================================
class CheckboxPage extends StatefulWidget {
  const CheckboxPage({super.key});

  @override
  State<CheckboxPage> createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Form Persetujuan',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Checkbox(
                value: _isChecked,
                onChanged: (value) {
                  setState(() {
                    _isChecked = value ?? false;
                  });
                },
              ),
              const Expanded(
                child: Text('Saya menyetujui semua persyaratan yang berlaku'),
              ),
            ],
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
              color: _isChecked ? Colors.green.shade100 : Colors.red.shade100,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: _isChecked ? Colors.green : Colors.red),
            ),
            child: Text(
              _isChecked
                  ? 'Lanjutkan pendaftaran diperbolehkan'
                  : 'Anda belum bisa melanjutkan',
              style: TextStyle(
                color: _isChecked ? Colors.green.shade800 : Colors.red.shade800,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
