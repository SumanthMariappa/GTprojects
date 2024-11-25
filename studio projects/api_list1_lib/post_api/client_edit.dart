import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;



class Task3 extends StatefulWidget {

  final Map<String, dynamic> edituser;



  Task3({super.key, required this.edituser});



  @override

  State<Task3> createState() => _Task3State();

}



class _Task3State extends State<Task3> {

  TextEditingController clientId = TextEditingController();

  TextEditingController clientName = TextEditingController();

  TextEditingController address = TextEditingController();

  TextEditingController createdBy = TextEditingController();



  @override

  void initState() {

    super.initState();

// Ensure categoryId is set as a string for the TextController

    clientId.text = widget.edituser["clientId"].toString();

    clientName.text = widget.edituser["clientName"] ?? "";

    address.text = widget.edituser["address"] ?? "";

    createdBy.text = widget.edituser["createdBy"].toString(); // Ensure it's a string

  }



  Future<void> updateUser() async {

    try {

      final response = await http.post(

        Uri.parse("http://catodotest.elevadosoftwares.com/Client/InsertClient"),

        headers: {"Content-Type": "application/json"},

        body: jsonEncode({

          "clientId": int.parse(clientId.text) ?? 0, // Ensure it's an int

          "category": clientName.text,

          "description": address.text,

          "createdBy": int.parse(createdBy.text) ?? 0 }),

      );



      if (response.statusCode == 200) {

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Category updated successfully")));

        Navigator.pop(context);

      } else {

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Failed to update category")));

      }

    } catch (e) {

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Error: $e")));

    }

  }



  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text("Edit Category"),

      ),

      body: Padding(

        padding: const EdgeInsets.all(16.0),

        child: Column(

          children: [

            TextField(

              controller: clientId,

              decoration: InputDecoration(labelText: "clientId"),

              readOnly: true, // Make it read-only if you don't want to change it

            ),

            TextField(

              controller: clientName,

              decoration: InputDecoration(labelText: "clientName"),

            ),

            TextField(

              controller: address,

              decoration: InputDecoration(labelText: "address"),

            ),

            TextField(

              controller: createdBy,

              decoration: InputDecoration(labelText: "Created By"),

              keyboardType: TextInputType.number, // Ensure numeric input

            ),

            SizedBox(height: 20),

            ElevatedButton(

              onPressed: updateUser,

              child: Text("Update Category"),

            ),

          ],

        ),

      ),

    );

  }

}
