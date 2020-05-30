import 'package:flutter/material.dart';
import '../additional/calls_info.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CallInfo(),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Colors.lightGreenAccent[400],
        child: new Icon(
          Icons.add_call,
          color: Colors.white,
        ),
        onPressed: () => print("New Call"),
      ),
    );
  }
}
