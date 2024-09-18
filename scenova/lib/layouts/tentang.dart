import 'package:flutter/material.dart';

class TentangPage extends StatelessWidget {
  const TentangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Tentang Scenova", 
              style: TextStyle(
                fontSize: 30, 
                fontWeight: FontWeight.bold, 
                color: Colors.white
              ),
            ),
            SizedBox(height: 20), 
            Text(
              "Scenova adalah aplikasi yang menampilkan koleksi drama, anime, dan film populer. Jelajahi konten terbaik dan dapatkan rekomendasi tontonan seru.",
              style: TextStyle(
                fontSize: 18, 
                color: Colors.white, 
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}