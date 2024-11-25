import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class cointest extends StatefulWidget {
  const cointest({super.key});

  @override
  State<cointest> createState() => _cointestState();
}

class _cointestState extends State<cointest> {
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
        title: Text("Get_coindesk"),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("time:\n updated:${a["time"]["updated"]}"),
                    Text("updatedIOS:${a["time"]["updatedISO"]}"),
                    Text("updatedduK:${a["time"]["updateduk"]}"),
                    Text("disclaimer:${a["disclaimer"]}"),
                    Text("chartName:${a["chartName"]}"),
                    Text("bpi:\n${a["bpi"]["USD"]["code"]}"),
                    Text("symbol:${a["bpi"]["USD"]["symbol"]}"),
                    Text("rate:${a["bpi"]["USD"]["rate"]}"),
                    Text("description:${a["bpi"]["USD"]["description"]}"),
                    Text("rate_float:${a["bpi"]["USD"]["rate_float"]}"),
                    Text("GBP:\n${a["bpi"]["GBP"]["code"]}"),
                    Text("symbol:${a["bpi"]["GBP"]["symbol"]}"),
                    Text("rate:${a["bpi"]["GBP"]["rate"]}"),
                    Text("description:${a["bpi"]["GBP"]["description"]}"),
                    Text("rate_float:${a["bpi"]["GBP"]["rate_float"]}"),
                    Text("EUR:\n${a["bpi"]["EUR"]["code"]}"),
                    Text("symbol:${a["bpi"]["EUR"]["symbol"]}"),
                    Text("rate:${a["bpi"]["EUR"]["rate"]}"),
                    Text("description:${a["bpi"]["EUR"]["description"]}"),
                    Text("rate_float:${a["bpi"]["EUR"]["rate_float"]}"),
                  ],
                );
              }
            })
          ],
        ),
      ),
    );
  }
}
