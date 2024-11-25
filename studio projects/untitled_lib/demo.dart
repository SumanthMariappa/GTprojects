import 'package:flutter/material.dart';
class abx extends StatelessWidget {
  const abx ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
      backgroundColor:Colors.green,
      leading:const Icon(Icons.menu),
      title: Text("Hello"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.camera),
          ),
        ]
      ),
       body: Column(
  children: [
    TextFormField(),
    TextFormField(),SizedBox(height: 60,),
    ElevatedButton(onPressed: (){}, child:Text("login")),

  ],
),
    );
  }

}
