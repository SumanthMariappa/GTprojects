import 'package:flutter/material.dart';
import 'package:ott/bottomNavigation.dart';
import 'package:ott/functions_auth.dart';
import 'package:ott/signup.dart';
import 'homepage.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final d =GlobalKey<FormState>();
  bool show =false;
  TextEditingController a =TextEditingController();
  TextEditingController b =TextEditingController();

  vj()
  {
    setState(() {
      a.text.isNotEmpty && b.text.isNotEmpty ? show=true :show=false;
    });
  }
  @override
  Widget build(BuildContext context) {

    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    return Scaffold(
      body: Form(
        key: d,
        child: SafeArea(
          child: ListView(
            children: [
              Container(
                width: screenWidth > 600 ? 600 : screenWidth * 0.9, // Responsive width
                height: screenHeight > 800 ? 800 : screenHeight * 0.5, // Responsive height
                child: Image.asset("assets/sign in.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("Sign In",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.grey,
                ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: a,
                  onChanged: (a){
                    vj();
                  },
                  decoration: InputDecoration(
                    hintText: "Enter a Email",
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
                  controller: b,
                  onChanged: (b){
                    vj();
                  },
                  decoration: InputDecoration(
                    hintText: "Enter a password",
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
                    else{
                    return null;
                    }
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 70,left: 70),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: (){

                  if(d.currentState!.validate())
                  {
                    AuthServices().signInWithEmailPassword(a.text.trim(), b.text.trim()).then((value){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const BottomNavigation()),
                      );
                    });
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Ok valid")));
                  }

                }, child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 30),)),
              ),
             Divider(
               color: Colors.black54,
             ),
             Center(child: Text("OR",style: TextStyle(fontSize: 25),)),
             Padding(
               padding: const EdgeInsets.only(left:70,right: 70),
               child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.grey,
                   ),
                   onPressed: (){
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => const signup()),
                     );
                   },
                   child: Text("sign in with Google",
                   style: TextStyle(
                     fontSize: 30,
                     color: Colors.white,
                   ),
                   )
               ),
             ),

              SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.only(left:70,right: 70),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const signup()),
                      );
                    },
                    child: Text("SignUp",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
