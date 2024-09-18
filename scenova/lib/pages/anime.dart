import 'package:flutter/material.dart';

class AnimePage extends StatefulWidget {
  final String text;

  AnimePage({
    super.key, 
    required this.text,
    });

  final List<String> animeImages = [
    'assets/foto4.jpeg',
    'assets/foto6.jpeg',
    'assets/foto8.jpeg',
    'assets/foto10.jpeg',
    'assets/foto12.jpeg',
    'assets/foto17.jpeg',
  ];

  @override
  State<AnimePage> createState() => _AnimePageState();
}

class _AnimePageState extends State<AnimePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Anime"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ), 
        itemCount: widget.animeImages.length, 
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.white,
            child: Image.asset(
              widget.animeImages[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
