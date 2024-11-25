import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class Amazonpage extends StatefulWidget {
  const Amazonpage({super.key});

  @override
  State<Amazonpage> createState() => _AmazonpageState();
}

class _AmazonpageState extends State<Amazonpage> {

  // get itemIndex => null;
List a=[];
Future<dynamic>fetchData()async{
  final apiResponse=await http.get(Uri.parse("https://fakestoreapi.com/products"));
  if(apiResponse.statusCode==200||apiResponse.statusCode==201){
    setState(() {
      a=jsonDecode(apiResponse.body);
    });
  }
  else{
    throw Exception("Failed");
  }
}
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.cyan,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 400,
            height: 40,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon:Icon(Icons.search),
                hintText: "search Amazon.in",
                suffixIcon: Container(
                  width: 50,
                  child: Row(
                    children: [
                      Icon(Icons.camera_alt_outlined),
                      Icon(Icons.mic_outlined),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.qr_code_scanner_outlined),
          )
        ],
      ),
      
      
      
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: double.infinity,
                      color: Color(0xFF4DD0E1),
                  child: Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      Text("Location"),
                    ]
                  ),
                ),
              ),
          
          
          
              Container(
                height: 120,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: a.length,
                    itemBuilder:(BuildContext con,index)
                    {
                      return  Container(
                        height: 100,
                        width: 100,
                        child: Column(
          
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: NetworkImage(a[index]["image"]),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Text("Stay tuned")
                          ],
                        ),
                      );
                    }
              ),
                ),
          
              CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 250,
                    aspectRatio:16/9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 100),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  ),
                itemCount: a.length,
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return   Container(
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(a[index]["image"]),
                          fit: BoxFit.fill),
                    ),
                  );
                }
              ),
          
              Container(
                height: 200,
                color: Colors.grey.shade300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: a.length,
                  itemBuilder: (BuildContext con,index)
                    {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 150,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(a[index]["image"]),
                                fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(5)
                              ),
                              ),
                            Text("Keep shopping for Amazon"),
                          ],
                        ),
                      );
                    }
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: Colors.yellow,
                  child: Text(" Get Sale Ready | Bag & Groceries ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ),
              Container(
                height: 400,
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // number of items in each row
                        mainAxisSpacing: 20, // spacing between rows
                        crossAxisSpacing: 10, // spacing between columns
                      ),
                  itemCount: a.length,
                  itemBuilder: (BuildContext con,index)
                  {
                    return  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 160,
                            width: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(a[index]["image"]),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                          Text(" 5000+ New Arrivals"),
                        ],
                      ),
                    );
                  }
                )
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: Colors.yellow,
                  child: Column(
                    children: [
                      Text(" Get Sale Ready | TV's, Appliances & More ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Up to 75% off + Additional exchange discont",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),)
                    ],
                  ),
                ),
              ),
              // GestureDetector(
              //   child: Image.network("https://m.media-amazon.com/images/I/71L6G2ygY2L._SL1500_.jpg"),
              //   onTap: (){
              //     Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => const sub()
              //     ),
              //     );
              //   },
              // )
            ],
          ),
        ),
      ),
    );
  }
}
