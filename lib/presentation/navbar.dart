import 'package:flutter/material.dart';
import 'package:manganku/presentation/home/home_screen.dart';

import 'profile/profile_screen.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          switch (_bottomNavIndex) {
            case 0:
              return const HomeScreen();
            case 1:
              return const ProfileScreen();
            default:
              return const HomeScreen();
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile'),
        ],
        onTap: (index) => setState(() => _bottomNavIndex = index),
      ),
    );
  }
}
