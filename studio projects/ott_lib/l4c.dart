import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ott/video.dart';

class l4c extends StatefulWidget {
  @override
  State<l4c> createState() => _l4cState();
}

class _l4cState extends State<l4c> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [

          IconButton(onPressed: (){}, icon: Icon(Icons.cast,color: Colors.white,size: 30,)),
          SizedBox(width: 20,),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.cyan,
              image: DecorationImage(image: AssetImage("assets/s logo.png"),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          SizedBox(width: 20,),
        ],
      ),


      body:SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 220,
                width: 420,
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                    image: NetworkImage("https://m.media-amazon.com/images/M/MV5BNTI3MzA0NzM0NF5BMl5BanBnXkFtZTcwODY4MjY5MQ@@._V1_.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(right: 240,top: 10,bottom: 10),
              child: Text("BLEACH",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),


            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: TextButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>video()));
                },
                child: Text(
                  "Play video",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 17
                  ),
                ),
              ),
            ),

            //5-BTNS
            SizedBox(height: 20),
            Container(
              height: 100,
              width: 420,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.black,
                    child: Column(
                      children: [
                        IconButton(onPressed: (){} ,icon:Icon(Icons.movie_outlined,size: 35,color: Colors.white,)),
                        Text("Trailer",style: TextStyle(color: Colors.white,fontSize:15,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),

                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.black,
                    child: Column(
                      children: [
                        IconButton(onPressed: (){} ,icon:Icon(Icons.add,size: 35,color: Colors.white,)),
                        Text("Watchlist",style: TextStyle(color: Colors.white,fontSize:15,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),

                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.black,
                    child: Column(
                      children: [
                        IconButton(onPressed: (){} ,icon:Icon(Icons.thumb_up_off_alt_outlined,size: 35,color: Colors.white,)),
                        Text("Like",style: TextStyle(color: Colors.white,fontSize:15,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),

                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.black,
                    child: Column(
                      children: [
                        IconButton(onPressed: (){} ,icon:Icon(Icons.thumb_down_off_alt_outlined,size: 35,color: Colors.white,)),
                        Text("Not for me",style: TextStyle(color: Colors.white,fontSize:15,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),

                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.black,
                    child: Column(
                      children: [
                        IconButton(onPressed: (){} ,icon:Icon(Icons.share_outlined,size: 35,color: Colors.white,)),
                        Text("Share",style: TextStyle(color: Colors.white,fontSize:15,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(20),
              child: Text("Bleach (stylized in all caps) is a Japanese manga series written and illustrated by Tite Kubo. It follows the adventures of a teenager Ichigo Kurosaki, who obtains the powers of a Soul Reaper—a death personification similar to a Grim Reaper—from another Soul Reaper, Rukia Kuchiki.",
                style: TextStyle(color: Colors.white,fontSize: 18),),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 70),
              child: Text(
                'Genre:  Action, Drama ,Thriller',
                style: TextStyle(fontSize: 20,color: Colors.white),
              ),
            ),

            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text("IMDb 9.5/10",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 260,bottom: 20),
              child: Text("SEASONS",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 25,bottom: 20),
              child: Row(
                children: [
                  Container(
                    height: 25,
                    width: 35,
                    decoration: BoxDecoration(color: Colors.white24,
                        borderRadius: BorderRadius.circular(7)),
                    child: Center(child: Text(" 16+",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),)),
                  ),

                  SizedBox(width: 5,),
                  Container(
                    height: 25,
                    width: 70,
                    decoration: BoxDecoration(color: Colors.white24,
                        borderRadius: BorderRadius.circular(7)),
                    child: Center(child: Text("4k UHD",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),)),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 260,bottom:8),
              child: Text("Langages",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 184,),
              child: Text("Audio(7),Subtitle(4)",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18)),
            )

          ],
        ),
      ) ,
    );
  }
}