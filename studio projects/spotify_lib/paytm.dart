import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class paytm extends StatefulWidget {
  const paytm({super.key});

  @override
  State<paytm> createState() => _paytmState();
}

class _paytmState extends State<paytm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff042e6f),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 15,
            width: 30,
            decoration: BoxDecoration(
              border: Border(),
              borderRadius: BorderRadius.circular(35),
              color: Colors.orange,
            ),
          ),
        ),
        title: Container(
          height: 30,
          width: 170,
          decoration: BoxDecoration(
            border: Border(),
            borderRadius: BorderRadius.circular(20),
            color: Colors.yellow,
          ),
          child: Row(
            children: [
              Container(
                height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/pay1.jpg"),
                    fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(35),
                  ),
              ),
              Text("Travel Sale LIVE",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)
              ),

            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10,top: 5),
            child: Icon(Icons.search,color: Colors.white,size: 40,),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10,top: 5),
            child: Icon(Icons.add_alert_outlined,color: Colors.white,size: 35,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
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
                          height: 200,
                          decoration: BoxDecoration(
                            image:DecorationImage(image: AssetImage("assets/Q1.jpg"),
                            fit: BoxFit.fill),
                          ),
                        );
                      }
                  ),
                ],
              ),
              Container(
                height: 220,
                width: 500,
                child: Container(
                  child:Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 220),
                        child: Text("MONEY TRANSFER",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 50,
                                width: 80,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/scan.jpg"))
                                ),
                              ),
                              Text("Scan & Pay"),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 50,
                                width: 80,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/contact.jpg"))
                                ),
                              ),
                              Text("To Mobile or Contact"),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 50,
                                width: 80,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/Bank.jpg"))
                                ),
                              ),
                              Text("To Bank A/C"),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 50,
                                width: 80,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/self.jpg"))
                                ),
                              ),
                              Text("TO Self A/C"),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 50,
                                width: 80,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/money.jpg"))
                                ),
                              ),
                              Text("Balance"),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 50,
                                width: 80,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/upi.jpg"))
                                ),
                              ),
                              Text("Create More UPI IDs"),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 50,
                                width: 80,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/money.jpg"))
                                ),
                              ),
                              Text("Receive Money"),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 50,
                                width: 80,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/all upi.jpg"))
                                ),
                              ),
                              Text("All UPI Services"),
                            ],
                          ),
                        ],
                      ),

                    ],
                  )
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
