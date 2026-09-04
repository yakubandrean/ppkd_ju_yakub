import 'package:flutter/material.dart';
import 'package:yakub_ppkd_app_dev/latihan_widget/latihan_circle_avatar.dart';
import 'package:yakub_ppkd_app_dev/latihan_widget/latihan_column.dart';
import 'package:yakub_ppkd_app_dev/latihan_widget/latihan_icon.dart';
import 'package:yakub_ppkd_app_dev/latihan_widget/latihan_richtext.dart';
import 'package:yakub_ppkd_app_dev/latihan_widget/latihan_row.dart';
import 'package:yakub_ppkd_app_dev/latihan_widget/latihan_scaffold.dart';
import 'package:yakub_ppkd_app_dev/tugas_2/tugas2.dart';
import 'package:yakub_ppkd_app_dev/tugas_flutter/tugas_layouting.dart';
import 'package:yakub_ppkd_app_dev/tugas_flutter/tugas_yakub_andrean.dart';

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
      home: const TugasLayouting(),
    );
  }
}
