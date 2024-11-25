import 'package:flutter/material.dart';
import 'Vdemo1.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(


        appBar: AppBar(
          backgroundColor:Colors.indigo.shade900,
          leading: Icon(Icons.arrow_back_ios,color: Colors.white,size: 30,),
          title: Text("Menu", style: TextStyle(
              color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold
          ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.house_outlined,color: Colors.white,size: 40,),
            ),
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
      body: Container(
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Card(
               color: Colors.white60,
               child: ListTile(
                 leading: Icon(Icons.perm_contact_cal_outlined,color: Color(0xFF1A237E)),
                 title: Text("Attendance report"),
                 trailing: Icon(Icons.arrow_forward_ios),
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Card(
               color: Colors.white60,
               child: ListTile(
                 leading: Icon(Icons.text_snippet_outlined,color: Color(0xFF1A237E)),
                 title: Text("Mock interview report"),
                 trailing: Icon(Icons.arrow_forward_ios),
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Card(
               color: Colors.white60,
               child: ListTile(
                 leading: Icon(Icons.currency_rupee_rounded,color: Color(0xFF1A237E)),
                 title: Text("Payment report"),
                 trailing: Icon(Icons.arrow_forward_ios),
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Card(
               color: Colors.white60,
               child: ListTile(
                 leading: Icon(Icons.assignment,color: Color(0xFF1A237E)),
                 title: Text("All stundent project url"),
                 trailing: Icon(Icons.arrow_forward_ios),
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Card(
               color: Colors.white60,
               child: ListTile(
                 leading: Icon(Icons.house_outlined,color: Color(0xFF1A237E)),
                 title: Text("Leave request"),
                 trailing: Icon(Icons.arrow_forward_ios),
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Card(
               color: Colors.white60,
               child: ListTile(
                 leading: Icon(Icons.add_alert,color: Color(0xFF1A237E)),
                 title: Text("Notification"),
                 trailing: Icon(Icons.arrow_forward_ios),
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Card(
               color: Colors.white60,
               child: ListTile(
                 leading: Icon(Icons.feedback_rounded,color: Color(0xFF1A237E)),
                 title: Text("Feedback"),
                 trailing: Icon(Icons.arrow_forward_ios),
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Card(
               color: Colors.white60,
               child: ListTile(
                 leading: Icon(Icons.person_add_outlined,color: Color(0xFF1A237E)),
                 title: Text("Refer a friend"),
                 trailing: Icon(Icons.arrow_forward_ios),
               ),
             ),
           ),


           Padding(
             padding: const EdgeInsets.only(right: 90,left: 90),
             child: ElevatedButton(onPressed: (){
               Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => const page1()),
               );
             },
                 style:ElevatedButton.styleFrom(
                   backgroundColor: Colors.indigo,
                   padding: EdgeInsets.symmetric(horizontal: 70,vertical: 10),
                   textStyle: TextStyle(
                     fontSize: 30,
                     fontWeight: FontWeight.bold,color: Colors.white)),
                 child:Row(
                   children: [
                     Icon(Icons.logout,color: Colors.white),
                     Text("Logout",
                     style: TextStyle(fontSize: 20,
                     fontWeight: FontWeight.bold,color: Colors.white),),
                   ],
                 ),
             ),
           )
         ],
       ),
      ),

    );
  }
}
