import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// =====================================================
/// 5. HALAMAN TIME PICKER - Atur Pengingat
/// =====================================================
class TimePickerPage extends StatefulWidget {
  const TimePickerPage({super.key});

  @override
  State<TimePickerPage> createState() => _TimePickerPageState();
}

class _TimePickerPageState extends State<TimePickerPage> {
  TimeOfDay? _waktuPengingat;

  Future<void> _pilihWaktu() async {
    final TimeOfDay? hasil = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (hasil != null) {
      setState(() {
        _waktuPengingat = hasil;
      });
    }
  }

  String _formatWaktu(TimeOfDay time) {
    // Format: "07:30 AM"
    final hour = time.hourOfPeriod == 0 ? 12 : time.hourOfPeriod;
    final minute = time.minute.toString().padLeft(2, '0');
    final period = time.period == DayPeriod.am ? 'AM' : 'PM';
    final hourStr = hour.toString().padLeft(2, '0');
    return '$hourStr:$minute $period';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Pengingat',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: _pilihWaktu,
            icon: const Icon(Icons.access_time),
            label: const Text('Pilih Waktu Pengingat'),
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
              color: Colors.orange.shade50,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.orange),
            ),
            child: Text(
              _waktuPengingat == null
                  ? 'Anda belum mengatur waktu pengingat'
                  : 'Pengingat diatur pukul: ${_formatWaktu(_waktuPengingat!)}',
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
