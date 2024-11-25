import 'dart:ui';
import 'package:flutter/material.dart';

class demo extends StatefulWidget {
  const demo({super.key});

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  final a =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width:double.infinity,
        decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("asset/img 1.jpg"),
                  fit:BoxFit.fill)
          ),
        child: Form(
          key: a,
            child:Column(
              children: [
                BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 5.0,
                    sigmaY: 5.0,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          child:TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: "Enter mobile number",
                              labelText: "mobile number",
                              icon: Icon(Icons.numbers),
                              border: OutlineInputBorder(),
                            ),
                            validator: (number)
                            {
                              if(number!.isEmpty || RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(number))
                              {
                                return"Enter valid mobile number";
                              }
                            },

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter password",
                              labelText: "password",
                              icon: Icon(Icons.key),
                              border: OutlineInputBorder(),
                            ),
                            validator: (password)
                            {
                              if(password ==null|| password.length<6)
                              {
                                return"Enter valid password";
                              }
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(onPressed: ()
                          {
                            if(a.currentState!.validate())
                            {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Ok valid")));
                            }
                          }, child: Text("login")),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }

  }
