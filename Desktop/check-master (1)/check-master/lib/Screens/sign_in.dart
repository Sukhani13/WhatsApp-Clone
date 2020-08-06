import 'package:flutter/material.dart';
import 'package:flutter_assignment/components/rounded_button.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'homepage.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Hexcolor('155CB0'),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        50, MediaQuery.of(context).size.height * .1, 0, 0),
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Icon(
                              Icons.keyboard_backspace,
                              color: Colors.white,
                              size: MediaQuery.of(context).size.height * .05,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        50, MediaQuery.of(context).size.height * .01, 0, 0),
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              'Welcome',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.height * .045,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .02),
                    child: Column(
                      children: <Widget>[
                        Container(
                          //margin: EdgeInsets.only(top:,left: 23, right: 23,),
                          alignment: Alignment.topCenter,
                          height: MediaQuery.of(context).size.height * .76,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(29.0),
                              topRight: Radius.circular(29.0),
                            ),
                          ),
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 50),
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Center(
                                              child: Text(
                                                'Welcome Back',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            .04,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          'Hello there, sign in to continue',
                                          style: TextStyle(
                                              color: Hexcolor('ABABAB'),
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .016,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Text(
                                              'Username or Email',
                                              style: TextStyle(
                                                  color: Hexcolor('BDBDBD'),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Container(
                                              child: TextField(
                                                keyboardType:
                                                    TextInputType.emailAddress,
                                                textAlign: TextAlign.center,
                                                onChanged: (value) {
                                                  email = value;
                                                },
                                                decoration: InputDecoration(
                                                  hintText:
                                                      'Enter your Username or Email',
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 10.0,
                                                          horizontal: 20.0),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10.0)),
                                                  ),
                                                  fillColor: Colors.red,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color:
                                                            Colors.blueAccent,
                                                        width: 1.0),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                20.0)),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color:
                                                            Colors.blueAccent,
                                                        width: 2.0),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                20.0)),
                                                  ),
                                                ),
                                              ),
                                              width: 300,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Text(
                                              'Password',
                                              style: TextStyle(
                                                  color: Hexcolor('BDBDBD'),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Container(
                                              child: TextField(
                                                obscureText: true,
                                                textAlign: TextAlign.center,
                                                onChanged: (value) {
                                                  password = value;
                                                },
                                                decoration: InputDecoration(
                                                  hintText:
                                                      'Enter your password',
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 10.0,
                                                          horizontal: 20.0),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10.0)),
                                                  ),
                                                  fillColor: Colors.red,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color:
                                                            Colors.blueAccent,
                                                        width: 1.0),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                20.0)),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color:
                                                            Colors.blueAccent,
                                                        width: 2.0),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                20.0)),
                                                  ),
                                                ),
                                              ),
                                              width: 300,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          'Forgot Password?',
                                          style: TextStyle(
                                              color: Hexcolor('155CB0'),
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    RoundedButton(
                                        title: 'Sign in',
                                        colour: Hexcolor('155CB0'),
                                        onPressed: () async {
                                          showSpinner = true;
                                          final user = await _auth
                                              .signInWithEmailAndPassword(
                                                  email: email,
                                                  password: password);
                                          if (user != null) {
                                            final user1 =
                                                await _auth.currentUser();
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomePage(
                                                        user: user1,
                                                      )),
                                            );

                                            setState(() {
                                              showSpinner = false;
                                            });
                                          }
                                        }),
                                    SizedBox(
                                      height: 40,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Center(
                                          child: Row(
                                            children: <Widget>[
                                              SizedBox(
                                                width: 25,
                                              ),
                                              Text('Already have an account? ',
                                                  style: TextStyle(
                                                    color: Hexcolor('ABABAB'),
                                                    fontSize: 14,
                                                  )),
                                              FlatButton(
                                                child: Text(
                                                  'Sign Up',
                                                  style: TextStyle(
                                                      color: Hexcolor('155CB0'),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            SignIn()),
                                                  );
                                                },
                                                color: Colors.white,
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
