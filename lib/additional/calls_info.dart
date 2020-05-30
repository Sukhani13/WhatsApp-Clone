import 'package:flutter/material.dart';
import '../model/calls.dart';

class CallInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        itemCount: incoming.length,
        separatorBuilder: (context, index) {
          return Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: new ListTile(
                      leading: new CircleAvatar(
                        backgroundColor: Colors.black,
                      ),
                      title: new Text(
                        outgoing[index].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Row(
                          children: <Widget>[
                            new Icon(
                              Icons.call_received,
                              color: Colors.green,
                              size: 15,
                            ),
                            new Text(
                              outgoing[index].time,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: new Icon(
                      Icons.phone,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              new Divider(
                indent: 70,
                endIndent: 15,
                height: 8,
                thickness: 0.5,
              ),
            ],
          );
        },
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: new ListTile(
                      leading: new CircleAvatar(
                        backgroundColor: Colors.black,
                      ),
                      title: new Text(
                        incoming[index].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Row(
                          children: <Widget>[
                            new Icon(
                              Icons.call_made,
                              color: Colors.green,
                              size: 15,
                            ),
                            new Text(
                              incoming[index].time,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: new Icon(
                      Icons.phone,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              new Divider(
                indent: 70,
                endIndent: 15,
                height: 8,
                thickness: 0.5,
              ),
            ],
          );
        },
      ),
    );
  }
}
