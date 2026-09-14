import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Menu yang tersedia di Drawer
enum MenuItem { checkbox, switchMode, dropdown, datePicker, timePicker }

class Tugas7 extends StatefulWidget {
  const Tugas7({super.key});

  @override
  State<Tugas7> createState() => _Tugas7State();
}

class _Tugas7State extends State<Tugas7> {
  MenuItem _selectedMenu = MenuItem.checkbox;

  // Judul untuk setiap menu, ditampilkan di AppBar
  final Map<MenuItem, String> _titles = {
    MenuItem.checkbox: 'Syarat & Ketentuan',
    MenuItem.switchMode: 'Mode Gelap',
    MenuItem.dropdown: 'Pilih Kategori Produk',
    MenuItem.datePicker: 'Pilih Tanggal Lahir',
    MenuItem.timePicker: 'Atur Pengingat',
  };

  void _selectMenu(MenuItem menu) {
    setState(() {
      _selectedMenu = menu;
    });
    Navigator.pop(context);
  }

  static const List<Widget> _pages = [
    CheckboxPage(),
    SwitchPage(),
    DropdownPage(),
    DatePickerPage(),
    TimePickerPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_titles[_selectedMenu]!)),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.indigo),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.star_border_sharp, color: Colors.white, size: 36),
                  SizedBox(height: 8),
                  Text(
                    'Menu Form Input',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.check_box_outlined),
              title: const Text('Syarat & Ketentuan'),
              selected: _selectedMenu == MenuItem.checkbox,
              onTap: () => _selectMenu(MenuItem.checkbox),
            ),
            ListTile(
              leading: const Icon(Icons.dark_mode_outlined),
              title: const Text('Mode Gelap'),
              selected: _selectedMenu == MenuItem.switchMode,
              onTap: () => _selectMenu(MenuItem.switchMode),
            ),
            ListTile(
              leading: const Icon(Icons.category_outlined),
              title: const Text('Pilih Kategori Produk'),
              selected: _selectedMenu == MenuItem.dropdown,
              onTap: () => _selectMenu(MenuItem.dropdown),
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text('Pilih Tanggal Lahir'),
              selected: _selectedMenu == MenuItem.datePicker,
              onTap: () => _selectMenu(MenuItem.datePicker),
            ),
            ListTile(
              leading: const Icon(Icons.alarm_outlined),
              title: const Text('Atur Pengingat'),
              selected: _selectedMenu == MenuItem.timePicker,
              onTap: () => _selectMenu(MenuItem.timePicker),
            ),
          ],
        ),
      ),
      body: IndexedStack(index: _selectedMenu.index, children: _pages),
    );
  }
}

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

/// =====================================================
/// 2. HALAMAN SWITCH - Mode Gelap
/// =====================================================
class SwitchPage extends StatefulWidget {
  const SwitchPage({super.key});

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      color: _isDarkMode ? Colors.grey.shade900 : Colors.white,
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pengaturan Tampilan',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: _isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Switch(
                  value: _isDarkMode,
                  onChanged: (value) {
                    setState(() {
                      _isDarkMode = value;
                    });
                  },
                ),
                const SizedBox(width: 8),
                Text(
                  'Aktifkan Mode Gelap',
                  style: TextStyle(
                    color: _isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Divider(color: _isDarkMode ? Colors.white54 : Colors.black26),
            const SizedBox(height: 8),
            Text(
              'Status Terkini:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: _isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: _isDarkMode
                    ? Colors.indigo.shade700
                    : Colors.yellow.shade100,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                _isDarkMode ? 'Mode Gelap Aktif' : 'Mode Terang Aktif',
                style: TextStyle(
                  color: _isDarkMode ? Colors.white : Colors.black87,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
