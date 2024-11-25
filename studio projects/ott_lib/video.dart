import  'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:ott/homepage.dart';
import 'package:video_player/video_player.dart';


class video extends StatefulWidget {
  const video({super.key});

  @override
  State<video> createState() => _videoState();
}


class _videoState extends State<video> {
  List p=[
    "assets/ani1.jpeg",
    "assets/ani2.jpeg",
    "assets/ani3.jpeg",
    "assets/ani4.jpeg",
    "assets/ani5.jpeg",
  ];
  late FlickManager flickManager;
  @override
  void initState(){
    super.initState();
    flickManager=FlickManager(
        videoPlayerController:VideoPlayerController.networkUrl(Uri.parse("https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")));
  }
  @override
  void dispose(){
    flickManager.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          setState(() {
            Navigator.pop(context, MaterialPageRoute(builder: (context)=>Homepage()));
          });
        },icon: Icon(Icons.arrow_back,color: Colors.white,size: 20,)),
        backgroundColor:Colors.black ,
      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                width: 400,
                child: FlickVideoPlayer(
                  flickManager: flickManager,
                ),
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text(" Animation",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text(" Description",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("    Animation is a filmmaking technique by which still images are manipulated to create moving images. In traditional animation, images are drawn or painted by hand on transparent celluloid sheets (cels) to be photographed and exhibited on film. Animation has been recognized as an artistic medium, specifically within the entertainment industry. Many animations are computer animations made with computer-generated imagery (CGI). Stop motion animation, in particular claymation, has continued to exist alongside these other forms.",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.grey),
                  ),
                ))
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Icon(Icons.add,size: 25,color: Colors.white,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.favorite,size: 25,color: Colors.white,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.movie_filter,size: 25,color: Colors.white,),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Divider(),
            Row(
              children: [
                Text(" Continue to watch",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
              ],
            ),
            Container(
              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: p.length,
                  itemBuilder:(BuildContext co,index){
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(p[index]),fit: BoxFit.fill)
                        ),
                      ),
                    );
                  } ),
            ),
          ],
        ),
      ),
    );

  }
}