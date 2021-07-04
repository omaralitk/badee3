import 'package:flutter/material.dart';
import 'package:pos/View/posts/postBottom.dart';

import '../bottomsheet.dart';
class Quick_Settings extends StatefulWidget {
  @override
  _Quick_SettingsState createState() => _Quick_SettingsState();
}

class _Quick_SettingsState extends State<Quick_Settings> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: buildAppBar(),
      bottomSheet: BottomPOS(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/quickSetting.png',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Quick Settings',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.red
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Settings module is available to easily configure the application .',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),

    );
  }
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