import 'package:flutter/material.dart';

class LatihanColumn extends StatelessWidget {
  const LatihanColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Column'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: const Color.fromARGB(255, 8, 59, 100),
      ),
      body: Column(
        children: [
          Text('Halo, ini Baris Pertama'),
          Text('Halo, ini Baris Kedua'),
          Text('Halo, ini Baris Ketiga'),
          Text('Halo, ini Baris Keempat'),
          Text('Halo, ini Baris Kelima'),
          Text('Halo, ini Baris Keenam'),
          Text('Halo, ini Baris Ketujuh'),
        ],
      ),
    );
  }
}
