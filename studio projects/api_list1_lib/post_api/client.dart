import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class client extends StatefulWidget {
  const client({super.key});

  @override
  State<client> createState() => _clientState();
}

class _clientState extends State<client> {
  void nav(String data){

  }
  List clientList=[];
  List oneindex =[];
  Map<String,dynamic> a={};
  // List
  ad(){
    String text1=clientId.text;
    String text2=clientName.text;
    String text3=phone.text;
    String text4=address.text;
    String text5=gst.text;
    String text6=email.text;
    String text7=contactPerson.text;
    String text8=phoneNumber.text;
    String text9=createdBy.text;
    setState(() {
      clientList.add("${text1}\n${text2}\n${text3}\n${text4}\n${text5}\n${text6}\n${text7}\n${text8}\n${text9}");
    });
  }
  TextEditingController clientId=TextEditingController();
  TextEditingController clientName=TextEditingController();
  TextEditingController phone=TextEditingController();
  TextEditingController address=TextEditingController();
  TextEditingController gst=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController contactPerson=TextEditingController();
  TextEditingController phoneNumber=TextEditingController();
  TextEditingController createdBy=TextEditingController();
  dynamic fetchcat;
  void initstate(){
    super.initState();
    fetchcat=getCategories();
  }
  Future<Map<String,dynamic>> addCategory() async{
    final apiResponse=await http.post(Uri.parse("http://catodotest.elevadosoftwares.com/Client/InsertClient"),
        headers: {"Content-Type":"application/json"},
        body:jsonEncode(
            {
              "clientId": clientId.text,
              "clientName": clientName.text,
              "phone": phone.text,
              "address": address.text,
              "gst": gst.text,
              "email": email.text,
              "contactPerson": contactPerson.text,
              "phoneNumber": phoneNumber.text,
              "createdBy": createdBy.text,
            }
        )
    );
    if(apiResponse.statusCode==200||apiResponse.statusCode==201){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("client added successfully")));
      print(apiResponse.body);
      return jsonDecode(apiResponse.body);
    }
    else{
      throw Exception("Failed to load data");
    }
  }
  Future<Map<String,dynamic>> getCategories() async{
    final apiResponse=await http.get(Uri.parse("http://catodotest.elevadosoftwares.com/Client/GetAllClientDetails"));
    if(apiResponse.statusCode==200|| apiResponse.statusCode==201){

      a=jsonDecode(apiResponse.body);
      clientList=a["clientList"];
      print(clientList);

      return a;
    }
    else{
      throw Exception("Failed to load data");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text("CategoryAPi-post")
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: clientId,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    hintText: "clientId"
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: clientName,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    hintText: "clientName"
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: phone,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    hintText: "phone"
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: address,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    hintText: "address"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: gst,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    hintText: "gst"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: email,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    hintText: "email"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: contactPerson,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    hintText: "contactPerson"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: phoneNumber,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    hintText: "phoneNumber"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: createdBy,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    hintText: "createdBy"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent),
                  onPressed: (){
                    addCategory();
                    ad();

                  }, child: Text("Save")),
            ),

           FutureBuilder(future: getCategories(), builder: (context,snapshot) {
             if (snapshot.connectionState == ConnectionState.waiting) {
               return CircularProgressIndicator();
             }
             else if (snapshot.hasError) {
               return Text("Error: ${snapshot.error}");
             }
             else if (snapshot.hasData) {
               final clientList=snapshot.data!["clientList"];

              // final myList=result["clientList"];
              return SingleChildScrollView(
                 child: Container(
                   height: 400,
                   width: 400,
                   decoration: BoxDecoration(
                       border: Border.all()
                   ),
                   child: ListView.builder(
                       itemCount: clientList.length,
                       itemBuilder: (context, int index) {
                         final oneClient=clientList[index];
                         return Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                             height: 100,
                             decoration: BoxDecoration(
                                 border: Border.all()
                             ),
                             child: Column(
                               children: [
                                 Text(oneClient["clientId"].toString()),
                                 Text(oneClient["clientName"].toString()),
                                 Text(oneClient["address"].toString()),
                                 Text(oneClient["createdBy"].toString()),
                               ],
                             ),
                           ),
                         );
                       }),
                 ),

               );
             }
             else {
               return Text("No data found");
             }
           },)

          ],
        ),
      ),
    );
  }
}