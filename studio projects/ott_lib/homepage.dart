import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:ott/dark.dart';
import 'package:ott/l3a.dart';
import 'package:ott/l3b.dart';
import 'package:ott/l3c.dart';
import 'package:ott/l3d.dart';
import 'package:ott/l4a.dart';
import 'package:ott/l4b.dart';
import 'package:ott/l4c.dart';
import 'package:ott/l4d.dart';
import 'package:ott/l4e.dart';
import 'package:ott/list1b.dart';
import 'package:ott/list1c.dart';
import 'package:ott/list1e.dart';
import 'package:ott/master.dart';
import 'package:ott/money%20heist.dart';
import 'package:ott/one%20piece.dart';
import 'package:ott/stranger%20things.dart';
import 'package:ott/video.dart';
import 'boys.dart';
import 'l2a.dart';
import 'l2b.dart';
import 'l2c.dart';
import 'l2d.dart';
import 'list1a.dart';
import 'list1d.dart';
import 'list1f.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _index=0;

  List a =[
    "assets/boys.jpeg",
    "assets/dark.jpg",
    "assets/onepiece.jpg",
    "assets/st.jpg",
    "assets/master.jpg",
    "assets/money heist.jpg",
  ];
  List pages =[
    Page1(),
    Page2(),
    Page3(),
    Page4(),
    Page5(),
    Page6(),

  ];

  List b =[
    "https://m.media-amazon.com/images/S/pv-target-images/729e3965d4dfb822eadcd64356df8656adfb31d66e7c1b3520cb974289c26976.jpg",
    "https://i.redd.it/w5oc1axtvaz71.jpg",
    "https://rukminim2.flixcart.com/image/850/1000/l0igvww0/poster/i/s/a/medium-deadpool-movie-wall-poster-wall-poster-print-on-art-paper-original-imagcaf34cmfaxhx.jpeg?q=90&crop=false",
    "https://m.media-amazon.com/images/I/81dQElhfNdL._AC_UF894,1000_QL80_.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3GpM32Tuha0ItYxpuHPE7q0CoUq8SDkr-cw&s",
    "https://m.media-amazon.com/images/I/71Gj6VGeiUS._AC_UF894,1000_QL80_.jpg",

  ];
  List list1 =[
    Pagel1(),
    Pagel2(),
    Pagel3(),
    Pagel4(),
    Pagel5(),
    Pagel6(),
  ];

  List c =[
    "https://pbs.twimg.com/media/GL8GxdAWMAIPXZ1.jpg:large",
    "https://images.moneycontrol.com/static-mcnews/2024/07/20240722054159_FotoJet-2024-07-22T111147.150.jpg?impolicy=website&width=350&height=195",
    "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202406/ajith-kumars-good-bad-ugly-second-look-poster-out-27401928-16x9_0.jpg?VersionId=L0WNPiBUvG1doUdRXfchV0KsgXZyjkvP&size=690:388",
    "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202401/suriya-in-kanguva-new-poster-16405295-16x9_0.jpg?VersionId=Rl8omQd_YXnrE2I.yO72fI2VB4kH1F4M",
  ];
  List list2 =[
    Pagela(),
    Pagelb(),
    Pagelc(),
    Pageld(),

  ];
  List d=[
    "https://mir-s3-cdn-cf.behance.net/project_modules/1400/869d6274284099.5c2a29444e565.png",
    "https://static.theprint.in/wp-content/uploads/2022/11/ANI-20221129125434.jpg",
    "https://image.tmdb.org/t/p/original/u0XUBNQWlOvrh0Gd97ARGpIkL0.jpg",
    "https://upload.wikimedia.org/wikipedia/en/3/39/Jawan_film_poster.jpg"
  ];
  List list3 =[
    l3a(),
    l3b(),
    l3c(),
    l3d(),
  ];

  List e=[
    "https://m.media-amazon.com/images/I/81Jv5z2yIqL._AC_UF1000,1000_QL80_.jpg",
    "https://m.media-amazon.com/images/M/MV5BNGU3YzdhMWEtMGRkMC00MzY2LThkOGEtMDFmZDE0NGQxYzFjXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
    "https://m.media-amazon.com/images/M/MV5BNTI3MzA0NzM0NF5BMl5BanBnXkFtZTcwODY4MjY5MQ@@._V1_.jpg",
    "https://m.media-amazon.com/images/M/MV5BNjY4MDQxZTItM2JjMi00NjM5LTk0MWYtOTBlNTY2YjBiNmFjXkEyXkFqcGc@._V1_.jpg",
    "https://m.media-amazon.com/images/I/71fiwn12L6L.jpg"
  ];
  List list4 =[
    l4a(),
    l4b(),
    l4c(),
    l4d(),
    l4e(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black54,
        leading: Icon(Icons.menu,color: Colors.white,size: 35,),
        title: Center(child: Text("Jio TV",
            style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold))),
        actions: [Icon(Icons.search,color: Colors.white,size: 30)],
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //movies btn
                  Container(
                    width:80,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white24,width: 3,),
                        borderRadius: BorderRadius.circular(40)
                    ),
                    child: TextButton(
                        onPressed: (){},
                        child: Text("Movies",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                        )
                    ),
                  ),
                  //tv shows btn
                  SizedBox(width: 10,),
                  Container(
                    width:97,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white24,width: 3,),
                        borderRadius: BorderRadius.circular(40)
                    ),
                    child: TextButton(
                        onPressed: (){},
                        child: Text("TV shows",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                        )
                    ),
                  ),
                  //live tv btn
                  SizedBox(width: 10,),
                  Container(
                    width:80,
                    height:40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white24,width: 3,),
                        borderRadius: BorderRadius.circular(40)
                    ),
                    child: TextButton(
                        onPressed: (){},
                        child: Text("Live TV",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                        )
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width:80,
                    height:40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white24,width: 3,),
                        borderRadius: BorderRadius.circular(40)
                    ),
                    child: TextButton(
                        onPressed: (){},
                        child: Text("KIDS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                        )
                    ),
                  ),
                ],
              ),
            ),
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
                      onPageChanged: (index,reason){
                        setState(() {
                          _index=index;
                        });
                      }
                    ),
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index, int realIndex) {
                      return   GestureDetector(
                        onTap:(){
                        Navigator.push (
                            context,
                            MaterialPageRoute(builder: (context) => pages[_index]),
                        );
                        },
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(a[index]),
                                fit: BoxFit.fill),
                          ),
                        ),
                      );
                    }
                ),
                Positioned
                  (
                  top: 220,
                  left: 150,
                  child: new DotsIndicator(
                  dotsCount: a.length,
                  position: _index,
                      decorator: DotsDecorator(
                      color: Colors.white, // Inactive color
                      activeColor: Colors.red,
                      ),
                      ),
                ),
                //DotsIndicator
              ],
            ),
            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.only(right: 160),
              child: Text("Top-rated movies on IMDb",
              style: TextStyle(fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,),),
            ),

            SizedBox(height: 10),

            Container(
              height: 220,
              color: Colors.black,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: b.length,
                  itemBuilder: (BuildContext con,index)
                  {
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>list1[index]),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 150,
                              width: 250,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(b[index]),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(5)
                              ),
                            ),

                          ],
                        ),
                      ),
                    );
                  }
              ),
            ),
            //list1

            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Text("Featured Originals and Exclusives",
                style: TextStyle(fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,),),
            ),

            SizedBox(height: 10),

            Container(
              height: 220,
              color: Colors.black,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: c.length,
                  itemBuilder: (BuildContext con,index)
                  {
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>list2[index]),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 150,
                              width: 250,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(c[index]),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(5)
                              ),
                            ),

                          ],
                        ),
                      ),
                    );
                  }
              ),
            ),
            //list2
            Padding(
              padding: const EdgeInsets.only(right: 180),
              child: Text("Watch in Your Language",
                style: TextStyle(fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,),),
            ),

            Container(
              height: 260,
              color: Colors.black,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: d.length,
                  itemBuilder: (BuildContext con,index)
                  {
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>list3[index]),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 240,
                              width: 170,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(d[index]),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(5)
                              ),
                            ),

                          ],
                        ),
                      ),
                    );
                  }
              ),
            ),
            //list3

            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text("Tale From Japan",
                style: TextStyle(fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,),),
            ),

            Container(
              height: 260,
              color: Colors.black,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: e.length,
                  itemBuilder: (BuildContext con,index)
                  {
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>list4[index]),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 240,
                              width: 170,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(e[index]),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(5)
                              ),
                            ),

                          ],
                        ),
                      ),
                    );
                  }
              ),
            ),
            // list4
          ],
        ),
      ),
    );
  }
}

