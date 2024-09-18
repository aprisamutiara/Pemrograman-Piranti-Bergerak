import 'package:flutter/material.dart';

class KdramaPage extends StatefulWidget {
  final String text;

  KdramaPage({
    super.key, 
    required this.text,
    });

  final List<String> dramaImages = [
    'assets/foto1.jpg',
    'assets/foto11.jpeg',
    'assets/foto13.jpg',
    'assets/foto14.jpg',
    'assets/foto15.jpg',
    'assets/foto18.jpeg',
  ];

  @override
  State<KdramaPage> createState() => _KdramaPageState();
}

class _KdramaPageState extends State<KdramaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Korean Drama"),
      ),

      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),

        itemCount: widget.dramaImages.length, 
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.white,
            child: Image.asset(
              widget.dramaImages[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
