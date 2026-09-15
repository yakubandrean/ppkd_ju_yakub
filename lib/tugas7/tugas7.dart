import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:yakub_ppkd_app_dev/widget/checkbox.dart';
import 'package:yakub_ppkd_app_dev/widget/datepicker.dart';
import 'package:yakub_ppkd_app_dev/widget/dropdown.dart';
import 'package:yakub_ppkd_app_dev/widget/switch.dart';
import 'package:yakub_ppkd_app_dev/widget/timepicker.dart';

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