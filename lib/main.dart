import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'tabs/call_screen.dart';
import 'tabs/camera.dart';
import 'tabs/chat_screen.dart';
import 'tabs/status_screen.dart';

List<CameraDescription> cameras;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Whatsapp Clone",
      theme:
          new ThemeData(primarySwatch: Colors.teal, accentColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Whatsapp"),
          actions: <Widget>[
            new Icon(Icons.search),
            new Padding(
              padding: EdgeInsets.only(right: 13),
            ),
            new Icon(Icons.more_vert),
            new Padding(
              padding: EdgeInsets.only(right: 8),
            ),
          ],
          bottom: new TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.camera_alt),
              ),
              new Tab(
                text: "CHATS",
              ),
              new Tab(
                text: "STATUS",
              ),
              new Tab(
                text: "CALLS",
              ),
            ],
          ),
        ),
        body: new TabBarView(
          controller: _tabController,
          children: <Widget>[
            new Camera(cameras),
            new ChatScreen(),
            new StatusScreen(),
            new CallScreen(),
          ],
        ),
      ),
    );
  }
}
