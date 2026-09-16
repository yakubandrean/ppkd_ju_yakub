import 'package:flutter/material.dart';
import 'package:yakub_ppkd_app_dev/latihan_widget/latihan_bottom_navigator.dart';
import 'package:yakub_ppkd_app_dev/tugas5/tugas5.dart';
import 'package:yakub_ppkd_app_dev/tugas7/tugas7.dart';
import 'package:yakub_ppkd_app_dev/tugas8/tugas8.dart';
import 'package:yakub_ppkd_app_dev/tugas9/tugas9.dart';
import 'package:yakub_ppkd_app_dev/tugas_3dan4/tugas4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Tugas9App(),
    );
  }
}
