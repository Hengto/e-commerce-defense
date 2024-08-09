import 'package:e_commerce/bottom_navigation/ProfileScreen.dart';
import 'package:e_commerce/bottom_navigation/homescreen.dart';
import 'package:e_commerce/bottom_navigation/searchscreen.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  // List of screens to display
  final List<Widget> _screens = [
    HomeScreen(),
    SearchScreen(),
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
      appBar: AppBar(
        title: Text("Shop"),
        actions: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.search))
        ],
        
        
      ),
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: Colors.indigo[900],
        currentIndex: _selectedIndex,
        onTap: (i) => setState(() => _selectedIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home, color: Colors.white,),
            title: Text("Home"),
            selectedColor: Colors.white,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.favorite_border, color: Colors.white,),
            title: Text("Likes"),
            selectedColor: Colors.white,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person, color: Colors.white,),
            title: Text("Profile"),
            selectedColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
