import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled/visibility.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  final d =GlobalKey<FormState>();
  bool _show = false;
  TextEditingController a = TextEditingController();
  TextEditingController b = TextEditingController();
  TextEditingController c = TextEditingController();

  vj()
  {
    setState(() {
      a.text.isNotEmpty && b.text.isNotEmpty && c.text.isNotEmpty ? _show=true :_show=false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/background 3.jpg"),
                    fit: BoxFit.fill)),



            child: Form(
              key: d,
              child: Column(
                  children: [

                    //img2
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("asset/images.png"),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(35),
                    ),


                    //textbox
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: a,
                            onChanged:(a){
                              vj();
                            } ,
                            decoration: InputDecoration(
                              hintText: "Mobile number",
                              labelText: "Mobile number",
                              icon: Icon(Icons.phone),
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
                        Padding
                          (
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: b,
                            onChanged: (b){
                              vj();
                            },
                            decoration: InputDecoration(
                              hintText: "Email",
                              labelText: "Email",
                              icon: Icon(Icons.email_outlined),
                              border: OutlineInputBorder(),
                            ),
                            validator: (a)
                            {
                              if(a!.isEmpty||RegExp('r^[A-Z]').hasMatch(a))
                              {
                                return"Enter valid Email";
                              }
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: c,
                            onChanged: (c){
                              vj();
                            },
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
                          child: Visibility(
                            visible: _show,
                            child: ElevatedButton(onPressed: (){
                              if(d.currentState!.validate())
                              {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Ok valid")));
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Botnavi()),
                                );

                              }

                            }, child: Text("Login")),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            )
        )
    );
  }
}
