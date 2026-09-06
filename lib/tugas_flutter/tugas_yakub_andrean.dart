import 'package:flutter/material.dart';

class TugasYakubAndrean extends StatelessWidget {
  const TugasYakubAndrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PROFIL SAYA', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 17, 82, 134),
        leading: Icon(Icons.arrow_back_ios_new),
        actions: [Icon(Icons.view_headline, color: Colors.black, size: 50)],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Center(
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/fotoyakub.jpg'),
            ),
          ),
          Text(
            'Yakub Andrean',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on, size: 30, color: Colors.blue),
              SizedBox(width: 10),
              Text('DKI Jakarta', style: TextStyle(fontSize: 15)),
            ],
          ),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: const Color.fromARGB(255, 0, 0, 0)),
            ),
            child: Text(
              'Saya adalah seorang sarjana Sistem Infromasi yang telah memiliki total pengalaman kerja selama 5 tahun. Salah satu pengalaman kerja saya merupakan menjadi seorang Associate Programmer pada proyek yang diberikan oleh DPRKP DKI Jakarta. Selain itu, saya juga pernah membuat Sistem Informasi Akademik berbasis website pada sebuah Bimbingan Belajar di Jakart Utara. Projek SIA tersebut ntuk memenuhi tugas akhir saya pada saat menempuh pendidikan S1.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
          ),
          // Text(
          //   'Saya adalah seorang sarjana Sistem Infromasi yang telah memiliki total pengalaman kerja selama 5 tahun. Salah satu pengalaman kerja saya merupakan menjadi seorang Associate Programmer pada proyek yang diberikan oleh DPRKP DKI Jakarta. Selain itu, saya juga pernah membuat Sistem Informasi Akademik berbasis website pada sebuah Bimbingan Belajar di Jakart Utara. Projek SIA tersebut ntuk memenuhi tugas akhir saya pada saat menempuh pendidikan S1.',
          //   textAlign: TextAlign.justify,
          //   style: TextStyle(fontSize: 16),
          // ),
        ],
      ),
    );
  }
}
