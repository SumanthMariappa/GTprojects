import 'package:flutter/material.dart';
import 'package:ott/homepage.dart';

import 'bottomNavigation.dart';

class download extends StatefulWidget {
  const download({super.key});

  @override
  State<download> createState() => _downloadState();
}

class _downloadState extends State<download> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Scaffold(
        backgroundColor: Color(0xff0f1014),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text("Downloads",
          style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 200,
                width: 200,
                child: Image(image: NetworkImage("https://media.istockphoto.com/id/1325736078/vector/3d-blue-mystery-box-with-illuminated-lighting-glitter-on-dark-background.jpg?s=612x612&w=0&k=20&c=1mxewKm9wOlCS4ai5fBg88EIRjo2LBxnOoCmxt4PcA0=")),
              ),
            ),
            Text("No Download Available",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
            ),
            Center(
              child: Text("Explore and download your favourite movies and",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w200
              ),
              ),
            ),
            Center(
              child: Text("shows to watch on the go",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w200
              ),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => BottomNavigation()));
            },
              style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 90,vertical: 15),
                  textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,color: Colors.white)),
              child:Text("Go to Home",
                style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold,color: Colors.black),),
            ),
          ],
        ),
      ),
    );
  }
}
