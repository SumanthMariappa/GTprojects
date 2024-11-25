import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class abc extends StatefulWidget {
  const abc({super.key});

  @override
  State<abc> createState() => _abcState();
}

class _abcState extends State<abc> {
  Map<String,dynamic> a={};
  Future<dynamic> fetchData() async{
    final apiRespone=await http.get(Uri.parse("https://api.coindesk.com/v1/bpi/currentprice.json"));
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
        title: Text("GET_abc"),
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
                  Text("'time':${a["time" ]}"),
                  Text("'disclaimer':${a["disclaimer"]}"),
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
