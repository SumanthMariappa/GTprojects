import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

import 'client_edit.dart';



class Task1 extends StatefulWidget {

  @override

  _Task1State createState() => _Task1State();

}



class _Task1State extends State<Task1> {

  List<dynamic> clientList = [];

  TextEditingController clientId = TextEditingController();

  TextEditingController clientName = TextEditingController();

  TextEditingController address = TextEditingController();

  TextEditingController createdBy = TextEditingController();



  late Future<void> futureclient;



  @override

  void initState() {

    super.initState();

    futureclient = getAllclient();

  }



  Future<void> getAllclient() async {

    try {

      var apiResponse = await http.get(

        Uri.parse("http://catodotest.elevadosoftwares.com/Client/GetAllClientDetails"));

      print("Status Code: ${apiResponse.statusCode}");

      print("Response Body: ${apiResponse.body}");



      if (apiResponse.statusCode == 200) {

        var responseData = jsonDecode(apiResponse.body);

        setState(() {

          clientList = responseData["clientList"] ?? [];

        });

      } else {

        ScaffoldMessenger.of(context).showSnackBar(

          SnackBar(content: Text("Failed to load data: ${apiResponse.body}")),

        );

      }

    } catch (e) {

      print("Exception: $e");

      ScaffoldMessenger.of(context).showSnackBar(

        SnackBar(content: Text("Error fetching client: $e")),

      );

    }

  }


//post
  Future<void> saveclient() async {

    try {

      var apiResponse = await http.post(

        Uri.parse("http://catodotest.elevadosoftwares.com/Client/InsertClient"),

        headers: {"Content-Type": "application/json"},

        body: jsonEncode({

          "clientId": int.tryParse(clientId.text) ?? 0, // Ensure it's an int

          "clientName": clientName.text,

          "address": address.text,

          "createdBy": int.tryParse(createdBy.text) ?? 0, // Ensure it's an int

        }),

      );



      if (apiResponse.statusCode == 200 || apiResponse.statusCode == 201) {

        print("client added: ${apiResponse.body}");

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("client Added Successfully")));

        await getAllclient(); // Refresh the categories after saving

      } else {

        print("Error: ${apiResponse.statusCode} - ${apiResponse.body}");

        throw Exception("Failed to add client");

      }

    } catch (e) {

      print("Exception: $e");

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Error: $e")));

    }

  }



  Future<void> deleteclient(int clientId) async {

    try {

      var apiResponse = await http.post(

        Uri.parse("http://catodotest.elevadosoftwares.com/Client/RemoveClient"),

        headers: {"Content-Type": "application/json"},

        body: jsonEncode({

          "clientList": clientList

        }),

      );



      if (apiResponse.statusCode == 200 || apiResponse.statusCode == 204) {

        ScaffoldMessenger.of(context).showSnackBar(

          SnackBar(content: Text("client deleted successfully")),

        );



// Remove deleted category from the list and update UI

        setState(() {

          clientList.removeWhere((client) => client["clientList"] == clientList);

        });

      } else {

        ScaffoldMessenger.of(context).showSnackBar(

          SnackBar(content: Text("Failed to delete client")),

        );

      }

    } catch (e) {

      print("Exception: $e");

      ScaffoldMessenger.of(context).showSnackBar(

        SnackBar(content: Text("Error: $e")),

      );

    }

  }



  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text("To fetch client"),

        backgroundColor: Colors.blue,

      ),

      body: Column(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [

// Form fields for adding a new client

          TextFormField(

            controller: clientId,

            decoration: InputDecoration(hintText: "clientId"),

            keyboardType: TextInputType.number, // Ensure numeric input

          ),

          TextFormField(

            controller: clientName,

            decoration: InputDecoration(hintText: "clientName"),

          ),

          TextFormField(

            controller: address,

            decoration: InputDecoration(hintText: "address"),

          ),

          TextFormField(

            controller: createdBy,

            decoration: InputDecoration(hintText: "createdBy"),

            keyboardType: TextInputType.number, // Ensure numeric input

          ),



// Save button

          ElevatedButton(

            onPressed: saveclient,

            child: Text("Save"),

          ),



          Expanded(

            child: FutureBuilder(

              future: futureclient,

              builder: (BuildContext context, snapshot) {

                if (snapshot.connectionState == ConnectionState.waiting) {

                  return Center(child: CircularProgressIndicator());

                } else if (snapshot.hasError) {

                  return Center(child: Text("Error: ${snapshot.error}"));

                } else if (clientList.isEmpty) {

                  return Center(child: Text("No data available"));

                } else {

                  return ListView.builder(

                    itemCount: clientList.length,

                    itemBuilder: (BuildContext context, int index) {

                      final onecat = clientList[index];



                      return ListTile(

                        title: Text("clientId: ${onecat['clientId'].toString()}"),

                        subtitle: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [

                            Text("clientName: ${onecat['clientName'].toString()}"),

                            Text("address: ${onecat['address'] .toString()}"),

                            Text("createdBy: ${onecat['createdBy'].toString()}"), // Ensure it's displayed as a string

                          ],

                        ),

                        trailing: Row(

                          mainAxisSize: MainAxisSize.min,

                          children: [

                            IconButton(

                              icon: Icon(Icons.edit),

                              onPressed: () {

                                Navigator.push(

                                  context,

                                  MaterialPageRoute(

                                    builder: (context) => Task3(

                                      edituser: {

                                        ...onecat,

                                        "clientList": onecat["clientList"].toString(), // Convert categoryId to String

                                      },

                                    ),

                                  ),

                                ).then((_) {

                                  setState(() {

                                    futureclient = getAllclient(); // Refresh the list after editing

                                  });

                                });

                              },

                            ),

                            IconButton(

                              icon: Icon(Icons.delete),

                              onPressed: () {

                                if (onecat['clientList'] != null) {

                                  deleteclient(onecat['clientList']);

                                } else {

                                  ScaffoldMessenger.of(context).showSnackBar(

                                    SnackBar(content: Text("Invalid client ID")),

                                  );

                                }

                              },

                            ),

                          ],

                        ),

                      );

                    },

                  );

                }

              },

            ),

          ),

        ],

      ),

    );

  }

}