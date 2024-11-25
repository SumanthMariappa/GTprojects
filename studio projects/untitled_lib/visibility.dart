import 'package:flutter/material.dart';
import 'package:untitled/profile.dart';
import 'package:untitled/spotify.dart';
import 'Amazon.dart';
import 'amazonpge1.dart';
import 'imagepage1.dart';
import 'insta 2.dart';


class Botnavi extends StatefulWidget {
  const Botnavi({super.key});

  @override
  State<Botnavi> createState() => _BotnaviState();
}

class _BotnaviState extends State<Botnavi> {

  int _index = 0;

  final screens = [
    Amazonpage(),
    sub(),
    spotify(),
    instaprofile2(),
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
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
           BottomNavigationBarItem(icon: Icon(Icons.settings),label: "profile"),
            BottomNavigationBarItem(icon: Icon(Icons.store),label: "Amazon"),
            BottomNavigationBarItem(icon: Icon(Icons.manage_accounts),label: "Instagram"),
          ],
        currentIndex: _index,
        onTap: tap,
      ),
    );
  }
}



class qwe extends StatefulWidget {
  const qwe({super.key});

  @override
  State<qwe> createState() => _qweState();
}

class _qweState extends State<qwe> {


  bool _show = false;
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Visibility(
            visible: _show ,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.cyanAccent,
            ),
          ),
          TextFormField(),
          ElevatedButton(onPressed: (){
            setState(() {
              _show =!_show;
            });
          }, child: Text("ok"))
        ],
      ),
    );
  }
}

