import 'package:flutter/material.dart';

class LatihanIcon extends StatelessWidget {
  const LatihanIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Icon'),
        backgroundColor: Colors.blue,
        leading: Icon(Icons.arrow_back_ios_new),
        actions: [Icon(Icons.view_headline, color: Colors.black, size: 50)],
        
      ),
      body: Row(
        children: [
          Icon(Icons.home, size: 50, color: Colors.red),
          Icon(Icons.favorite, size: 50, color: Colors.green),
          Icon(Icons.settings, size: 50, color: Colors.blue),
          Icon(Icons.search, size: 50, color: Colors.orange),
          Icon(Icons.camera_alt, size: 50, color: Colors.purple),

        ],
      ),
    );
  }
}
