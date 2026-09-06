import 'package:flutter/material.dart';

class Tugas3 extends StatelessWidget {
  const Tugas3({super.key});

  Widget _buildGaleriItem(String imagePath, String label) {
    return ClipRRect(
      // Membuat sudut gambar melengkung (rounded corner) seperti di desain
      borderRadius: BorderRadius.circular(10),

      // Stack membungkus Image + Text label di atasnya
      child: Stack(
        children: [
          // Lapisan bawah: gambar wilayah
          Image.asset(
            imagePath,
            width: double.infinity,
            height: 500,
            fit: BoxFit.cover,
          ),

          // Lapisan atas: label nama wilayah (pill/badge overlap di bagian bawah gambar)
          Positioned(
            bottom: 6,
            left: 6,
            right: 6,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
              decoration: BoxDecoration(
                // Warna teal semi-transparan seperti pada gambar acuan
                color: const Color(0xFF86A6A2).withValues(alpha: 0.85),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color.fromARGB(255, 85, 6, 6),
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(171, 2, 48, 201),
        title: Text(
          'Registrasi & Edukasi',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight(700),
          ),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 211, 211, 211),
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Center(
                    child: Text(
                      'Form Registrasi',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 245, 245, 245),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Icon(
                            Icons.person_outline,
                            color: Colors.grey[700],
                          ),
                        ),
                        hintText: 'Nama Pengguna',
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 14,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 245, 245, 245),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Icon(Icons.mail, color: Colors.grey[700]),
                        ),
                        hintText: 'E-Mail Pengguna',
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 14,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 245, 245, 245),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Icon(Icons.phone, color: Colors.grey[700]),
                        ),
                        hintText: 'Telephone Pengguna',
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 14,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 245, 245, 245),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Icon(Icons.key, color: Colors.grey[700]),
                        ),
                        hintText: 'Input Password',
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 14,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 245, 245, 245),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Icon(Icons.key, color: Colors.grey[700]),
                        ),
                        hintText: 'Konfirmasi Password',
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 14,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Center(
              child: Text(
                'Wilayah Pemantauan Kualitas Udara Terdekat',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            const SizedBox(height: 10),
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              childAspectRatio: 0.85,

              children: [
                _buildGaleriItem('assets/images/jkt.jpg', 'Jakarta'),
                _buildGaleriItem('assets/images/bdg.jpg', 'Bandung'),
                _buildGaleriItem('assets/images/diy.jpg', 'Yogyakarta'),
                _buildGaleriItem('assets/images/smg.jpg', 'Semarang'),
                _buildGaleriItem('assets/images/lpg.jpg', 'Lampung'),
                _buildGaleriItem('assets/images/pdg.jpg', 'Padang'),
              ],
            ),
            // GridView.count(
            //   shrinkWrap: true,
            //   physics: NeverScrollableScrollPhysics(),
            //   crossAxisCount: 3,
            //   children: [
            //     Stack(
            //       children: [
            //         Container(
            //           margin: EdgeInsets.only(
            //             left: 10,
            //             top: 10,
            //             right: 10,
            //             bottom: 10,
            //           ),
            //           child: Column(
            //             children: [
            //               Image(
            //                 image: AssetImage('assets/images/harumonylogo.jpg'),
            //               ),
            //               Text('Jakarta'),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //     Stack(
            //       children: [
            //         Container(
            //           margin: EdgeInsets.only(
            //             left: 10,
            //             top: 10,
            //             right: 10,
            //             bottom: 10,
            //           ),
            //           child: Column(
            //             children: [
            //               Image(
            //                 image: AssetImage('assets/images/harumonylogo.jpg'),
            //               ),
            //               Text('Jakarta'),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //     Stack(
            //       children: [
            //         Container(
            //           margin: EdgeInsets.only(
            //             left: 10,
            //             top: 10,
            //             right: 10,
            //             bottom: 10,
            //           ),
            //           child: Column(
            //             children: [
            //               Image(
            //                 image: AssetImage('assets/images/harumonylogo.jpg'),
            //               ),
            //               Text('Jakarta'),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //     Stack(
            //       children: [
            //         Container(
            //           margin: EdgeInsets.only(
            //             left: 10,
            //             top: 10,
            //             right: 10,
            //             bottom: 10,
            //           ),
            //           child: Column(
            //             children: [
            //               Image(
            //                 image: AssetImage('assets/images/harumonylogo.jpg'),
            //               ),
            //               Text('Jakarta'),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //     Stack(
            //       children: [
            //         Container(
            //           margin: EdgeInsets.only(
            //             left: 10,
            //             top: 10,
            //             right: 10,
            //             bottom: 10,
            //           ),
            //           child: Column(
            //             children: [
            //               Image(
            //                 image: AssetImage('assets/images/harumonylogo.jpg'),
            //               ),
            //               Text('Jakarta'),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //     Stack(
            //       children: [
            //         Container(
            //           margin: EdgeInsets.only(
            //             left: 10,
            //             top: 10,
            //             right: 10,
            //             bottom: 10,
            //           ),
            //           child: Column(
            //             children: [
            //               Image(
            //                 image: AssetImage('assets/images/harumonylogo.jpg'),
            //               ),
            //               Text('Jakarta'),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
