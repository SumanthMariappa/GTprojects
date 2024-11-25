import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class jokestest extends StatefulWidget {
  const jokestest({super.key});

  @override
  State<jokestest> createState() => _jokestestState();
}

class _jokestestState extends State<jokestest> {

  Map<String,dynamic> a={};
  Future<dynamic> fetchData() async{
    final apiRespone=await http.get(Uri.parse("https://official-joke-api.appspot.com/random_joke"));
    a=jsonDecode(apiRespone.body);
  }
  void initState(){
    super.initState();
    fetchData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GET_Jokes"),
      ),
      body:  Column(
        children: [
          FutureBuilder(future: fetchData(), builder: (BuildContext context, snapshot){
            if(snapshot.connectionState==ConnectionState.waiting){
              return CircularProgressIndicator();
            }
            else if(snapshot.hasError){
              return Text("Error:${snapshot.error}");
            }
            else{
              return Column(
                children: [
                  Text("type:${a["type" ]}"),
                  Text("setup:${a["setup"]}"),
                  Text("punchline:${a["punchline"]}"),
                  Text("id:${a["id"]}"),
                ],
              );
            }
          }),
        ],
      ),
    );
  }
}
