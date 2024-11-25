import 'package:flutter/material.dart';

class abc extends StatelessWidget {
  const abc({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("asset/images.png"),
        title: Center(child: Text("GT", style: TextStyle(
            color: Colors.amber, fontSize: 40, fontWeight: FontWeight.bold
        ),)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.minimize),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.close),
          ),

        ],
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text("welcome to GT", style: TextStyle(
              color: Colors.blue, fontSize: 40, fontWeight: FontWeight.bold,
            ),)),
          ),

          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Enter username",
                labelText: "Username",
                icon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "password",
              labelText: "password",
              icon: Icon(Icons.key),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 50,),
          ElevatedButton(onPressed: () {}, child: Text("login")),
          Image.asset("asset/images.png"),
        ],
      ),
    );
  }
}//
        // ],
      // ),
    //}

