import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class datatest extends StatefulWidget {
  const datatest({super.key});

  @override
  State<datatest> createState() => _datatestState();
}

class _datatestState extends State<datatest> {
  Future<Map<String,dynamic>> fetchData() async{
    final apiResponse=await http.get(Uri.parse("https://datausa.io/api/data?drilldowns=Nation&measures=Population"));
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
        title: Text("Data-Api"),
      ),
      body: FutureBuilder(future: fetchData(), builder: (context,snapshot){
        if(snapshot.connectionState==ConnectionState.waiting){
          return CircularProgressIndicator();
        }
        else if(snapshot.hasError){
          return Text("Error: ${snapshot.error}");
        }
        else if(snapshot.hasData){
          final a=snapshot.data!;


          // Column(children: [
          //
          // ],);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView.builder(itemCount:a.length,
                    itemBuilder: (context,int index){
                      return ListTile(
                        title: Text("ID Nation:${a[index]["ID Nation"]}"),
                        subtitle: Text("Nation:${a[index]["ID Nation"]}"),
                        trailing: Text("ID Nation:${a[index]["ID Nation"]}"),

                        //subtitle:Text("Probability:${country[index]["probability"].toString()}") ,
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