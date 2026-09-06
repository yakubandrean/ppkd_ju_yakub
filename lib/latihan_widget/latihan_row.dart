import 'package:flutter/material.dart';

class LatihanRow extends StatelessWidget {
  const LatihanRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Belajar Row')),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 100),
          Text('Ini text widget kiri', style: TextStyle(color: Colors.red)),
          Text('Ini text widget tengah', style: TextStyle(color: Colors.green)),
          Text('Ini text widget kanan', style: TextStyle(color: Colors.blue)),
        ],
      ),
    );
  }
}
