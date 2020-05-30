import 'package:flutter/material.dart';
import '../additional/status_info.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StatusInfo(),
      floatingActionButton: new Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          new FloatingActionButton(
              backgroundColor: Colors.grey[200],
              child: new Icon(Icons.create),
              mini: true,
              onPressed: null),
          new Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
          ),
          new FloatingActionButton(
              backgroundColor: Colors.lightGreenAccent[400],
              child: new Icon(Icons.camera_alt, color: Colors.white),
              onPressed: null),
        ],
      ),
    );
  }
}
