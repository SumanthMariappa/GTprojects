import 'package:flutter/material.dart';

class list1 extends StatefulWidget {
  const list1({super.key});

  @override
  State<list1> createState() => _list1State();
}

class _list1State extends State<list1> {
  TextEditingController a=TextEditingController();
  List b=[];
  String value="";
  String name="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  border: OutlineInputBorder(),
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
                  double data=double.parse(a.text);
                  b.add(data);
                  a.clear();
                });
              }, child: Text("Click",style: TextStyle(fontSize: 40,color: Colors.black))),
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
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      color: Colors.cyanAccent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(b[index].toString(),
                              style: TextStyle(fontSize: 30)),
                          Row(
                            children: [
                              IconButton(onPressed: ()

                              {
                                setState(() {
                                  b.removeAt(index);
                                });
                              },
                                  icon:  Icon(Icons.delete)),

                          IconButton(onPressed: (){
                            showDialog(context: context,
                                builder: (context) =>SimpleDialog(
                                  children: [
                                    TextFormField(onChanged: (value){
                                      setState(() {
                                        name = value;
                                      });
                                    }
                                      ),
                                    ElevatedButton(onPressed: (){
                                      setState(() {
                                        b[index] = name.toString();
                                        Navigator.of(context).pop();
                                      });
                                    },
                                        child: Text("OK"))
                                  ],
                                )
                            );
                          },
                              icon:  Icon(Icons.edit)),
                        ],
                      ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Row(
            children: [
              SizedBox(width: 30),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green
                        ),
                        onPressed: (){
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
                    },
                        child: Text("Min",style: TextStyle(fontSize: 20,color: Colors.black))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green
                        ),
                        onPressed: (){
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
                    }, child: Text("Max",style: TextStyle(fontSize: 20,color: Colors.black))),
                  ),
                ],
              ),
              SizedBox(width: 30),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                        onPressed: (){
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
                    }, child: Text("Asc",style: TextStyle(fontSize: 20,color: Colors.black))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                        onPressed: (){
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
                    }, child: Text("Dec",style: TextStyle(fontSize: 20,color: Colors.black))),
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