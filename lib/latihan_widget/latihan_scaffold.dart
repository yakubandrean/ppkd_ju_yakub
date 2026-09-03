import 'package:flutter/material.dart';

class LatihanScaffold extends StatelessWidget {
  const LatihanScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Scaffold'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: const Color.fromARGB(255, 8, 59, 100),
      ),
      body: Column(
        children: [
          Text(
            'Halo, ini adalah sebuah text yang dibungkus oleh Widget Column dan Scaffold',
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
