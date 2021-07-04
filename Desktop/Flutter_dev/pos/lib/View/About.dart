import 'package:flutter/material.dart';
import 'package:pos/View/MainDrawer.dart';
import 'package:pos/View/bottomsheet.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      endDrawer: Drawer1(),
      bottomSheet: Bottom(),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'About Us',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Brief',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                    'SDS - founded in 2004 as a leader in the design and implementation of software and its goal is to help companies and large and small business enterprises to get the best programming services at an affordable cost so as to enable decision makers to have the possibility to develop its work and the possibility of marketing its products and services electronically better and access to new customers, which the company can finally get a good share of the market in light of stiff competition from the outside and the inside.'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                    'Our main aim is to develop the best new software to our customers so as to enable them to get a higher return on their investments and thus contributing to an increase in the market value of their companies, the SDS team was chosen meticulously crafted to achieve higher levels of performance.'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                    'SDS is characterized by the implementation of wide-area Internet applications using the latest programming technology and modern methods of e-marketing and technical capabilities to output multimedia software (multimedia) high level in order to serve the goal of its customers to increase sales and to circulate at the local level and internationally.'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Our vision',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                    "We aspire to SDS Web Solutions since become one of the world's largest companies operating in the software industry (especially Web software) and by expanding our business and increasing our production and the opening of Arab and international new overseas markets with continued attention to improving the quality of our production."),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Our Mission',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                    "Software development industry in the Kingdom of Saudi Arabia and upgrading to international standards in terms of professionalism and quality of work, and highlight the role of the industry in support of other industries in addition to supporting the national economy."),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Our Partners',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width / 1.8,
                        child: RichText(
                            text: TextSpan(
                                text:
                                    'We team with global IT vendors to help organizations take advantage of today’s powerful technologies and solutions, and to make sound decisions about charting and implementing their IT strategies.\n  \n As a Microsoft Certified Partner , we have worked closely with Microsoft to bring its easy-to-use, cost effective business solutions to every size of organizations in the region.',
                                style: TextStyle(color: Colors.black)))),
                    Image.asset(
                      'assets/images/Microsoft-Logo.png',
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width / 1.8,
                        child: RichText(
                            text: TextSpan(
                                text:
                                    'As a long-time Oracle partner, SDS helps its clients benefit from Oracle’s unparalled business solutions and reliable database technologies. We provide end to-end working solutions, from analyzing the organization’s requirements to selecting, customizing and implementing the right solution, to providing 24x7 technical support.',
                                style: TextStyle(color: Colors.black)))),
                    Image.asset(
                      'assets/images/Oracle.png',
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width / 1.8,
                        child: RichText(
                            text: TextSpan(
                                text:
                                    'For the success of the title , we become authorized distributors of HP .',
                                style: TextStyle(color: Colors.black)))),
                    Image.asset(
                      'assets/images/hpLogo.png',
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,

              )
            ],
          )
        ],
      ),
    );
  }
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
