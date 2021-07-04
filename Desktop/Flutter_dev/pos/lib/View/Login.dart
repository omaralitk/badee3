import 'package:flutter/material.dart';
import 'package:pos/View/Home.dart';
import 'package:flutter/gestures.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey formKey =GlobalKey();
  late String email;
  late String password;

  late TapGestureRecognizer changeSign;
  bool signIn = true;

  @override
  void initState() {
    // TODO: implement initState
    changeSign = new TapGestureRecognizer()
      ..onTap = () {
        setState(() {
          signIn = !signIn;
          print('hello');
        });
      };

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    var mdh = MediaQuery.of(context).size.height;
    return Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
            },
            backgroundColor: Colors.black,
            child: Icon(Icons.home,color: Colors.white,),
          ),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/backSDSl.png"),
                fit: BoxFit.cover,
              ),
            ),

            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                ),
                buildPositionedTop(mdw),
                buildPositionedBottom(mdw),
                buildContainerAvatar(mdw),
                buildCenterForm(mdw),

              ],
            ),
          ),
        ));
  }

  Center buildCenterForm(double mdw) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            signIn
                ? AnimatedContainer(
              curve: Curves.decelerate,
              duration: Duration(milliseconds: 600),
              margin: EdgeInsets.only(top: mdw / 1.4),
              height: mdw / 1.6,
              width: mdw / 1.2,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 4,
                    spreadRadius: 1,
                    offset: Offset(1, 1))
              ]),
              child: Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            validator: (val){
                              if (val!.isEmpty){
                                return 'fill your email';

                              }
                              return null;

                            },
                            onSaved: (val){
                              setState(() {
                                email=val!;
                              });
                            },
                            decoration: InputDecoration(
                                filled: true,
                                hintText: 'Enter your Email',
                                fillColor: Colors.grey[200]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            validator: (val){
                              if (val!.isEmpty)
                                return 'enter password';
                              else
                                return null;
                            },
                            onSaved: (val){
                              setState(() {
                                email=val!;
                              });
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                                filled: true,
                                hintText: 'Enter your password ',
                                fillColor: Colors.grey[200]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
                : AnimatedContainer(
              curve: Curves.decelerate,
              duration: Duration(milliseconds: 600),
              margin: EdgeInsets.only(top: mdw / 2),
              height: mdw / 0.9,
              width: mdw / 1.2,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 4,
                    spreadRadius: 1,
                    offset: Offset(1, 1))
              ]),
              child: Form(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'User Name',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                                filled: true,
                                hintText: 'Enter your user name',
                                fillColor: Colors.grey[200]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                                filled: true,
                                hintText: 'Enter your email ',
                                fillColor: Colors.grey[200]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                filled: true,
                                hintText: 'Enter your password',
                                fillColor: Colors.grey[200]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Confirm Password',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                filled: true,
                                hintText: 'Enter your password again',
                                fillColor: Colors.grey[200]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            signIn?Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                'Forgot your password ?' ,
                style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,decoration:TextDecoration.underline,fontSize: 15)

            ),
            ):SizedBox(),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: RaisedButton(
                onPressed: () {},
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                    },
                    child: Text(
                      signIn ? 'Login' : 'Register',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 15),
                      children: [
                        TextSpan(
                            text: signIn
                                ? 'If you dont have an account \n you can '
                                : ' You can now   '),
                        TextSpan(
                            recognizer: changeSign,
                            text: signIn ? 'Create Account' : 'Login',
                            style:
                            TextStyle(color: Colors.white,fontWeight: FontWeight.bold,decoration:TextDecoration.underline))
                      ])),
            )
          ],
        ),
      ),
    );
  }

  Container buildContainerAvatar(double mdw) {
    return Container(
        height: mdw,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Center(
                  child: Text(
                    signIn ? 'Login' : 'Register',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 600),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(mdw),
                      color: Colors.red[800],
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black, blurRadius: 4, spreadRadius: 2)
                      ]),
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Positioned buildPositionedTop(double mdw) {
    return Positioned(
        child: Transform.scale(
          scale: 1.3,
          child: Transform.translate(
            offset: Offset(0, -mdw / 1.6),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 600),
              width: mdw,
              height: mdw,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(mdw),
                  color: Colors.grey[800] ),
            ),
          ),
        ));
  }

  Positioned buildPositionedBottom(double mdw) {
    return Positioned(
        child: Transform.scale(
          scale: 2,
          child: Transform.translate(
            offset: Offset(0, mdw / 1.3),
            child: AnimatedContainer(
              duration: Duration(milliseconds:600 ),
              width: mdw,
              height: mdw,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(mdw),
                  color: Colors.grey[800] ),
            ),
          ),
        ));
  }
}
