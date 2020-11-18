

import 'package:flutter/material.dart';



class Beranda extends StatefulWidget {
  @override
  static const routename= "/dashboard";
  static const IconData account_circle_sharp = IconData(0xeb10, fontFamily: 'MaterialIcons');
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Beranda> {
   int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Halaman Beranda',
      style: optionStyle,
    ),
    Text(
      'Halaman Halaman 2',
      style: optionStyle,
    ),
    Text(
      'Halaman Halaman 3',
      style: optionStyle,
    ),
    Text(
      'Halaman Halaman 3',
      style: optionStyle,
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.blueAccent,),
            title: Text('Beranda',style: TextStyle(color: Colors.blueAccent),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business, color: Colors.blueAccent,),
            title: Text('Informasi', style: TextStyle(color: Colors.blueAccent),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline,color: Colors.blueAccent,),
            title: Text('Profile',style: TextStyle(color: Colors.blueAccent),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app,color: Colors.blueAccent,),
            title: Text('Exit',style: TextStyle(color: Colors.blueAccent),),
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        ),
      )
    );
  }
}