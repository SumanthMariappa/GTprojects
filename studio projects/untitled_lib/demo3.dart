
import 'package:flutter/material.dart';
class screen extends StatelessWidget {
  const screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: Center(
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                border: Border.all(),
                shape: BoxShape.circle,
                color: Colors.lightGreen,
                image: DecorationImage(
                  image: AssetImage("asset/img 1.jpg"),
                ),
              ),
            ),
          ),
          actions: [
            Text("GT"),

          ],

        ),
      body: Column(
        children: [
          SizedBox(height: 50,),
          Center(
            child: Container(
              height: 300,
                width:300,
              decoration:BoxDecoration(
                image:DecorationImage(image: AssetImage("asset/images.png"),fit: BoxFit.fill),
                border: Border.all(),
                shape: BoxShape.rectangle,
              ),
child: Column(
  children: [
    SizedBox(height: 50,),
    Padding(
      padding: const EdgeInsets.only(top: 8.0,left: 12,right: 20),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Enter Username",
          labelText: "Password",
          icon: Icon(Icons.person),
          border: OutlineInputBorder(),
        ),
      ),
    ),
    SizedBox(height: 50,),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "password",
          labelText: "password",
          icon: Icon(Icons.key),
          border: OutlineInputBorder(),
        ),
      ),
    ),
    // SizedBox(height: 100,),
    ElevatedButton(onPressed: (){}, child: Text("login")),

  ],
),


            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70,left: 50,),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 150,
                   decoration: BoxDecoration(
                     image: DecorationImage(image: AssetImage("asset/img 1.jpg"))
                   ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("asset/img 2.jpg"))
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
