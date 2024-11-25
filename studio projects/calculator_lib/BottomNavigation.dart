import 'package:flutter/material.dart';
import 'bmi.dart';
import 'calculator.dart';
import 'gst.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _index = 0;

  final screens = [
    calculator(),
    gst(),
    bmi(),
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
          backgroundColor: Colors.orange,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.calculate_outlined),label: "Calculator"),
            BottomNavigationBarItem(icon: Icon(Icons.table_view_outlined),label: "GST Calculator"),
            BottomNavigationBarItem(icon: Icon(Icons.health_and_safety),label: "BMI Calculator"),
          ],
          currentIndex: _index,
          onTap: tap,

        )
    );
  }
}
