import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController phone=TextEditingController();
  final v =GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Form(
       key: v,
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextFormField(
               controller: name,
               style: TextStyle(fontSize: 25),
               decoration: InputDecoration(
                 hintText: "Userame",
                 prefixIcon: Icon(Icons.person),
                 contentPadding: EdgeInsets.all(20),
                 border:OutlineInputBorder(),
               ),
               validator: (name)
               {
                 if(name!.isEmpty||RegExp('[a-zA-Z').hasMatch(name))
                 {
                   return"Enter valid name";
                 }
               },
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextFormField(
               controller: email,
               style: TextStyle(fontSize: 25),
               decoration: InputDecoration(
                 hintText: "Email",
                 prefixIcon: Icon(Icons.email_outlined),
                 contentPadding: EdgeInsets.all(20),
                 border:OutlineInputBorder(),
               ),
               validator: (email)
               {
                 if(email!.isEmpty||RegExp(
                     r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                     .hasMatch(email));
                 {
                   return"Enter valid Email";
                 }
               },
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextFormField(
               controller: phone,
               style: TextStyle(fontSize: 25),
               decoration: InputDecoration(
                 prefixIcon: Icon(Icons.numbers),
                 hintText: "Phone Number",
                 contentPadding: EdgeInsets.all(20),
                 border:OutlineInputBorder(),
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
             child: ElevatedButton(onPressed: ()
             {
               if(v.currentState!.validate())
               {
                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Ok valid")));
               }
             }, child: Text("login")),
           )
         ],
       ),
     ),
    );
  }
}
