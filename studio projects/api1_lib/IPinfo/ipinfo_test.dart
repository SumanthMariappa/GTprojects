import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class ipinfotest extends StatefulWidget {
  const ipinfotest({super.key});

  @override
  State<ipinfotest> createState() => _ipinfotestState();
}

class _ipinfotestState extends State<ipinfotest> {

  Map<String,dynamic> a={};
  Future<dynamic> fetchData() async{
    final apiRespone=await http.get(Uri.parse("https://ipinfo.io/161.185.160.93/geo"));
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
        title: Text("GET_IPinfo"),
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
                  Text("city:${a["city" ]}"),
                  Text("region:${a["region" ]}"),
                  Text("country:${a["country" ]}"),
                  Text("loc:${a["loc" ]}"),
                  Text("org:${a["org" ]}"),
                  Text("postal:${a["postal" ]}"),
                  Text("timezone:${a["timezone" ]}"),
                  Text("readme:${a["readme"]}"),
                ],
              );
            }
          }),
        ],
      ),
    );
  }
}
