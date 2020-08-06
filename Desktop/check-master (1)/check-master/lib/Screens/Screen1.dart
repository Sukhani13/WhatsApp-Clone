import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'sign_in.dart';
import 'package:hexcolor/hexcolor.dart';
import 'homepage.dart';
import 'sign_up.dart';

void main() {
  runApp(Screen1());
}

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  FirebaseUser user1;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = new GoogleSignIn();

  Future<FirebaseUser> _signIn() async {
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);
    final FirebaseUser user =
        (await _auth.signInWithCredential(credential)).user;
    print("User Name: ${user.displayName}");
    user1 = user;
    return user;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Hexcolor('155CB0'),
      body: Padding(
        padding: EdgeInsets.fromLTRB(24, 0, 14, 90),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'Welcome',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: <Widget>[
                Text('Manage your Business',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ],
            ),
            Row(
              children: <Widget>[
                Text('seamlessly & intuitively',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.white)),
                    onPressed: () async {
                      _signIn()
                          .then((FirebaseUser user) => print(user))
                          .catchError((e) => print(e));

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePage(
                                    user: user1,
                                  )));
                    },
                    color: Colors.white,
                    padding: EdgeInsets.all(12.0),
                    textColor: Hexcolor('155CB0'),
                    child: Text("Sign in with Google",
                        style: TextStyle(fontSize: 14)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.white)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Sign_Up()),
                      );
                    },
                    color: Hexcolor('155CB0'),
                    padding: EdgeInsets.all(12.0),
                    textColor: Colors.white,
                    child: Text("Create an Account".toUpperCase(),
                        style: TextStyle(fontSize: 14)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Center(
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 90,
                      ),
                      Text('Already have an account? ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          )),
                      FlatButton(
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignIn()),
                          );
                        },
                        color: Hexcolor('155CB0'),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//class Screen1 extends StatelessWidget {
//  FirebaseUser user1;
//
//  final FirebaseAuth _auth  = FirebaseAuth.instance;
//  final GoogleSignIn googleSignIn = new GoogleSignIn();
//
//
//  Future<FirebaseUser> _signIn() async{
//    GoogleSignInAccount  googleSignInAccount = await googleSignIn.signIn();
//    GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
//
//    final AuthCredential credential = GoogleAuthProvider.getCredential(
//        idToken: googleSignInAuthentication.idToken,
//        accessToken: googleSignInAuthentication.accessToken
//
//
//    );
//    final FirebaseUser user = (await _auth.signInWithCredential(credential)).user;
//    print("User Name: ${user.displayName}");
//    return user;
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Hexcolor('155CB0'),
//      body: Padding(
//        padding: EdgeInsets.fromLTRB(24, 0, 14, 90),
//
//
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.end,
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          children: <Widget>[
//            Row(
//              children: <Widget>[
//                Text('Welcome',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
//
//              ],
//            ),
//            SizedBox(height: 15,),
//            Row(
//              children: <Widget>[
//
//                Text('Manage your Business',style: TextStyle(color: Colors.white,fontSize: 20)),
//
//
//              ],
//            ),
//            Row(
//              children: <Widget>[
//
//                Text('seamlessly & intuitively',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold)),
//
//
//              ],
//            ),
//            SizedBox(height: 25,),
//            Row(
//              children: <Widget>[
//                Expanded(
//                  child:
//                  RaisedButton(
//                    shape: RoundedRectangleBorder(
//                        borderRadius: BorderRadius.circular(18.0),
//                        side: BorderSide(color: Colors.white)),
//                    onPressed: () async{
//                      _signIn().then((FirebaseUser user)=>print(user)).catchError((e)=>print(e));
//                      if(user1!=null)
//                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
//                    },
//                    color: Colors.white,
//                    padding: EdgeInsets.all(12.0),
//                    textColor: Hexcolor('155CB0'),
//                    child: Text("Sign in with Google",
//                        style: TextStyle(fontSize: 14)),
//                  ),
//                ),
//              ],
//            ),
//            SizedBox(height: 10),
//            Row(
//              children: <Widget>[
//                Expanded(
//                  child: RaisedButton(
//                    shape: RoundedRectangleBorder(
//                        borderRadius: BorderRadius.circular(18.0),
//                        side: BorderSide(color: Colors.white)),
//                    onPressed: () {
//                      Navigator.push(context, MaterialPageRoute(builder: (context) => Sign_up()),);
//                    },
//                    color: Hexcolor('155CB0'),
//                    padding: EdgeInsets.all(12.0),
//                    textColor: Colors.white,
//                    child: Text("Create an Account".toUpperCase(),
//                        style: TextStyle(fontSize: 14)),
//                  ),
//                ),
//              ],
//
//            ),
//            SizedBox(height: 20,),
//            Row(
//              children: <Widget>[
//                Center(
//                  child: Row(
//                    children: <Widget>[
//                      SizedBox(width: 90,),
//                      Text('Already have an account? ',style: TextStyle(color: Colors.white,fontSize: 12,)),
//                      FlatButton(
//                        child: Text('Sign in',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
//                        onPressed: (){
//                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()),);
//                        },
//                        color: Hexcolor('155CB0'),
//                      )
//
//                    ],
//                  ),
//                ),
//
//
//
//              ],
//
//            ),
//          ],
//
//        ),
//      ),
//    );
//  }
//}
