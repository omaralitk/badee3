import 'package:flutter/material.dart';
import 'package:pos/View/Home.dart';
import 'package:pos/View/Login.dart';
class BottomPOS extends StatefulWidget {
  @override
  _BottomPOSState createState() => _BottomPOSState();
}

class _BottomPOSState extends State<BottomPOS> {
  @override
  Widget build(BuildContext context) {
    return Container(

      width: MediaQuery
          .of( context )
          .size
          .width,
      height: 50,
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only( left: 40 ),

                child: InkWell(
                  onTap: () {
                  Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Home()));
                },
                child: Icon(
                  Icons.home,
                  size: 35,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only( right: 40 ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Icon(
                    Icons.person,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
