import 'package:flutter/material.dart';
import 'package:flutter_assignment/Screens/otp_verify.dart';
import 'package:flutter_assignment/Screens/sign_in.dart';
import 'package:flutter_assignment/components/rounded_button.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:firebase_auth/firebase_auth.dart';

// ignore: camel_case_types
class Sign_Up extends StatefulWidget {
  Sign_Up({Key key}) : super(key: key);
  @override
  _Sign_UpState createState() => _Sign_UpState();
}

// ignore: camel_case_types
class _Sign_UpState extends State<Sign_Up> {
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;
  String email;
  String password;
  // ignore: non_constant_identifier_names
  String mobile_number;
  bool checkboxValue = false;
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
                              size: MediaQuery.of(context).size.height * .045,
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
                              'Create Account',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                  MediaQuery.of(context).size.height * .04,
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
                          height: MediaQuery.of(context).size.height * .77,
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
                              Padding(padding: EdgeInsets.symmetric(horizontal: 50),
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(height: 10,),
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Center(
                                              child:Text(
                                                'Welcome',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                        .04,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Row(
                                      children: <Widget>[
                                        Text('Hello there, sign up to continue',
                                          style: TextStyle(
                                              color: Hexcolor('ABABAB'),
                                              fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                                  .016,
                                              fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Text('Name',style: TextStyle(color: Hexcolor('BDBDBD'),fontWeight: FontWeight.bold),),
                                          ],
                                        )

                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Container(
                                              child: TextField(
                                                keyboardType: TextInputType.text,
                                                textAlign: TextAlign.center,
                                                onChanged: (value) {

                                                },
                                                decoration: InputDecoration(
                                                  hintText: 'Enter your Business Name',
                                                  contentPadding:
                                                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),

                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                                  ),
                                                  fillColor: Colors.red,

                                                  enabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                                                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                                                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                                  ),
                                                ),


                                              ),
                                              width: 300,
                                            ),



                                          ],
                                        )

                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Text('Email',style: TextStyle(color: Hexcolor('BDBDBD'),fontWeight: FontWeight.bold),),
                                          ],
                                        )

                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Container(
                                              child: TextField(
                                                keyboardType: TextInputType.emailAddress,
                                                textAlign: TextAlign.center,
                                                onChanged: (value) {
                                                  email=value;

                                                },
                                                decoration: InputDecoration(
                                                  hintText: 'Enter your Business Email',
                                                  contentPadding:
                                                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),

                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                                  ),
                                                  fillColor: Colors.red,

                                                  enabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                                                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                                                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                                  ),
                                                ),


                                              ),
                                              width: 300,
                                            ),



                                          ],
                                        ),


                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Text('Mobile Number',style: TextStyle(color: Hexcolor('BDBDBD'),fontWeight: FontWeight.bold),),
                                          ],
                                        )

                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Container(
                                              child: TextField(
                                                keyboardType: TextInputType.phone,
                                                textAlign: TextAlign.center,
                                                onChanged: (value) {
                                                  mobile_number = value;

                                                },
                                                decoration: InputDecoration(
                                                  hintText: 'XXXXXXXXXX',
                                                  contentPadding:
                                                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),

                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                                  ),
                                                  fillColor: Colors.red,

                                                  enabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                                                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                                                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                                  ),
                                                ),


                                              ),
                                              width: 300,
                                            ),



                                          ],
                                        )

                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Text('Password',style: TextStyle(color: Hexcolor('BDBDBD'),fontWeight: FontWeight.bold),),
                                          ],
                                        )

                                      ],
                                    ),
                                    SizedBox(height: 5,),
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
                                                  hintText: 'Enter your password',
                                                  contentPadding:
                                                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),

                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                                  ),
                                                  fillColor: Colors.red,

                                                  enabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                                                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                                                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                                  ),
                                                ),


                                              ),
                                              width: 300,
                                            ),



                                          ],
                                        )

                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    CheckboxListTile(
                                  value: checkboxValue,
                                  onChanged: (val) {
                                    if (checkboxValue == false) {
                                      setState(() {
                                        checkboxValue = true;
                                      });
                                    } else if (checkboxValue == true) {
                                      setState(() {
                                        checkboxValue = false;
                                      });
                                    }
                                  },
                                  subtitle: !checkboxValue
                                      ? Text(
                                    'Required.',
                                    style: TextStyle(color: Colors.red),
                                  )
                                      : null,
                                  title: new Text(
                                    'By creating an account you agree to our terms and conditions.',
                                    style: TextStyle(fontSize: 14.0),
                                  ),
                                  controlAffinity: ListTileControlAffinity.leading,
                                  activeColor: Colors.green,
                                ),
                                    SizedBox(height: 0,),
                                    RoundedButton(title: 'Sign Up',
                                        colour: Hexcolor('155CB0'),

                                        onPressed: () async {
                                          setState(() {
                                            showSpinner = true;
                                          });
                                          try{
                                            final newUser=await _auth.createUserWithEmailAndPassword(email: email, password: password);
                                            if(newUser!=null)
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        OtpVerify(
                                                          mobileNumber: mobile_number,

                                                        ),
                                                  ));


                                            setState(() {
                                              showSpinner=false;
                                            });
                                         }

                                          catch(e){
                                            print(e);
                                          }
                                        }


                                    ),

                                    SizedBox(height: 0,),
                                    Row(
                                      children: <Widget>[
                                        Center(
                                          child: Row(
                                            children: <Widget>[
                                              SizedBox(width: 25,),
                                              Text('Already have an account? ',style: TextStyle(color: Hexcolor('ABABAB'),fontSize: 14,)),
                                              FlatButton(
                                                child: Text('Sign in',style: TextStyle(color: Hexcolor('155CB0'),fontSize: 14,fontWeight: FontWeight.bold),),
                                                onPressed: (){
                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()),);
                                                },
                                                color: Colors.white,
                                              )

                                            ],
                                          ),
                                        ),



                                      ],

                                    ),

                                  ],
                                ),),

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
