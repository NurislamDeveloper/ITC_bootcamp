import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomNavigationBar Demo',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 int _selectedIndex = 0;

 void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
 }

final List <Widget> _pages = [

 Center(child: Text("Home Page"),),
 Center(child: Text("Search Page"),),
 Center(child: Text("Profile Page"),),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: _pages[_selectedIndex],
     bottomNavigationBar: BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap:_onItemTapped,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,), label: 'Nurislam',),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "ITC",),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Kunduz",),
     ]),
    );
  }
}
