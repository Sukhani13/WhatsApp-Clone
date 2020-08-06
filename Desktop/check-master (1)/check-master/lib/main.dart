import 'package:flutter/material.dart';
import 'package:flutter_assignment/Screens/app.dart';

void main() {
  runApp(WelcomeScreen());
}

//class WelcomeScreen extends StatefulWidget {
//  @override
//  _WelcomeScreenState createState() => _WelcomeScreenState();
//}
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: App(),
    );
  }
}

//class _WelcomeScreenState extends State<WelcomeScreen> {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        backgroundColor: Hexcolor('155CB0'),
//        body: Padding(
//          padding: EdgeInsets.fromLTRB(24, 0, 14, 90),
//
//
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.end,
//            crossAxisAlignment: CrossAxisAlignment.stretch,
//            children: <Widget>[
//              Row(
//                children: <Widget>[
//                  Text('Welcome',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
//
//                ],
//              ),
//              SizedBox(height: 15,),
//              Row(
//                children: <Widget>[
//
//                  Text('Manage your Business',style: TextStyle(color: Colors.white,fontSize: 20)),
//
//
//                ],
//              ),
//              Row(
//                children: <Widget>[
//
//                  Text('seamlessly & intuitively',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold)),
//
//
//                ],
//              ),
//              SizedBox(height: 25,),
//              Row(
//                children: <Widget>[
//                  Expanded(
//                    child:
//                        RaisedButton(
//                          shape: RoundedRectangleBorder(
//                              borderRadius: BorderRadius.circular(18.0),
//                              side: BorderSide(color: Colors.white)),
//                          onPressed: () {},
//                          color: Colors.white,
//                          padding: EdgeInsets.all(12.0),
//                          textColor: Hexcolor('155CB0'),
//                          child: Text("Sign in with Google",
//                              style: TextStyle(fontSize: 14)),
//                        ),
//                  ),
//                ],
//              ),
//              SizedBox(height: 10),
//              Row(
//                children: <Widget>[
//                  Expanded(
//                    child: RaisedButton(
//                      shape: RoundedRectangleBorder(
//                          borderRadius: BorderRadius.circular(18.0),
//                          side: BorderSide(color: Colors.white)),
//                      onPressed: () {},
//                      color: Hexcolor('155CB0'),
//                      padding: EdgeInsets.all(12.0),
//                      textColor: Colors.white,
//                      child: Text("Create an Account".toUpperCase(),
//                          style: TextStyle(fontSize: 14)),
//                    ),
//                  ),
//                ],
//
//              ),
//              SizedBox(height: 20,),
//              Row(
//                children: <Widget>[
//                  Center(
//                    child: Row(
//                      children: <Widget>[
//                        SizedBox(width: 90,),
//                        Text('Already have an account? ',style: TextStyle(color: Colors.white,fontSize: 12,)),
//                        FlatButton(
//                          child: Text('Sign in',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
//                          onPressed: (){
//                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()),);
//                          },
//                          color: Hexcolor('155CB0'),
//                        )
//
//                      ],
//                    ),
//                  ),
//
//
//
//                ],
//
//              ),
//            ],
//
//          ),
//        ),
//      ),
//    );
//  }
//}
