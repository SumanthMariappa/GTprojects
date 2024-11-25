import 'package:flutter/material.dart';

class spotify extends StatefulWidget {
  const spotify({super.key});

  @override
  State<spotify> createState() => _spotifyState();
}

class _spotifyState extends State<spotify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(

                expandedHeight:650,
                floating: true,
                pinned: true,
                snap: false,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background:
                  Container(
                    height:430,
                    width: 420,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [(Colors.deepPurple),(Colors.black87)],
                      ),
                    ),


                    child:
                    Column(
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(right:350,top:10),
                          child: Icon(Icons.arrow_back,
                            size: 35,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 35,left: 20),
                          //OVERALL CONTAINER
                          child: Container(
                            child: Row(
                              children: [
                                //SEARCH BAR
                                Container(
                                  height: 40,
                                  width: 280,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.white24,
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: "Search a song",labelStyle: TextStyle(color: Colors.white),
                                      prefixIcon: Icon(Icons.search,color: Colors.white,),
                                      border: OutlineInputBorder(),

                                    ),
                                  ),
                                ),

                                SizedBox(width: 10,),

                                //SORTBTN
                                Container(
                                  height: 40,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.white24,
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: "Sort",labelStyle: TextStyle(color: Colors.white),
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          children: [

                            //IMAGE
                            Padding(
                              padding: const EdgeInsets.only(top:10),
                              child: Container(
                                height: 250,
                                width: 250,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage("https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO4u84Yc-default.jpg"),
                                    fit: BoxFit.fill)),
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 150),
                                    child: Text("Mesmerising love hits of Hiphop Tamizha",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),

                                  //SPOTIFY LOGO & TEXT
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15,left: 20),
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(100),
                                              color: Colors.white,
                                              image: DecorationImage(
                                                  image: NetworkImage("https://cdn-icons-png.flaticon.com/128/16592/16592544.png",),

                                                  fit: BoxFit.fill
                                              ),
                                            ),
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.only(left: 15),
                                            child: Text("Spotify",style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 20,
                                              color: Colors.white,
                                            ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),

                                  //83,720 TEXT
                                  Padding(
                                    padding: const EdgeInsets.only(right: 220,top: 20,bottom: 20),
                                    child: Text("83,720 saves. 6h 22min",style: TextStyle(color: Colors.grey),),
                                  ),

                                  //icons
                                  Row(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 180,
                                        child:
                                        Row(
                                          children: [
                                            Icon(Icons.add_circle_outline_sharp,size: 30,color: Colors.grey,),
                                            SizedBox(width: 20,),
                                            Icon(Icons.download_for_offline_outlined,size: 30,color: Colors.grey,),
                                            SizedBox(width: 20,),
                                            Icon(Icons.share,size: 30,color: Colors.grey,),
                                            SizedBox(width: 20,),
                                            Icon(Icons.more_vert,size: 30,color: Colors.grey,),
                                          ],

                                        ),
                                      ),

                                      //RIGHT ICONS
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left:120),
                                            child: Icon(Icons.shuffle,color: Colors.grey,),
                                          ),
                                          SizedBox(width: 10,),
                                          Icon(Icons.play_circle_fill,color: Colors.green,size: 60,),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body: Container(
            height: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder:(BuildContext con,index)
                {
                  return  Container(
                    height: 100,
                    width: 100,
                    color: Colors.black87,
                    child: Row(

                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOUDhDSYhai0DzEhy-yg8psXonEnkc7aRxEw&s"),
                                fit: BoxFit.fill),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10,top: 20),
                              child: Text("Vaadi pulla vaadi",style: TextStyle(
                                  color:Colors.white,fontSize: 22),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10,right: 40),
                              child: Text("Hiphop Tamizha",
                              style: TextStyle(color: Colors.white60,fontSize: 15)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100,bottom: 15),
                          child: Icon(Icons.more_vert_outlined,color: Colors.white60,size: 30,),
                        )
                      ],
                    ),
                  );
                }
            ),
          ),
        ),
    );
  }
}
