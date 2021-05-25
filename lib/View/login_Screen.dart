import 'package:badee3/View/home.dart';
import 'package:badee3/View/signUp_Screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:badee3/Model/authentication.dart';

class Login extends StatefulWidget {
  static const routeName = '/login';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  ///error dialog message
  void showErrorDialog(String msg) {
    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
              title: Text('Error'),
              content: Text(msg),
              actions: [
                IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    })
              ],
            ));
  }

  final GlobalKey<FormState> formKey = GlobalKey();
  Map<String, String> authData = {'email': '', 'password': ''};

  ///validation and submit
  Future<void> submit() async {
    if (!formKey.currentState.validate()) {
      return null;
    }
    formKey.currentState.save();
    print(authData['email']+"////"+authData['password']);
    try {
      await Provider.of<Authentication>(context, listen: false)
          .Login(authData['email'], authData['password']);
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    } catch (error) {
      var errorMessage = 'Authentication invaled . Please try again later';
      print(error.toString());
      showErrorDialog(errorMessage);
    }
  }

  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
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
    );
  }
  ///grey top area
  Positioned buildPositionedTop(double mdw) {
    return Positioned(
        child: Transform.scale(
      scale: 1.3,
      child: Transform.translate(
        offset: Offset(0, -mdw / 1.6),
        child: Container(
          width: mdw,
          height: mdw,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(mdw),
              color: Colors.grey[800]),
        ),
      ),
    ));
  }
  ///grey bottom area
  Positioned buildPositionedBottom(double mdw) {
    return Positioned(
        child: Transform.scale(
      scale: 2,
      child: Transform.translate(
        offset: Offset(0, mdw / 1.3),
        child: Container(
          width: mdw,
          height: mdw,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(mdw),
              color: Colors.grey[800]),
        ),
      ),
    ));
  }
  ///avatar 'person icon'
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
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(mdw),
                      color: Colors.teal,
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
  ///form of login
  Center buildCenterForm(double mdw) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 180),
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
                        //email
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value.isEmpty || !value.contains('@')) {
                                return 'invalid email';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              authData['email'] = value;
                            },
                            decoration: InputDecoration(
                                filled: true,
                                hintText: 'example@domain.com ',
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
                        //password
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            validator: (value) {
                              if (value.isEmpty || value.length < 6) {
                                return 'invalid password';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              authData['password'] = value;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                                filled: true,
                                hintText: 'Example#123',
                                fillColor: Colors.grey[200]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text(
                    'SignUp ?',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Container(
              width: 150,
              height: 50,
              margin: EdgeInsets.only(top: 90),
              child: RaisedButton(
                onPressed: () {
                  submit();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                color: Colors.teal,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
