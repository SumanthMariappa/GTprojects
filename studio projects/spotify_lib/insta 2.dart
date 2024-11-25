import 'package:flutter/material.dart';

class instaprofile2 extends StatefulWidget {
  const instaprofile2({super.key});

  @override
  State<instaprofile2> createState() => _instaprofile2State();
}

class _instaprofile2State extends State<instaprofile2> {
  List a=[
    "assets/CR1.jpg",
    "assets/CR2.jpeg",
    "assets/CR3.jpg",
    "assets/CR4.webp",
    "assets/CR6.jpeg",
    "assets/CR5.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        leading: IconButton(onPressed: (){},
          icon: Icon(Icons.arrow_back),color: Colors.black,),
        title: Text("cristiano",style: TextStyle(color: Colors.black),),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Icon(Icons.add_alert_rounded,color: Colors.black,),
        ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.more_vert,color: Colors.black,),
          )],
      ),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext con,bool)
            {
              return[SliverAppBar(
                backgroundColor: Colors.white,
                expandedHeight: 400,
                  floating: false,
                  pinned: false,
                  snap: false,
                  flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
           background:
           Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Cristiano_Ronaldo_playing_for_Al_Nassr_FC_against_Persepolis%2C_September_2023_%28cropped%29.jpg/640px-Cristiano_Ronaldo_playing_for_Al_Nassr_FC_against_Persepolis%2C_September_2023_%28cropped%29.jpg"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                    Column(
                      children: [
                        Text("3,751",style: TextStyle(fontSize: 25),),
                        Text("posts")
                      ],
                    ),
                    Column(
                      children: [
                        Text("639M",style: TextStyle(fontSize: 25),),
                        Text("followers")
                      ],
                    ),
                    Column(
                      children: [
                        Text("579",style: TextStyle(fontSize: 25),),
                        Text("following")
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Cristiano Ronaldo",style: TextStyle(fontSize: 20),),
                  Text("SIUUUbscribe to my Youtube Channel!",style: TextStyle(fontSize: 15),),
                  IconButton(onPressed: (){},
                      icon: Row(
                        children: [
                          Icon(Icons.link),
                          Text('youtube.com/@cristiano?sub_confirmation=1',style: TextStyle(fontSize: 15,color: Colors.blue),)
                        ],
                      )
                  ),
                  IconButton(onPressed: (){},
                      icon: Row(
                        children: [
                          Icon(Icons.wechat),
                          Text("Cristiano .",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                          Text("7.9M members",style: TextStyle(fontSize: 15),),
                        ],
                      )
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 40,
                    width: 170,
                    decoration: BoxDecoration(color: Colors.black26,borderRadius: BorderRadius.circular(8),),
                    child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Following",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold,),),
                            Icon(Icons.keyboard_arrow_down,color: Colors.black,)
                          ],
                        )),
                  ),

                  Container(
                    height: 40,
                    width: 170,
                    decoration: BoxDecoration(color: Colors.black26,borderRadius: BorderRadius.circular(8),),
                    child: Center(child: Text("Message",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)),

                  )
                ],
              )

            ],
          ),
        ),
                bottom: TabBar(
                    tabs:[
                      Tab(icon: Icon(Icons.grid_on_sharp)),
                      Tab(icon: Icon(Icons.video_call)),
                      Tab(icon: Icon(Icons.person_pin_rounded)),
                    ] ),
              )
              ];
            },
          body:TabBarView(
              children:[
                Container(
                    height: 400,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                         //childAspectRatio: 1/2,
                          crossAxisCount: 3, // number of items in each row
                          mainAxisSpacing: 0, // spacing between rows
                          crossAxisSpacing: 0, // spacing between columns
                        ),
                        itemCount: a.length,
                        itemBuilder: (BuildContext con,index)
                        {
                          return  Container(
                            height: 150,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:AssetImage(a[index]),
                                    fit: BoxFit.fill),
                                //borderRadius: BorderRadius.circular(5)
                            ),
                          );
                        }
                    )
                ),
                Container(
                    height: 400,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 1/4,
                          crossAxisCount: 3, // number of items in each row
                          mainAxisSpacing: 0, // spacing between rows
                          crossAxisSpacing: 0, // spacing between columns
                        ),
                        itemCount: a.length,
                        itemBuilder: (BuildContext con,index)
                        {
                          return  Container(
                            height: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:AssetImage(a[index]),
                                  fit: BoxFit.fill),
                              //borderRadius: BorderRadius.circular(5)
                            ),
                          );
                        }
                    )
                ),
                Container(
                    height: 400,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 1/2,
                          crossAxisCount: 3, // number of items in each row
                          mainAxisSpacing: 0, // spacing between rows
                          crossAxisSpacing: 0, // spacing between columns
                        ),
                        itemCount: a.length,
                        itemBuilder: (BuildContext con,index)
                        {
                          return  Container(
                            height: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:AssetImage(a[index]),
                                  fit: BoxFit.fill),
                              //borderRadius: BorderRadius.circular(5)
                            ),
                          );
                        }
                    )
                ),
              ])
        ),
      ),
    );
  }
}
