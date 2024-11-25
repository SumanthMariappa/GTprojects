import 'package:flutter/material.dart';
import 'Amazon.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';



const List<String> list = <String>['Qty:', 'Qty:1', 'Qty:2', 'Qty;3','Qty;4','Qty:5','Qty:6','Qty:7','Qty:8','Qty:9','Qty:10'];

class sub extends StatefulWidget {
  const sub({super.key});

  @override
  State<sub> createState() => _subState();
}

class _subState extends State<sub> {
  String dropdownValue = list.first;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: Container(
          height: 10,
          width: 10,
          child: ElevatedButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Amazonpage()
                )
            );
          }, child: Icon(Icons.arrow_back)),
        ),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 400,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon:Icon(Icons.search),
                hintText: "search Amazon.in",
                suffixIcon: Container(
                  width: 50,
                  child: Row(
                    children: [
                      Icon(Icons.camera_alt_outlined),
                      Icon(Icons.mic_outlined),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.qr_code_scanner_outlined),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
             Stack(
               children: [
                 CarouselSlider.builder(
                     options: CarouselOptions(
                       height: 400,
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
                     ),
                     itemCount: 3,
                     itemBuilder: (BuildContext context, int index, int realIndex) {
                       return   Container(
                         height: 300,
                         decoration: BoxDecoration(
                           image: DecorationImage(
                               image: NetworkImage("https://m.media-amazon.com/images/I/71yE0+8JwVL._SX679_.jpg"),
                               fit: BoxFit.fill),
                         ),
                       );
                     }
                 ),
                 Positioned(
                   top: 30,
                     left: 20,
                     child: Container(
                       height: 70,
                         width: 80,
                         child: Image(image: NetworkImage("https://static.vecteezy.com/system/resources/thumbnails/021/299/519/small_2x/50-percent-off-3d-sign-on-white-special-offer-50-discount-tag-flash-sale-up-to-fifty-percent-off-big-offer-sale-offer-label-sticker-banner-advertising-offer-icon-flasher-3d-illustration-png.png"),
                         fit: BoxFit.fill,
                         ),
                     ),
                 ),
                 Positioned(
                   bottom: 20,
                     right: 20,
                     child: Icon(Icons.share)
                 ),
                 Positioned(
                   bottom: 20,
                     right: 60,
                     child:Icon(Icons.handshake_outlined),
                 ),
               ],
             ),
              Divider(
                color: Colors.grey.shade300,
              ),
              //Divider
              Padding(
                padding: const EdgeInsets.only(left: 220,),
                child: Container(
                  height: 30,
                  width: 130,
                  child: Row(
                    children: [
                      RatingBar.builder(
                          direction: Axis.vertical,
                          itemCount: 5,
                          minRating: 1,
                          allowHalfRating: true,
                          itemSize: 25,
                          tapOnlyMode: true,
                          itemBuilder: (context,_)=> const Icon(Icons.star,color: Colors.orange,),
                          onRatingUpdate: (value){
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Givenrating is$value")),
                            );
                          }
                      ),
        
        
                    ],
                  ),
                ),
              ),
              //RatingBar
              Container(
                height: 60,
                width: 400,
        
                child: Text("Fire-Bolt Moonwatch 36.3mm(1.45inch)AMOLED Display,Wireless Charging,Metallic Frame,Stainles Stell Luxury Straps,Complete Health Suite,Sports modes(Gold)",
                style: TextStyle(
                  fontSize: 13,
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right:270,bottom:20),
                child: Text("400+ bought in past month",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 10,
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 160),
                child: RichText(
                    text: TextSpan(
                      text: '-69%',
                      style: TextStyle(
                        fontSize: 50,
                        color:Colors.red,
                      ),
                      children: [
                        TextSpan(
                          text: '\u{20B9}${"4999"}',
                          style: TextStyle(color: Colors.black,
                          fontSize:50,
                          ),
                        ),
                      ],
                    ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 270),
                child: RichText(
                    text: TextSpan(
                      text: 'M.R.P.:',style: TextStyle(
                      fontSize: 15,
                    ),
                      children:[ TextSpan(
                        text: ' ₹ 5̶5̶9̶9̶ ',
                          style: TextStyle(fontSize: 15),
                      )
                      ]
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 60),
                child: RichText(
                    text: TextSpan(
                      text: 'EMI',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      children: [TextSpan(
                        text: 'from ₹499.No Cost EMI available',
                        style: TextStyle(fontSize: 15,color: Colors.black,fontWeight:FontWeight.w200),
                      ),
                        TextSpan(
                          text: '.EMI option',
                          style: TextStyle(color: Colors.blue,
                          fontSize: 15,fontWeight: FontWeight.w400)
                        ),
                      ]
                    ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 238),
                child: Text("Inclusive of all taxes",
                style: TextStyle(fontSize: 16),),
              ),
              Divider(
                color: Colors.grey.shade300,
              ),
              Container(
                height: 50,
                width: 400,
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFPdi88Sn_aJaDOi77C5zMLfmntP5rbKaqZD8BAxac_2_ytxE0"),
                        fit: BoxFit.fill)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("All offers & discounts",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 110),
                      child: Icon(Icons.arrow_forward_ios),
                    )
                  ],
                ),
              ),
              Divider(
                height: 10,
                color: Colors.grey.shade300,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100),
                child: RichText(
                  text: TextSpan(
                      text: 'FREE delivery ',
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.blue),
                      children: [TextSpan(
                        text: ' Monday, 23 September',
                        style: TextStyle(fontSize: 15,color: Colors.black,fontWeight:FontWeight.w600),
                      ),
                        TextSpan(
                            text: '.Details',
                            style: TextStyle(color: Colors.blue,
                                fontSize: 15,fontWeight: FontWeight.w400)
                        ),
                      ]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: Row(
                      children: [
                        Icon(Icons.location_on_outlined),
                        Text("Deliver to ooty - 643004",
                        style: TextStyle(color: Colors.blue,fontSize: 15),),
                      ]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 330),
                child: Text("In stock",style: TextStyle(
                  fontSize: 17,
                  color: Colors.green,
                ),
                ),
              ),
              Divider(
                color: Colors.grey.shade300,
              ),
              Container(
                height: 20,
                width: 400,
                child: Container(
                  height: 20,
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_downward),
                    elevation: 6,
                    style: const TextStyle(color: Colors.deepPurple),

                    underline: Container(
                      height: 20,
                    ),
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    items: list.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              Divider(
                color: Colors.grey.shade300,
              ),
              //dropdown button
              SizedBox(
                height: 25,
              ),

              Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: ElevatedButton(onPressed: (){},
                    child: Text("Add to cart",style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                    )
                ),
              ),


              SizedBox(
                height: 10,
              ),

              Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: ElevatedButton(onPressed: (){},
                    child: Text("Buy Now",style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

