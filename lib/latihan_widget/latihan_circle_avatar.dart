import 'package:flutter/material.dart';

class LatihanCircleAvatar extends StatelessWidget {
  const LatihanCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Circle Avatar'),
        backgroundColor: Colors.blue,
        leading: Icon(Icons.arrow_back_ios_new),
        actions: [Icon(Icons.view_headline, color: Colors.black, size: 50)],
      ),
      body: Center(
        child: CircleAvatar(
          radius: 100,
          backgroundImage: AssetImage('assets/images/fotoyakub.jpg'),
        ),
      ),
    );
  }
}
