
import 'package:mailto/mailto.dart';
import 'package:flutter/material.dart';
import 'package:pos/View/Home.dart';
import 'package:pos/View/Login.dart';
import 'package:pos/View/MainDrawer.dart';
import 'package:pos/View/bottomsheet.dart';
import 'package:url_launcher/url_launcher.dart';
String url ='https://sds.com.sa';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      endDrawer: Drawer1(),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/contactBack.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, top: 5.0, bottom: 2.0),
                      child: Text(
                        'Branches ',
                        style: TextStyle(
                            fontSize: 27,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/Riyadh.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.domain_sharp,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        '  Riyadh Branch      ',
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.red),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                      Text('  '),
                                      Text(
                                        ' Salman Farsi St.             ',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.phone,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                      Text('  '),
                                      Text(
                                        'Tel: +966-11-2459383',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/Jeddah.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.domain_sharp,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        '   Jeddah Branch    ',
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.red),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                      Text('  '),
                                      Text(
                                        '  Khaled bin Waleed St. ',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.phone,
                                        size: 25,
                                        color: Colors.white,
                                      ),
                                      Text('   '),
                                      Text(
                                        'Tel +966-12-6515011  ',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, top: 5.0, bottom: 2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.public),
                                RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: ' Website        ',
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),
                                ])),
                              ],
                            ),
                            InkWell(
                              onTap: (){
                                _launchURL2();
                              },
                              child: Text(
                                'www.sds.com.sa',
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                            Text('     '),
                          ],
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, top: 5.0, bottom: 2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(' '),
                                Icon(Icons.email),
                                RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Email         ',
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),
                                ])),
                              ],
                            ),
                            InkWell(
                              onTap: (){
                                launchMailto();
                              },
                              child: Text(
                                'support@sds.com.sa',
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline),
                              ),
                            )
                          ],
                        )),
                    SizedBox(
                      height: 40,
                    ),
                   InkWell(
                     onTap: (){

                       _launchURL();
                     },
                     child: Container(
                       width: MediaQuery.of(context).size.width/3,
                       height: MediaQuery.of(context).size.width/8,

                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(20)),
                         color: Colors.black
                       ),
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Image.asset('assets/images/whatsApp.png',height: 50,),
                             Text('Support',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)
                           ],
                         ),
                       ),


                     ),
                   ),
                    SizedBox(
                      height: 60,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Bottom(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 4,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Image.asset('assets/images/SDSL.png'),
        ),
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('POS',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.bold)),
                Text('نظام نقاط البيع ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            Text('نظام المتجر الإلكتروني',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ));

  }
}
_launchURL() async {
  const url = 'https://api.whatsapp.com/send?phone=966569155530';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
  throw 'Could not launch $url';
}
}
_launchURL2() async {
  const url = 'https://sds.com.sa';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
launchMailto() async {
  final mailtoLink = Mailto(
    to: ['support@sds.com.sa'],
    cc: ['nadia@sds.com.sa'],
    subject: '',
    body: '',
  );
  // Convert the Mailto instance into a string.
  // Use either Dart's string interpolation
  // or the toString() method.
  await launch('$mailtoLink');
}
