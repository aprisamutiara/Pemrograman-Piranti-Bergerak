import 'package:flutter/material.dart';

class FilmPage extends StatefulWidget {
  final String text;

  FilmPage({
    super.key, 
    required this.text,
    });

  final List<String> filmImages = [
    'assets/foto2.jpeg',
    'assets/foto3.jpeg',
    'assets/foto5.jpeg',
    'assets/foto7.jpeg',
    'assets/foto9.jpeg',
    'assets/foto16.jpeg',
  ];

  @override
  State<FilmPage> createState() => _FilmPageState();
}

class _FilmPageState extends State<FilmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Film"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ), 
        itemCount: widget.filmImages.length, 
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.white,
            child: Image.asset(
              widget.filmImages[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
