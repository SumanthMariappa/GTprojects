import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class agifytest extends StatefulWidget {
  const agifytest({super.key});

  @override
  State<agifytest> createState() => _agifytestState();
}

class _agifytestState extends State<agifytest> {
  Map<String,dynamic> a={};
  Future<dynamic> fetchData() async{
    final apiRespone=await http.get(Uri.parse("https://api.agify.io/?name=meelad"));
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
                  Text("'count':${a["count" ]}"),
                  Text("'name':${a["name"]}"),
                  Text("'age':${a["age"]}"),
                ],
              );
            }
          })
        ],
      ),
    );
  }
}
