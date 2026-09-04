import 'package:flutter/material.dart';

class Tugas2 extends StatelessWidget {
  const Tugas2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(189, 193, 252, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(107, 65, 223, 1),
        title: Text(
          "Detail Toko",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsetsGeometry.only(
                    left: 17,
                    top: 20,
                    right: 10,
                    bottom: 20,
                  ),
                  child: Text(
                    'Harumony Mystic Emporium',
                    style: TextStyle(fontSize: 26, height: 0.7),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 5,
                top: 25,
                right: 5,
                bottom: 10,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 92, 48, 196),
                borderRadius: BorderRadius.circular(24), // Sudut membulat
                border: Border.all(
                  color: const Color.fromARGB(107, 63, 66, 201),
                  width: 1.5,
                ),
              ),
              child: const Row(
                children: [
                  Icon(Icons.email, color: Colors.black, size: 20),
                  SizedBox(width: 12), // Jarak antara ikon dan teks
                  Text(
                    'harumony.id',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 0,
                top: 10,
                right: 0,
                bottom: 10,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 12),
              child: const Row(
                children: [
                  Icon(Icons.phone, size: 13),
                  SizedBox(width: 5),
                  Text('083841111864', style: TextStyle(fontSize: 12)),
                  Spacer(),
                  Icon(Icons.location_on),
                  SizedBox(width: 1),
                  Text('Jakarta, Indonesia', style: TextStyle(fontSize: 12)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  // Card kiri: 300+ books sold
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 6),
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(107, 134, 136, 255),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: const Color.fromARGB(107, 134, 136, 255),
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: const [
                          Text(
                            '300+',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'books sold per month',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Card kanan: rating
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 6),
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(107, 134, 136, 255),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: const Color.fromARGB(107, 134, 136, 255),
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                '4.8 / 5',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.star,
                                color: Color.fromRGBO(255, 210, 60, 1),
                                size: 18,
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            'rating by user',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 0,
                top: 0,
                right: 0,
                bottom: 20,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Text(
                'Harumony Mystic Emporium adalah toko buku  bernuansa magis yang menghadirkan koleksi novel fantasi, buku misteri, misteri, spiritualitas, hingga literatur klasik dalam suasana hangat dan estetik. Dengan sentuhan tema celestia dan enchanted, toko ini dirancang sebagai tempat nyaman bagi para pecinta buku untuk menjelajahi dunia imajinasi pengetahuan, dan kisah penuh keajaiban. Selain buku, Harumony Mystic Emporium juga menawarkan berbagai aksesori dan dekorasi bertema mystic yang menambah pengalaman membaca terasa lebih unik dan nikmat.',
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              width: double.infinity,
              height: 200, // sesuaikan tinggi
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Color.fromARGB(107, 134, 136, 255),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                'assets/images/harumonylogo.jpg',
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
