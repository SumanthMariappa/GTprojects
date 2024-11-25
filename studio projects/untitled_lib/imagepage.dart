import 'package:flutter/material.dart';
class imagepage extends StatelessWidget {
  const imagepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("asset/background 3.jpg"),fit: BoxFit.fill)
          ),
          child: Column(
            children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
      border: Border.all(),
      shape: BoxShape.circle,
      image: DecorationImage(image: AssetImage("asset/images.png"))
      ),
      ),
    ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 20),
                    child: Container(
                      child: Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                        ),
                        //color: Colors.black,
                        child: Column(
                          children: [
                          Container(
                            height: 160,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(35),topLeft: Radius.circular(35)
                              ),
                              image: DecorationImage(image: AssetImage("asset/img 1.jpg"),
                              fit: BoxFit.fill)
                            ),
                          ),
                            Text("Bike")
                            
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40,top: 20),
                    child: Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),),
                      child: Column(
                        children: [
                          
                          Container(
                            height: 160,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(35),topRight: Radius.circular(35)
                              ),
                              image: DecorationImage(image: AssetImage("asset/img 2.jpg"),
                              fit: BoxFit.fill)
                            ),
                          ),
                          Text("Car")
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("asset/background.jpg"),
                      fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(35)
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            height: 250,
                            width: 150,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              image: DecorationImage(image: AssetImage("asset/img 1.jpg"),
                              fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(35),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10,top: 60),
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(image: AssetImage("asset/img 2.jpg"),
                                            fit: BoxFit.fill),
                                        borderRadius: BorderRadius.circular(35)
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 60,left: 10),
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(image: AssetImage("asset/img 2.jpg"),
                                            fit: BoxFit.fill),
                                        borderRadius: BorderRadius.circular(35)
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 50,left: 10),
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(image: AssetImage("asset/img 2.jpg"),
                                            fit: BoxFit.fill),
                                        borderRadius: BorderRadius.circular(35)
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 50,left: 10),
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(image: AssetImage("asset/img 2.jpg"),
                                            fit: BoxFit.fill),
                                        borderRadius: BorderRadius.circular(35)
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],

                    ),
                  ),

                ],
              )
            ],

          ),

        )

    );
  }
}
