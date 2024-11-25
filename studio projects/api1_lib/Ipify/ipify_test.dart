import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class ipifytest extends StatefulWidget {
  const ipifytest({super.key});

  @override
  State<ipifytest> createState() => _ipifytestState();
}


class _ipifytestState extends State<ipifytest> {
  Map<String,dynamic> a={};
  Future<dynamic> fetchData() async{
    final apiRespone=await http.get(Uri.parse("https://api.ipify.org?format=json"));
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
        title: Text("GET_ipify"),
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
                  Text("ip:${a["ip" ]}"),
                ],
              );
            }
          }),
        ],
      ),
    );
  }
}
