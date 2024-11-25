import 'package:flutter/material.dart';

class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}
class _bmiState extends State<bmi> {

  TextEditingController a =TextEditingController();
  TextEditingController b =TextEditingController();
  double height =0;
  double weight =0;
  double bmi =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("BMI Calulator"),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),


          TextFormField(
            controller: a,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Heght(cm)",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),


          TextFormField(
            controller: b,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Weight(kg)",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),


          ElevatedButton(onPressed: (){
            showDialog(
              context: context,
              builder: (ctx)
              {
                height =double.parse(a.text);
                weight =double.parse(b.text);
                height = (height*0.01);
                bmi = weight/(height*height);


                return AlertDialog(
                  title: Text("GST Inclusive"),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children:[
                      Text("BMI Amount:${bmi.toString()}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),

                      Padding(
                        padding: const EdgeInsets.only(top:40),
                        child: Container(
                          height:120,
                          width: 280,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border:Border.all(),
                          ),
                          child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              Container(
                                color: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("BMI",style: TextStyle(fontSize: 20,color: Colors.black),),
                                    Text("Status",style: TextStyle(fontSize:20,color: Colors.black),),
                                  ],
                                ),
                              ),

                              //ud
                              Container(
                                color: Colors.yellow,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("below 18.4",style: TextStyle(fontSize: 15,color: Colors.black),),
                                    Text("Under Weight",style: TextStyle(fontSize: 15,color: Colors.black),),
                                  ],
                                ),
                              ),

                              //nl
                              Container(
                                color: Colors.green.shade400,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("18.5-24.9",style: TextStyle(fontSize: 15,color: Colors.black),),
                                    Text("Normal",style: TextStyle(fontSize: 15,color: Colors.black),),
                                  ],
                                ),
                              ),

                              //Ow
                              Container(
                                color: Colors.orange.shade600,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("25.0-39.9",style: TextStyle(fontSize: 15,color: Colors.black),),
                                    Text("Over Weight",style: TextStyle(fontSize: 15,color: Colors.black),),
                                  ],
                                ),
                              ),

                              //os
                              Container(
                                color: Colors.red,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("40.0 Above",style: TextStyle(fontSize: 15,color: Colors.black),),
                                    Text("Obese",style: TextStyle(fontSize: 15,color: Colors.black),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: Container(
                        color: Colors.green,
                        padding: const EdgeInsets.all(14),
                        child: const Text("okay"),
                      ),
                    ),
                  ],
                );
              },
            );
          },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              padding: EdgeInsets.symmetric(horizontal: 70,vertical: 8),
            ),
            child: Text("Calculate",
                style:TextStyle(color: Colors.white,fontSize: 40)),
          ),
        ],
      ),

    );
  }
}
