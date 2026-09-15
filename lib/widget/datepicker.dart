import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// =====================================================
/// 4. HALAMAN DATE PICKER - Pilih Tanggal Lahir
/// =====================================================
class DatePickerPage extends StatefulWidget {
  const DatePickerPage({super.key});

  @override
  State<DatePickerPage> createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
  DateTime? _tanggalLahir;

  Future<void> _pilihTanggal() async {
    final DateTime? hasil = await showDatePicker(
      context: context,
      initialDate: DateTime(2000, 1, 1),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (hasil != null) {
      setState(() {
        _tanggalLahir = hasil;
      });
    }
  }

  String _formatTanggal(DateTime date) {
    // Format: "17 Agustus 1945"
    final formatter = DateFormat('d MMMM yyyy', 'id_ID');
    try {
      return formatter.format(date);
    } catch (_) {
      // fallback jika locale 'id_ID' belum diinisialisasi
      const bulan = [
        '',
        'Januari',
        'Februari',
        'Maret',
        'April',
        'Mei',
        'Juni',
        'Juli',
        'Agustus',
        'September',
        'Oktober',
        'November',
        'Desember',
      ];
      return '${date.day} ${bulan[date.month]} ${date.year}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Tanggal Lahir',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: _pilihTanggal,
            icon: const Icon(Icons.calendar_today),
            label: const Text('Pilih Tanggal Lahir'),
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
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.blue),
            ),
            child: Text(
              _tanggalLahir == null
                  ? 'Anda belum memilih tanggal lahir'
                  : 'Tanggal Lahir: ${_formatTanggal(_tanggalLahir!)}',
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
