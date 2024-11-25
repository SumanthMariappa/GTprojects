import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class postapi extends StatefulWidget {
  const postapi({super.key});

  @override
  State<postapi> createState() => _postapiState();
}

class _postapiState extends State<postapi> {
  void nav(String data){

  }
  List categoryList=[];
  List oneindex =[];
  // List
  ad(){
    String text1=catId.text;
    String text2=cat.text;
    String text3=des.text;
    String text4=createdby.text;
    setState(() {
      categoryList.add("${text1}\n${text2}\n${text3}\n${text4}");
    });
  }
  TextEditingController catId=TextEditingController();
  TextEditingController cat=TextEditingController();
  TextEditingController des=TextEditingController();
  TextEditingController createdby=TextEditingController();

  void initstate(){
    super.initState();
    getCategories();
  }
  Future<Map<String,dynamic>> addCategory() async{
    final apiResponse=await http.post(Uri.parse("http://catodotest.elevadosoftwares.com/Category/InsertCategory"),
        headers: {"Content-Type":"application/json"},
        body:jsonEncode(
            {
              "categoryId": catId.text,
              "category": cat.text,
              "description": des.text,
              "createdBy": createdby.text
            }
        )
    );
    if(apiResponse.statusCode==200||apiResponse.statusCode==201){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("category added successfully")));
      print(apiResponse.body);
      return jsonDecode(apiResponse.body);
    }
    else{
      throw Exception("Failed to load data");
    }
  }
  Future<Map<String,dynamic>> getCategories() async{
    final apiResponse=await http.get(Uri.parse("http://catodotest.elevadosoftwares.com/Category/GetAllCategories"));
    if(apiResponse.statusCode==200|| apiResponse.statusCode==201){
      categoryList=jsonDecode(apiResponse.body)["categoryList"];
      print(categoryList);

      return jsonDecode(apiResponse.body);
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
                controller: catId,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    hintText: "CategoryId"
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: cat,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    hintText: "Category"
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: des,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    hintText: "Description"
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: createdby,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    hintText: "CreatedBy"
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

            SingleChildScrollView(
              child: Container(
                height: 400,
                width:400,
                decoration: BoxDecoration(
                    border: Border.all()
                ),
                child: ListView.builder(
                    itemCount: categoryList.length,
                    itemBuilder: (context,int index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,

                          decoration: BoxDecoration(
                              border: Border.all()
                          ),
                          child: Text(categoryList[index].toString()),
                        ),
                      );


                    }),
              ),

            ),

          ],
        ),
      ),
    );
  }
}


// import 'dart:convert';
//
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// import 'client1.dart';
// class task1 extends StatefulWidget {
//   const task1({super.key});
//
//   @override
//   State<task1> createState() => _task1State();
// }
//
// class _task1State extends State<task1> {
//   var a={};
//   List<dynamic> b=[];
//   TextEditingController catIdController = TextEditingController();
//   TextEditingController catController = TextEditingController();
//   TextEditingController descController = TextEditingController();
//   TextEditingController createdbyController = TextEditingController();
//   String name="";
//
//
//   Future Save() async {
//     try {
//       var apiResponse = await http.post(Uri.parse(
//           "http://catodotest.elevadosoftwares.com/Category/InsertCategory"),
//           headers: {"content-Type": "application/json"},
//           body: jsonEncode(
//               {
//                 "categoryId": catIdController.text,
//                 "category": catController.text,
//                 "description": descController.text,
//                 "createdBy": createdbyController.text
//               })
//       );
//       if (apiResponse.statusCode == 200 || apiResponse.statusCode == 201) {
//         ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text("User Added Successfully")));
//         return jsonDecode(apiResponse.body);
//       }
//
//       else {
//         throw Exception("Failed to load data");
//       }
//     }
//
//
//     catch (e) {
//       //print("Error $e");
//       return Exception("$e");
//     }
//   }
//
//
//   Future<Map<String,dynamic>> getAllIUsers() async{
//     var apiResponse=await http.get(Uri.parse("http://catodotest.elevadosoftwares.com//Category/GetAllCategories"));
//     if(apiResponse.statusCode==200){
//       print(apiResponse.body);
//       a=(apiResponse.body) as Map;
//       b=a["categoryList"];
//       return jsonDecode(apiResponse.body);
//     }
//     else{
//       throw Exception("Failed to load data");
//     }
//   }
//   void initState(){
//     super.initState();
//     getAllIUsers();
//   }
//
//   // void nav(String data)
//   // {
//   //   Navigator.push(context, MaterialPageRoute(builder: (context)=>asd(data: data))).then((editData)
//   //   {
//   //     setState(() {
//   //       b[b.indexWhere((element)=>element==data)]=editData;
//   //     });
//   //
//   //   });
//   // }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//         body: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               TextFormField(
//                 controller: catIdController,
//                 decoration:InputDecoration(
//                     hintText:"CategoryId"
//                 ),
//               ),
//               TextFormField(
//                 controller: catController,
//                 decoration:InputDecoration(
//                     hintText:"Category"
//                 ),
//               ),
//               TextFormField(
//                 controller: descController,
//                 decoration:InputDecoration(
//                     hintText:"Description"
//                 ),
//               ),
//               TextFormField(
//                 controller: createdbyController,
//                 decoration:InputDecoration(
//                     hintText:"CreatedBy"
//                 ),
//               ),
//
//
//               ElevatedButton(onPressed: ()=>Save(), child: Text("Save")),
//
//               Container(
//                 height: 500,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: Colors.white38,
//                     border: Border.all()
//                 ),
//                 child: ListView.builder(
//                     itemCount: b.length,
//                     itemBuilder: (BuildContext context,int index){
//                       return Padding(
//                         padding: const EdgeInsets.only(bottom:5),
//                         child: Container(
//                           color: Colors.black,
//                           child: Column(
//                             children: [
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: [
//
//                                   Column(
//                                     children: [
//                                       Text(b[index]["categoryId"].toString(), style: TextStyle(fontSize: 25,color: Colors.white)),
//                                       Text(b[index]["category"].toString(), style: TextStyle(fontSize: 25,color: Colors.white)),
//                                       Text(b[index]["description"].toString(), style: TextStyle(fontSize: 25,color: Colors.white)),
//                                       Text(b[index]["createdBy"].toString(), style: TextStyle(fontSize: 25,color: Colors.white)),
//                                     ],
//                                   ),
//
//                                   Container(
//                                       child: Row(
//                                         children: [
//                                           IconButton(onPressed: (){
//                                             setState(() {
//                                               b.removeAt(index);
//                                               // a.remove(index);
//                                             });
//                                           }, icon:  Icon(Icons.delete,color: Colors.white,)),
//                                           IconButton(onPressed: (){
//                                             //Navigator.push(context, MaterialPageRoute(builder: (context)=>asd(data: ))).then((editData);
//                                           }, icon:  Icon(Icons.edit,color: Colors.white,)),
//
//
//
//                                         ],
//                                       )),
//
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     }
//                     ),
//               ),
//             ],
//       ),
//     );
//   }
//}