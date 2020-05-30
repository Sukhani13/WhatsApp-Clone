import 'package:flutter/material.dart';
import '../model/chat_messages.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView.builder(
        itemCount: dummylist.length,
        itemBuilder: (context, int index) => new Column(
          children: <Widget>[
            new ListTile(
              leading: new CircleAvatar(
                backgroundColor: Colors.black,
              ),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    dummylist[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  new Text(
                    dummylist[index].time,
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 5),
                child: new Text(
                  dummylist[index].message,
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            ),
            new Divider(
              indent: 70,
              endIndent: 15,
              height: 12,
              thickness: 0.5,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Colors.lightGreenAccent[400],
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () => print("New Text Message"),
      ),
    );
  }
}
