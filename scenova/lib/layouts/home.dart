import 'package:flutter/material.dart';
import 'package:scenova/pages/anime.dart';
import 'package:scenova/pages/film.dart';
import 'package:scenova/pages/kdrama.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // List drama
  final List<String> dramaImages = [
    'assets/foto1.jpg',
    'assets/foto2.jpeg',
    'assets/foto3.jpeg',
    'assets/foto4.jpeg',
    'assets/foto5.jpeg',
    'assets/foto6.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0), // Jarak vertikal antara atas dan tombol
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AnimePage(text: 'Berhasil',)),
                          );
                        },
                        child: const Text(
                          "Anime",
                          style: TextStyle(
                            color: Colors.yellow,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => KdramaPage(text: 'Berhasil',)),
                          );
                        },
                        child: const Text(
                          "K-Drama",
                          style: TextStyle(
                            color: Colors.yellow,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FilmPage(text: 'Berhasil',)),
                          );
                        },
                        child: const Text(
                          "Film",
                          style: TextStyle(
                            color: Colors.yellow,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 18.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Populer hari ini",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(5),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: dramaImages.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.white,
                    child: Image.asset(
                      dramaImages[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
