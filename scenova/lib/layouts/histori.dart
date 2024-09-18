import 'package:flutter/material.dart';

class HistoriPage extends StatelessWidget {
  const HistoriPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Riwayat Tontonan",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
              elevation: 5,

              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.yellow, 
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // riwayat 1
                    ListTile(
                      leading: Image.asset('assets/foto1.jpg'),
                      title: const Text("King The Land"),
                      subtitle: const Text("Episode 2"),
                    ),
                    const Divider(
                      height: 2,
                      thickness: 1,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Tooltip(
                          message: 'Dowloand video',
                          child: TextButton(
                            onPressed: () {},
                            child: const Text('Dowloand'),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Tooltip(
                          message: 'Tonton lagi',
                          child: TextButton(
                            onPressed: () {},
                            child: const Text('Play'),
                          ),
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
