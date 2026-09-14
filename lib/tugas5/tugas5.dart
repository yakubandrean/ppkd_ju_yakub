import 'package:flutter/material.dart';

class Tugas5 extends StatefulWidget {
  const Tugas5({super.key});

  @override
  State<Tugas5> createState() => _Tugas5State();
}

class _Tugas5State extends State<Tugas5> {
  // ==================== STATE VARIABLES ====================

  // 1. State untuk ElevatedButton (toggle teks rahasia)
  bool _isSecretVisible = false;

  // 2. State untuk IconButton (favorite)
  bool _isFavorite = false;

  // 3. State untuk TextButton (deskripsi tambahan)
  bool _isDescriptionVisible = false;

  // 4. State untuk pesan InkWell
  String _inkWellMessage = '';

  // 5 & 6. State untuk counter GestureDetector + FAB
  int _counter = 10;

  // ==================== LOGIC FUNCTIONS ====================

  void _toggleSecretText() {
    setState(() {
      _isSecretVisible = !_isSecretVisible;
    });
    print('ElevatedButton ditekan. Teks rahasia tampil: $_isSecretVisible');
  }

  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
    print('IconButton ditekan. Status favorit: $_isFavorite');
  }

  void _toggleDescription() {
    setState(() {
      _isDescriptionVisible = !_isDescriptionVisible;
    });
    print('TextButton ditekan. Deskripsi tampil: $_isDescriptionVisible');
  }

  void _handleInkWellTap() {
    setState(() {
      _inkWellMessage = 'Sentuhan terdeteksi!';
    });
    print('Pesan rahasia: kotak InkWell berhasil disentuh oleh pengguna.');
  }

  void _handleTap() {
    setState(() {
      _counter += 1;
    });
    print('Ditekan sekali');
  }

  void _handleDoubleTap() {
    setState(() {
      _counter += 2;
    });
    print('Ditekan dua kali');
  }

  void _handleLongPress() {
    setState(() {
      _counter += 3;
    });
    print('Tahan lama');
  }

  void _decrementCounter() {
    setState(() {
      _counter -= 1;
    });
    print('FAB ditekan. Counter dikurangi menjadi $_counter');
  }

  // ==================== BUILD METHOD ====================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Interaksi Flutter',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 243, 47, 33),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ================= 1. ELEVATED BUTTON =================
            Center(child: const Text('Ini tentang ElevatedButton')),
            const SizedBox(height: 8),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                  ),
                  onPressed: _toggleSecretText,
                  child: const Text('Klik Saya!'),
                ),
              ),
            const SizedBox(height: 8),
            if (_isSecretVisible)
              const Center(
                child: Text(
                  'Halo, saya Developer!',
                  style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

            const Divider(height: 40),

            // ================= 2. ICON BUTTON =================
            const _SectionLabel(text: 'Ini tentang IconButton:'),
            const SizedBox(height: 8),
            Column(
              children: [
                IconButton(
                  iconSize: 48,
                  icon: Icon(
                    Icons.favorite,
                    color: _isFavorite ? Colors.red : Colors.grey,
                  ),
                  onPressed: _toggleFavorite,
                ),
                Text(
                  _isFavorite ? 'Disukai!' : 'Belum Disukai',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),

            const Divider(height: 40),

            // ================= 3. TEXT BUTTON =================
            const _SectionLabel(text: 'Ini tentang TextButton:'),
            const SizedBox(height: 8),
            Center(
              child: TextButton(
                onPressed: _toggleDescription,
                child: const Text(
                  'Lihat Deskripsi',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            if (_isDescriptionVisible)
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  'Ini adalah paragraf deskripsi tambahan yang sebelumnya '
                  'tersembunyi. Teks ini hanya muncul setelah TextButton '
                  'di atas ditekan, dan akan hilang lagi jika ditekan '
                  'sekali lagi.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 14, color: Colors.black87),
                ),
              ),

            const Divider(height: 40),

            // ================= 4. INKWELL =================
            const _SectionLabel(text: 'Ini tentang InkWell:'),
            const SizedBox(height: 8),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: _handleInkWellTap,
                borderRadius: BorderRadius.circular(12),
                splashColor: Colors.white54,
                child: Container(
                  height: 90,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 223, 188, 31),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Sentuh Kotak Ini',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            if (_inkWellMessage.isNotEmpty)
              Center(
                child: Text(
                  _inkWellMessage,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 236, 112, 81),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

            const Divider(height: 40),

            // ================= 5. GESTURE DETECTOR =================
            const _SectionLabel(text: 'Ini tentang GestureDetector:'),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: _handleTap,
              onDoubleTap: _handleDoubleTap,
              onLongPress: _handleLongPress,
              child: Container(
                height: 110,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 223, 188, 31),
                  borderRadius: BorderRadius.circular(30),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Angka: $_counter',
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              '• Tap = +1\n• Double Tap = +2\n• Long Press = +3',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13, color: Colors.black87),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),

      // ================= 6. FLOATING ACTION BUTTON =================
      floatingActionButton: FloatingActionButton(
        onPressed: _decrementCounter,
        tooltip: 'Kurangi Angka',
        backgroundColor: Colors.deepPurple.shade100,
        child: const Icon(Icons.remove, color: Colors.black87),
      ),
    );
  }
}

// Widget kecil pembantu untuk label section, biar tidak duplikasi kode
class _SectionLabel extends StatelessWidget {
  final String text;
  const _SectionLabel({required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(fontSize: 13, color: Colors.black54),
      ),
    );
  }
}
