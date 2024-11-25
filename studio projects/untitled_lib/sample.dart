import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class asd extends StatefulWidget {
  const asd({super.key});

  @override
  State<asd> createState() => _asdState();
}

class _asdState extends State<asd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
                    child: Container(
                      height: 100,
                      width: 200,
                      color: Colors.cyan,
                    ),
                  );
                }

            ),
          ),

        Container(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 1,

              itemBuilder: (BuildContext con,index)
                  {
                    return  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 200,
                            width: 200,
                            child: Column(

                              children: [
                                Container(
                                  height: 150,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("asset/img 1.jpg"),
                                    fit: BoxFit.fill),
                                  ),
                                ),
                                Container(
                                  height:50,
                                  width: 200,
                                  decoration: BoxDecoration(color: Colors.black,
                                    image: DecorationImage(image: AssetImage(""),
                                       ),
                                  ),
                                ),
                              ],
                            ),
                          ),


                          Container(
                            height: 200,
                            width: 200,
                            child: Column(

                              children: [
                                Container(
                                  height: 150,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("asset/img 1.jpg"),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                Text("Ok")
                              ],
                            ),
                          ),

                          Container(
                            height: 200,
                            width: 200,
                            child: Column(

                              children: [
                                Container(
                                  height: 150,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("asset/img 1.jpg"),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                Container(
                                  height:50,
                                  width: 200,
                                  decoration: BoxDecoration(color: Colors.black,
                                    image: DecorationImage(image: AssetImage(""),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }
          ),
        ),

          CarouselSlider.builder(
            options: CarouselOptions(
              height: 200,
              aspectRatio: 16/9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              //onPageChanged: callbackFunction,
              scrollDirection: Axis.horizontal,
            ),//
            itemCount: 3,
            itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                Container(
                  height: 100,
                  width: 200,
                  color: Colors.cyan,
                  child: Text(itemIndex.toString()),
                ),
          )

        ],
      ),
    );
  }
}
