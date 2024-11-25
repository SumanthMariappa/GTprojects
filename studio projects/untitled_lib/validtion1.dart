import 'package:flutter/material.dart';
class value extends StatefulWidget {
  const value({super.key});

  @override
  State<value> createState() => _valueState();
}

class _valueState extends State<value> {
  final name =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: name,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                      decoration: InputDecoration(
                      hintText: "Enter username",
                        labelText: "Username",
                        icon: Icon(Icons.person),
                        border: OutlineInputBorder(),
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
                decoration: InputDecoration(
                  hintText: "Enter password",
                  labelText: "password",
                  icon: Icon(Icons.key),
                  border: OutlineInputBorder(),
                ),
                validator: (a)
                {
                  if(a ==null|| a.length<6)
                  {
                    return"Enter valid password";
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  labelText: "Email",
                  icon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
                validator: (a)
                {
                  if(a!.isEmpty||RegExp(
                          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                          .hasMatch(a));
                  {
                    return"Enter valid Email";
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
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
              child: ElevatedButton(onPressed: ()
              {
                if(name.currentState!.validate())
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
