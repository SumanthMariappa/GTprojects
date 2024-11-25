import 'package:flutter/material.dart';

class valsample extends StatefulWidget {
  const valsample({super.key});

  @override
  State<valsample> createState() => _valsampleState();
}

class _valsampleState extends State<valsample> {

  final a = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: a,
        child: Column(
          children: [
            TextFormField(
              validator: (b)
              {
                if(b == null || b.length<2)
                  {
                   return "Enter valid name";
                  }
              },
            ),
            ElevatedButton(
                onPressed: ()
                {
                  if(a.currentState!.validate())
                    {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ok valid")));
                    }
                },
                child: Text("ok"),
            ),
          ],
        ),
      ),
    );
  }
}