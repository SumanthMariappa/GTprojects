import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;


class genderizetest extends StatefulWidget {
  const genderizetest({super.key});

  @override
  State<genderizetest> createState() => _genderizetestState();
}

class _genderizetestState extends State<genderizetest> {
  Map<String,dynamic> a={};
  Future<dynamic> fetchdata() async{
    final apiRespone=await http.get(Uri.parse("https://api.genderize.io?name=luc"));
    a=jsonDecode(apiRespone.body);
  }
  void initstate(){
    super.initState();
    fetchdata();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GET_Genderize"),
      ),
      body: Column(
        children: [
          FutureBuilder(future: fetchdata(), builder: (BuildContext context, snapshot){
            if(snapshot.connectionState==ConnectionState.waiting){
              return CircularProgressIndicator();
            }
            else if(snapshot.hasError){
              return Text("Error:${snapshot.error}");
            }
            else{
              return Column(
                children: [
                  Text("'count':${a["count" ]},"),
                  Text("'name':${a["name"]},"),
                  Text("'gender':${a["gender"]},"),
                  Text("'probability':${a["probability"]}"),
                ],
              );
            }
          }),
        ],
      ),
    );
  }
}
