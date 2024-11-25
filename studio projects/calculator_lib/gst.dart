import 'package:flutter/material.dart';

class gst extends StatefulWidget {
  const gst({super.key});

  @override
  State<gst> createState() => _gstState();
}
class _gstState extends State<gst> {

  TextEditingController amt =TextEditingController();
  TextEditingController pst =TextEditingController();
  double gstamount=0;
  double c=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.green,
       title: Text("GST Calulator"),
     ),
      body: Column(
        children: [
          SizedBox(height: 20),


          TextFormField(
            controller: amt,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Amount",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),


          TextFormField(
            controller: pst,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "GST",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),


          ElevatedButton(onPressed: (){
            showDialog(
              context: context,
              builder: (ctx)
              {
                double a =double.parse(amt.text);
                double b =double.parse(pst.text);
                gstamount=a-(a/(1+(b/100)));
                print(gstamount);
                double c = (a-gstamount);
                return AlertDialog(
                  title: Text("GST Inclusive"),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Actual Amount:${c.toString()}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700)),
                      Text("GST Amount:${gstamount.toString()}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                      Text("Given Amount:${a.toString()}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
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
              backgroundColor: Colors.green,
              padding: EdgeInsets.symmetric(horizontal: 70,vertical: 8),
            ),
            child: Text("GST Inclusive",
            style:TextStyle(color: Colors.white,fontSize: 40)),
          ),


          SizedBox(height: 30),

          ElevatedButton(onPressed: (){
            showDialog(
              context: context,
              builder: (ctx)
                {
                  double a =double.parse(amt.text);
                  double b =double.parse(pst.text);
                  gstamount = (b/100)*a;
                  c = (a+gstamount);
                  return AlertDialog(
                    title: Text("Exclusive"),
                    content:Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Actual Amount:${c.toString()}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700)),
                        Text("GST :${gstamount.toString()}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                        Text("Given Amount:${a.toString()}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
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
                }
            );
          },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: EdgeInsets.symmetric(horizontal: 70,vertical: 8),
            ),
            child: Text("GST Exclusive",
                style:TextStyle(color: Colors.white,fontSize: 40)),
          ),
        ],
      ),

    );
  }
}
