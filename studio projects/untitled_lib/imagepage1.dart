import 'package:flutter/material.dart';

class imagepage1 extends StatelessWidget {
  const imagepage1({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("asset/background 3.jpg"),
          fit: BoxFit.fill)
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  height: 300,
                  width: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage("asset/img 1.jpg"),
                    fit: BoxFit.fill),
                  ),
                ),
                          ),
                Column(
           children: [
             Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: 100,
                     width: 100,
                     decoration: const BoxDecoration(
                       image: DecorationImage(image: AssetImage("asset/img 1.jpg"),
                           fit: BoxFit.fill),
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: 100,
                     width: 100,
                     decoration: const BoxDecoration(
                       image: DecorationImage(image: AssetImage("asset/img 1.jpg"),
                           fit: BoxFit.fill),
                     ),
                   ),
                 ),
               ],
             ),
             Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: 100,
                     width: 100,
                     decoration: BoxDecoration(image: DecorationImage(image: AssetImage("asset/img 2.jpg"),
                         fit: BoxFit.fill),
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: 100,
                     width: 100,
                     decoration: BoxDecoration(image: DecorationImage(image: AssetImage("asset/img 2.jpg"),
                         fit: BoxFit.fill),
                     ),
                   ),
                 )

               ],
             ),
           ],
         ),

                
              ],
            ),
            Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("asset/background.jpg"),
                fit: BoxFit.fill)
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 180,
                          width: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("asset/img 1.jpg"),
                            fit: BoxFit.fill)
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("asset/img 1.jpg"),
                                          fit: BoxFit.fill)
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("asset/img 1.jpg"),
                                          fit: BoxFit.fill)
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("asset/img 1.jpg"),
                                          fit: BoxFit.fill)
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("asset/img 1.jpg"),
                                          fit: BoxFit.fill)
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("asset/img 1.jpg"),
                                      fit: BoxFit.fill)
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("asset/img 1.jpg"),
                                      fit: BoxFit.fill)
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("asset/img 1.jpg"),
                                  fit: BoxFit.fill)
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



class val extends StatefulWidget {
  const val({super.key});

  @override
  State<val> createState() => _valState();
}

class _valState extends State<val> {

   final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Column(
          children: [
            TextFormField(
              validator: (input)

              {
                if(input == null || input.isEmpty )
                  {
                    return "please enter the valid name";
                  }
              },
            ),
            ElevatedButton(onPressed: (){
              if(_key.currentState!.validate())
                {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ok success")));
                }

            }, child: Text("ok"))

          ],
        ),
      ),
    );
  }
}


/// reg exp