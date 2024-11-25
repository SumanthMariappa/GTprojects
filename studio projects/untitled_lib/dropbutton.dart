import 'package:flutter/material.dart';

const List<String> list = <String>['Quauntiy', '1', '2', '3'];

class aad extends StatefulWidget {
  const aad({super.key});

  @override
  State<aad> createState() => _aadState();
}

class _aadState extends State<aad> {

  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Center(
        child: Container(
          height: 40,
          width: 300,
          child: DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.arrow_downward),
          elevation: 16,
          style: const TextStyle(color: Colors.deepPurple),

          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              dropdownValue = value!;
            });
          },
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
                ),
        ),
      ),
    );
  }
}
