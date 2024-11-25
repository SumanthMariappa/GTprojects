import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class nationalize extends StatefulWidget {
  const nationalize({super.key});

  @override
  State<nationalize> createState() => _nationalizeState();
}

class _nationalizeState extends State<nationalize> {
  Future<Map<String,dynamic>> fetchData() async{
    final apiResponse=await http.get(Uri.parse("https://api.nationalize.io/?name=nathaniel"));
    if(apiResponse.statusCode==200|| apiResponse.statusCode==201){
      return jsonDecode(apiResponse.body);
    }
    else{
      throw Exception("Failed to load data");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Nationalize-Api"),
        ),
        body: FutureBuilder(future: fetchData(), builder: (context,snapshot){
          if(snapshot.connectionState==ConnectionState.waiting){
            return CircularProgressIndicator();
          }
          else if(snapshot.hasError){
            return Text("Error: ${snapshot.error}");
          }
          else if(snapshot.hasData){
            final data=snapshot.data!;
            final country=data["country"]!;
            // Column(children: [
            //
            // ],);
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text("Count:${data["count"]}"),
                Text("Name:${data["name"]}"),

                Expanded(
                  child: ListView.builder(itemCount:country.length,
                      itemBuilder: (context,int index){
                        return ListTile(
                          title: Text("Country_Id:${country[index]["country_id"]}"),
                          subtitle:Text("Probability:${country[index]["probability"].toString()}") ,
                        );
                      }),
                ),
              ],
            );
          }
          else{
            return Text("No data found");
          }
        }),
        );
    }
}