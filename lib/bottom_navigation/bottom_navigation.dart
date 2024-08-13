import 'package:e_commerce/bottom_navigation/ProfileScreen.dart';
import 'package:e_commerce/bottom_navigation/homescreen.dart';
import 'package:e_commerce/bottom_navigation/FavoriteScreen.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

int _selectedIndex = 0;

   final List<Widget> _page= [
      HomeScreen(),
     // SearchScreen(),
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
      body:_page[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(17), topRight: Radius.circular(17)),
          boxShadow: [
            BoxShadow(color: Colors.black38, blurRadius: 10)
          ]
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(17), topRight: Radius.circular(17)),
          child: SalomonBottomBar(
            backgroundColor: Colors.indigo[900],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
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
        ),
      ),
    );
  }
}
