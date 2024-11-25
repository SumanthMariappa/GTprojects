import 'package:flutter/material.dart';

class list extends StatefulWidget {
  const list({super.key});

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  TextEditingController a=TextEditingController();
  List b=[];
  String value="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        actions: [Icon(Icons.more_vert)],
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: a,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  border: OutlineInputBorder()
              ),
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue
              ),
              onPressed: (){
                setState(() {
                  int data=int.parse(a.text);
                  b.add(data);
                });
              }, child: Text("ON",style: TextStyle(fontSize: 20,color: Colors.black))),
          SizedBox(height: 30),
          Container(
            height: 380,
            width: 380,
            decoration: BoxDecoration(
                border: Border.all()
            ),
            child: ListView.builder(
                itemCount: b.length,
                itemBuilder: (BuildContext context,int index){
                  return Text(b[index].toString(),style: TextStyle(fontSize: 30));
                }),
          ),
          Row(
            children: [
              SizedBox(width: 30),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        b.sort();
                        b.first;
                        print(b);
                      });
                      showDialog(
                          context: context, builder: (BuildContext context){
                        return AlertDialog(
                          title: Container(
                            height: 100,
                            width: 100,
                            child: Column(
                              children: [
                                Text(b.first.toString()),
                              ],
                            ),
                          ),
                        );
                      }
                      );
                    }, child: Text("Min",style: TextStyle(fontSize: 20))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        b.sort();
                        b.last;
                        print(b);
                      });
                      showDialog(context: context, builder: (BuildContext context){
                        return AlertDialog(
                          title: Container(
                            height: 100,
                            width: 100,
                            child: Column(
                              children: [
                                Text(b.last.toString()),
                              ],
                            ),
                          ),
                        );
                      });
                    }, child: Text("Max",style: TextStyle(fontSize: 20))),
                  ),
                ],
              ),
              SizedBox(width: 40),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        b.sort();
                        value=b.toString();
                      });
                      showDialog(context: context, builder:(BuildContext context){
                        return AlertDialog(
                          title: Container(
                            height: 100,
                            width: 100,
                            child: Column(
                              children: [
                                Text("${value}"),
                              ],
                            ),
                          ),
                        );
                      }
                      );
                    }, child: Text("Asc",style: TextStyle(fontSize: 20))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        b.sort();
                        value=b.reversed.toString();
                      });
                      showDialog(context: context, builder: (BuildContext context){
                        return AlertDialog(
                          title: Container(
                            height: 100,
                            width: 100,
                            child: Column(
                              children: [
                                Text("${value}"),
                              ],
                            ),
                          ),
                        );
                      }
                      );
                    }, child: Text("Dec",style: TextStyle(fontSize: 20))),
                  ),
                ],
              ),
              SizedBox(width: 40),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        b.sort();
                        var a=b.where((b)=> b<5);
                        value=a.toString();
                      });
                      showDialog(context: context, builder: (BuildContext context){
                        return AlertDialog(
                          title: Container(
                            height: 100,
                            width: 100,
                            child: Column(
                              children: [
                                Text("${value}"),
                              ],
                            ),
                          ),
                        );
                      }
                      );
                    }, child: Text("<5",style: TextStyle(fontSize: 20))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        b.sort();
                        var a=b.where((b)=> b>5);
                        value=a.toString();
                      });
                      showDialog(context: context, builder: (BuildContext context){
                        return AlertDialog(
                          title: Container(
                            height: 100,
                            width: 100,
                            child: Column(
                              children: [
                                Text("${value}"),
                              ],
                            ),
                          ),
                        );
                      }
                      );
                    }, child: Text(">5",style: TextStyle(fontSize: 20))),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}