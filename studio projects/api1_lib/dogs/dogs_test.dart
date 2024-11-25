import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class dogstest extends StatefulWidget {
  const dogstest({super.key});

  @override
  State<dogstest> createState() => _dogstestState();
}

class _dogstestState extends State<dogstest> {
  Map<String,dynamic> a={};
  Future<dynamic> fetchData() async{
    final apiRespone=await http.get(Uri.parse("https://dog.ceo/api/breeds/image/random"));
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
        title: Text("GET_agify"),
      ),
      body: Column(
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
                  Text("message:${a["message" ]}"),
                  Text("status:${a["status"]}"),
                ],
              );
            }
          }),
        ],
      ),
    );
  }
}
