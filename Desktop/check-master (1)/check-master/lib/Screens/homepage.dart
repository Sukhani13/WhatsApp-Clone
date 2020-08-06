import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_assignment/Screens/Screen1.dart';

final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

class HomePage extends StatefulWidget {
  final FirebaseUser user;

  HomePage({Key key, @required this.user})
      : assert(user != null || user == null),
        super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("Sign out"),
            onPressed: () {
              _firebaseAuth.signOut();
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Screen1()));
            },
          ),
          Center(
              //child: Text(user.phoneNumber),
              ),
        ],
      ),
    );
  }
}
