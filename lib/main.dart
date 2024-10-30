import 'package:flutter/material.dart';
import 'home.dart';
import 'recycling.dart';
import 'carpooling.dart';
import 'social.dart';
import 'profile.dart';
import 'starting_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sustainability App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: StartingPage(), // Set the StartingPage as the initial screen
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 2; // Default to HomePage
  static final List<Widget> _pages = <Widget>[
    RecyclingScreen(),
    CarpoolingScreen(),
    HomeScreen(),
    SocialScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.recycling,
            ),
            label: 'Recycle',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: 'Transport',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hub),
            label: 'Green Hub',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
