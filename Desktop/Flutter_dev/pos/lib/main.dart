import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'View/Home.dart';
void main(){
runApp(MaterialApp(home: SDS(),
  debugShowCheckedModeBanner: false,

));

}
class SDS extends StatefulWidget {
  @override
  _SDSState createState() => _SDSState();
}

class _SDSState extends State<SDS> {

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: Home(),
      duration: 5500,
      imageSize: 130,
      imageSrc: "assets/images/sds1.png",
      text: "Advanced e-Business Solutions",
      textType: TextType.TyperAnimatedText,
      textStyle: TextStyle(
        fontFamily: 'Contrail_One',

        fontSize: 27.0,
      ),
      backgroundColor: Colors.white,
    );
  }
}
