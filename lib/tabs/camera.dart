import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class Camera extends StatefulWidget {
  final List<CameraDescription> cameras;

  Camera(this.cameras);

  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  CameraController controller;
  int flag = 0;

  @override
  void initState() {
    super.initState();
    controller =
        new CameraController(widget.cameras[0], ResolutionPreset.medium);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  void _capture() {
    controller.takePicture("");
  }

  void _change() {
    if (flag == 0) {
      flag = 1;
      controller =
          new CameraController(widget.cameras[1], ResolutionPreset.medium);
      controller.initialize().then((_) {
        if (!mounted) {
          return;
        }
        setState(() {});
      });
    } else {
      flag = 0;
      controller =
          new CameraController(widget.cameras[0], ResolutionPreset.medium);
      controller.initialize().then((_) {
        if (!mounted) {
          return;
        }
        setState(() {});
      });
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return new Container();
    }
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new AspectRatio(
          aspectRatio: controller.value.aspectRatio,
          child: new CameraPreview(controller),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FlatButton(
                    onPressed: () => {},
                    child: new Icon(Icons.flash_off,
                        color: Colors.white, size: 30),
                  ),
                  FlatButton(
                    onPressed: _capture,
                    child: new Icon(
                      Icons.panorama_fish_eye,
                      color: Colors.white,
                      size: 95,
                    ),
                  ),
                  FlatButton(
                    onPressed: _change,
                    child: new Icon(
                      Icons.party_mode,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
              new Center(
                child: Text(
                  "Hold for video, tap for photo",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    );
    // return Text("CAMERA");
  }
}
