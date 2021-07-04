import 'package:flutter/material.dart';
import 'package:pos/View/bottomsheet.dart';
import 'package:pos/View/posts/postBottom.dart';



class POS extends StatefulWidget {
  @override
  _POSState createState() => _POSState();
}

class _POSState extends State<POS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      bottomSheet: BottomPOS(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/posNew.jpeg',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'POS ',
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
              'Easily create & manage all Your sale ,create recurring sales and track customer dues .',
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
