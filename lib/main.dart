import 'package:badee3/Model/authentication.dart';
import 'package:badee3/View/login_Screen.dart';
import 'package:badee3/View/signUp_Screen.dart';
import 'package:flutter/material.dart';
import 'package:badee3/View/home.dart';
import 'package:provider/provider.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider.value(value: Authentication())
    ],
    child: MaterialApp(
      home: Badee3(),
      routes: {
        SignUp.routeName:(ctx)=>SignUp(),
        Login.routeName:(ctx)=>Login(),
        Home.routeName:(ctx)=>Home(),
      },
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class Badee3 extends StatefulWidget {
  @override
  _Badee3State createState() => _Badee3State();
}

class _Badee3State extends State<Badee3> {
  @override
  Widget build(BuildContext context) {
    return buildSplashScreen();

  }

  SplashScreen buildSplashScreen() {
    ///splash screen 'Screen that at the beginning'
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new SignUp(),
      title: new Text(
        'Badee3',
        style: TextStyle(color: Colors.teal, fontSize: 60,fontWeight: FontWeight.bold,fontFamily: 'Pattaya'),

      ),
      backgroundColor: Colors.black,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      loaderColor: Colors.red);
  }
}
