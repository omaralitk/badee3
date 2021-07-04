import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:pos/View/Login.dart';
import 'package:pos/View/MainDrawer.dart';
import 'package:pos/View/bottomsheet.dart';
import 'package:pos/View/contact.dart';
import 'package:pos/View/posts/Icomes_Expanses.dart';
import 'package:pos/View/posts/Many_Mores.dart';
import 'package:pos/View/posts/Mult_Accounts.dart';
import 'package:pos/View/posts/Mult_Purchases.dart';
import 'package:pos/View/posts/Mult_Taxes.dart';
import 'package:pos/View/posts/multiple_locations.dart';
import 'package:pos/View/posts/online.dart';
import 'package:pos/View/posts/pos.dart';
import 'package:pos/View/posts/quick_settings.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState( );
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar( ),
      endDrawer: Drawer1( ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ImageSlideshow(

              /// Width of the [ImageSlideshow].
              width: double.infinity,

              /// Height of the [ImageSlideshow].
              height: 200,

              /// The page to show when first creating the [ImageSlideshow].
              initialPage: 0,

              /// The color to paint the indicator.
              indicatorColor: Colors.blue,

              /// The color to paint behind th indicator.
              indicatorBackgroundColor: Colors.grey,

              /// The widgets to display in the [ImageSlideshow].
              /// Add the sample image file into the images folder
              children: [
                Image.asset(
                  'assets/images/slider1.jpeg',
                ),
                Image.asset(
                  'assets/images/slider2.png',
                ),
                Image.asset(
                  'assets/images/Slider4.png',
                ),
                Image.asset(
                  'assets/images/slider5.jpeg',
                ),
              ],

              /// Auto scroll interval.
              /// Do not auto scroll with null or 0.
              autoPlayInterval: 5000,
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>POS()));
            },
            child: Card(
              child: Container(
                height: 130,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/pos.png"),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,

                  ),

                ),
                child: Center(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("POS",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: TextSpan(
                            text:
                            'Easily create & manage all Your sale ,create recurring sales and track customer dues .',
                            style: TextStyle(
                                color: Colors.white, fontSize: 15,fontWeight: FontWeight.bold ) ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                )),
              ),
              elevation: 10,
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>online()));
            },
            child: Card(
              child: Container(
                height: 130,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/OnlinePay.png"),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,

                  ),

                ),
                child: Center(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Online Payment",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: TextSpan(
                            text:
                            'Accept payments online with you preffered payment gateway and offline account payment .',
                            style: TextStyle(
                                color: Colors.white, fontSize: 15,fontWeight: FontWeight.bold ) ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                )),
              ),
              elevation: 10,
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Quick_Settings()));
            },
            child: Card(
              child: Container(
                height: 130,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/QuickSettings.png"),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,

                  ),

                ),
                child: Center(child: Text("Quick Settings",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
              ),
              elevation: 10,
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Mult_Locations()));
            },
            child: Card(
              child: Container(
                height: 130,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/multipleLocations.png"),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,

                  ),

                ),
                child: Center(child: Text("Multiple Locations",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
              ),
              elevation: 10,
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Mult_Accounts()));
            },
            child: Card(
              child: Container(
                height: 130,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/multAccounts.png"),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,

                  ),

                ),
                child: Center(child: Text("Multiple Accounts",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
              ),
              elevation: 10,
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Mult_Taxes()));

            },
            child: Card(
              child: Container(
                height: 130,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/taxesMult.png"),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,

                  ),

                ),
                child: Center(child: Text("Multiple Taxes",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
              ),
              elevation: 10,
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Mult_Purchases()));

            },
            child: Card(
              child: Container(
                height: 130,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/purchasesManeg.png"),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,

                  ),

                ),
                child: Center(child: Text("Multiple Purchases",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
              ),
              elevation: 10,
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Incomes_Expenses()));

            },
            child: Card(
              child: Container(
                height: 130,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/incomes&expen.png"),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,

                  ),

                ),
                child: Center(child: Text("Incomes & Expenses ",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
              ),
              elevation: 10,
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Many_Mores()));

            },
            child: Card(
              child: Container(
                height: 130,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Manymores.png"),
                    fit: BoxFit.fill,
                    alignment: Alignment.topCenter,

                  ),

                ),
                child: Center(child: Text("Many Mores ",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
              ),
              elevation: 10,
            ),
          ),

          SizedBox(
            height: 50,
          ),
        ],
      ),
      bottomSheet: Bottom(),
    );
  }



  AppBar buildAppBar() {
    return AppBar(
        iconTheme: IconThemeData( color: Colors.black ),
        backgroundColor: Colors.white,
        elevation: 4,
        leading: Padding(
          padding: const EdgeInsets.only( left: 5 ),
          child: Image.asset( 'assets/images/SDSL.png' ),
        ),
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text( 'POS',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.bold ) ),
                Text( 'نظام نقاط البيع ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold ) ),
              ],
            ),
            Text( 'نظام المتجر الإلكتروني',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ) ),
          ],
        ) );
  }
}
