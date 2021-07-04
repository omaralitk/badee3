import 'package:flutter/material.dart';
import 'package:pos/View/About.dart';
import 'package:pos/View/Home.dart';
import 'package:pos/View/Login.dart';
import 'package:pos/View/contact.dart';
import 'package:pos/View/notification.dart';
class Drawer1 extends StatefulWidget {
  @override
  _Drawer1State createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(

      ),
      child: Drawer(
        child: ListView(

          children: [
            ListTile(
              tileColor: Colors.white70,
              title: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('assets/images/SDSL.png',height: 40,),
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                },
                child: Card(
                  color: Colors.red,
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      'Home',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));

                },
                child: Card(
                  color: Colors.red,
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      'About',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Notifications()));

                },
                child: Card(
                  color: Colors.red,
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      'Notifications',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactUs()));

                },
                child: Card(
                  color: Colors.red,
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      'Contact Us',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));

                },
                child: Card(
                  color: Colors.red,
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      'Login / Register',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
