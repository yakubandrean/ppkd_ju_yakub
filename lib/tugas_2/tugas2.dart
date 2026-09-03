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
                bottom: 20,
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
                bottom: 20,
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
            Container(
              margin: const EdgeInsets.only(
                left: 0,
                top: 0,
                right: 0,
                bottom: 20,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: const Row(
                children: [
                  Column(
                    children: [
                      Text('300+', style: TextStyle(fontSize: 20)),
                      SizedBox(width: 10),
                      Text(
                        'books sold per month',
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text('4.8/5', style: TextStyle(fontSize: 20)),
                          Icon(
                            Icons.star,
                            color: Color.fromRGBO(255, 233, 34, 0.965),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Text('rating by user', style: TextStyle(fontSize: 10)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
