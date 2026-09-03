import 'package:flutter/material.dart';

class LatihanRichtext extends StatelessWidget {
  const LatihanRichtext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Richtext'),
        backgroundColor: Colors.blue,
      ),
      body: RichText(
        text: TextSpan(
          text: 'Halo, ini adalah sebuah text yang dibungkus oleh Widget Richtext',
          style: TextStyle(color: Colors.black, fontSize: 15),
          children: <TextSpan>[
            TextSpan(
              text: ' dan ini adalah text tambahan',
              style: TextStyle(color: Colors.red, fontSize: 15),
            ),
            TextSpan(
              text: ' dan ini adalah text tambahan lagi',
              style: TextStyle(color: Colors.blue, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
