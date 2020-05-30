import 'package:flutter/material.dart';
import '../model/status.dart';

class ViewedUpdates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemCount: 2,
      itemBuilder: (context, int index) => new Column(
        children: <Widget>[
          (index == 0)
              ? new Container(
                  padding: EdgeInsets.symmetric(vertical: 6, horizontal: 14),
                  width: double.infinity,
                  height: 25,
                  child: new Text(
                    "Viewed Updates",
                    style: TextStyle(fontSize: 12),
                  ),
                  color: Colors.grey[300],
                )
              : ListView.separated(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: viewedUpdates.length,
                  itemBuilder: (context, int index) => new ListTile(
                    leading: new CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 22,
                      child: new CircleAvatar(
                        backgroundColor: Colors.black,
                      ),
                    ),
                    title: new Text(
                      viewedUpdates[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Container(
                      padding: EdgeInsets.only(top: 5),
                      child: new Text(
                        viewedUpdates[index].time,
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) => new Divider(
                    indent: 70,
                    endIndent: 15,
                    height: 8,
                    thickness: 0.5,
                  ),
                ),
        ],
      ),
    );
  }
}
