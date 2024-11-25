import 'package:flutter/material.dart';
import 'package:ott/profile%20page.dart';
import 'package:ott/video.dart';

import 'download.dart';
import 'homepage.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _index = 0;

  final screens = [
    Homepage(),
    video(),
    download(),
    profile(),
  ];

  void tap(index)
  {
    setState(() {
      _index = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[_index],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          //
          // fixedColor: Colors.white,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white), label: 'Home',),
    BottomNavigationBarItem(icon: Icon(Icons.app_registration,color: Colors.white), label: 'Subscriptions',),
    BottomNavigationBarItem(icon: Icon(Icons.drive_folder_upload,color: Colors.white), label: 'Downloads',),
    BottomNavigationBarItem(backgroundColor: Colors.white, icon: Icon(Icons.person,color: Colors.white), label: 'Profile'),
          ],
          currentIndex: _index,
          onTap: tap,

        )
    );
  }
}