import 'package:flutter/material.dart';

class MyStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: new CircleAvatar(
        backgroundColor: Colors.black,
        child: Icon(
          Icons.add,
          color: Colors.green,
        ),
      ),
      title: new Text(
        "Me",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Container(
        padding: EdgeInsets.only(top: 5),
        child: new Text(
          "Tap to add status update",
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ),
    );
  }
}
