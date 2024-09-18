import 'package:flutter/material.dart';
import 'package:scenova/layouts/histori.dart';
import 'package:scenova/layouts/home.dart';
import 'package:scenova/layouts/tentang.dart';

class MyLanding extends StatefulWidget {
  const MyLanding({super.key});

  @override
  State<MyLanding> createState() => _MyLandingState();
}

class _MyLandingState extends State<MyLanding> {
  int _selectedIndex = 0;

  static final List <Widget> _widgetOptions = <Widget>[
    HomePage(), 
    const HistoriPage(), 
    const TentangPage(), 
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            const Text(
              "Scenova", 
              style: TextStyle(
                color: Color.fromARGB(255, 217, 174, 34),
                fontSize: 24, 
                fontWeight: FontWeight.bold
              ),
            ),

            const Spacer(), 
            Container(
              width: 200,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.grey, 
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Pencarian", 
                    border: InputBorder.none, 
                    contentPadding: EdgeInsets.only(left: 10), 
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      
      body: _widgetOptions[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: "Histori",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: "Tentang",
          ),
        ],

        currentIndex: _selectedIndex,
        selectedItemColor: Colors.yellow, // Kuning saat dipilih
        unselectedItemColor: Colors.white, // Putih saat tidak dipilih
        onTap: _onItemTapped, 
      ),
    );
  }
}