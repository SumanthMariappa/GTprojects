import 'package:flutter/material.dart';

import 'login.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Who's Watching?",
        style: TextStyle(color: Colors.white,
        fontSize: 30)),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                    fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(70),
                    border: Border.all(color: Colors.white60,width: 2.0)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage("https://png.pngtree.com/thumb_back/fh260/background/20230612/pngtree-in-the-style-of-2d-game-art-image_2884743.jpg"),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(70),
                      border: Border.all(color: Colors.white60,width: 2.0)
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 175,top: 30),
            child: Container(
              height: 140,
              width: 140,
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage("https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRh7cYOZ5CXTa4Ht4ZkjIUzyf2VrTJNjfezWYOqS5eRAdcnbp4u"),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(70),
                  border: Border.all(color: Colors.white60,width: 2.0)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => login()));
              },
                  child: Text("Logout",
                    style:TextStyle(color: Colors.white,
                    fontSize: 20),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
