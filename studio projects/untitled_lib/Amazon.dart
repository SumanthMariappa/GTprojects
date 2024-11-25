import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'amazonpge1.dart';

class Amazonpage extends StatefulWidget {
  const Amazonpage({super.key});

  @override
  State<Amazonpage> createState() => _AmazonpageState();
}

class _AmazonpageState extends State<Amazonpage> {
  get itemIndex => null;

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
                    itemCount: 5,
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
                                image: DecorationImage(image: AssetImage("asset/amazon sale logo.jpg"),
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
                itemCount: 3,
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return   Container(
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "data:image/jpeg;base64,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"),
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
                  itemCount: 5,
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
                                  image: NetworkImage("https://m.media-amazon.com/images/I/61zm+frgH6L._SX522_.jpg"),
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
                  itemCount: 4,
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
                                  image:NetworkImage("data:image/jpeg;base64,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"),
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
              GestureDetector(
                child: Image.network("https://m.media-amazon.com/images/I/71L6G2ygY2L._SL1500_.jpg"),
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const sub()
                  ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
