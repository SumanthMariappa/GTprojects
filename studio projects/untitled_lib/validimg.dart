import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:untitled/validtion2.dart';
class validimg extends StatefulWidget {
  const validimg({super.key});

  @override
  State<validimg> createState() => _validimgState();
}

class _validimgState extends State<validimg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("asset/img 1.jpg"),
          fit: BoxFit.fill)
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("asset/img 2.jpg"),
                          fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child:ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 40,bottom: 40,left: 30,right: 30),
                            child: TextFormField(
                                              decoration: InputDecoration(
                                              hintText: "Enter username",
                                                labelText: "Username",
                                                icon: Icon(Icons.person),
                                                border: OutlineInputBorder(),
                                              ),
                                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 40,right: 30,left: 30),
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
                            padding: const EdgeInsets.only(top: 5),
                            child: Container(
                                child: ElevatedButton(
                                    onPressed: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const demo()),
                                      );
                                    },
                                    child: Text("login"))),
                          ),
                          GestureDetector(
                            onTap: ()
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const demo()),
                              );
                            },
                            child: Container(
                              height: 100,
                              width: 200,
                              color: Colors.cyanAccent,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  ),
              ),
              Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("asset/img 2.jpg"),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(35),
                ),
                child:ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40,bottom: 40,left: 30,right: 30),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter username",
                              labelText: "Username",
                              icon: Icon(Icons.person),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 40,right: 30,left: 30),
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
                          padding: const EdgeInsets.only(top: 5),
                          child: Container(
                              child: ElevatedButton(
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const demo()),
                                    );
                                  },
                                  child: Text("login"))),
                        ),
                        GestureDetector(
                          onTap: ()
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const demo()),
                            );
                          },
                          child: Container(
                            height: 100,
                            width: 200,
                            color: Colors.cyanAccent,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("asset/img 2.jpg"),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(35),
                ),
                child:ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40,bottom: 40,left: 30,right: 30),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter username",
                              labelText: "Username",
                              icon: Icon(Icons.person),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 40,right: 30,left: 30),
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
                          padding: const EdgeInsets.only(top: 5),
                          child: Container(
                              child: ElevatedButton(
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const demo()),
                                    );
                                  },
                                  child: Text("login"))),
                        ),
                        GestureDetector(
                          onTap: ()
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const demo()),
                            );
                          },
                          child: Container(
                            height: 100,
                            width: 200,
                            color: Colors.cyanAccent,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
