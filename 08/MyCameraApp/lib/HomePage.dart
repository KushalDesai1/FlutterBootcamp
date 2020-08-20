import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PickedFile _image;
  ImagePicker _picker = ImagePicker();

  Future openCamera() async {
    try {
      var image = await _picker.getImage(source: ImageSource.camera);
      setState(() {
        _image = image;
      });
    } catch (e) {
      print('Error Message: ' + e.toString());
    }
  }

  Future openGallery() async {
    var picture = await _picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image = picture;
    });
  }

  Future<void> _optionsDialogBox(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.blue,
            shape: StadiumBorder(),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text(
                      'Take a picture',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    onTap: openCamera,
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  GestureDetector(
                    child: Text(
                      'Select image from Gallery',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    onTap: openGallery,
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera App'),
      ),
      body: Center(
        child: _image == null ? Text('No Image') : Image.file(File(_image.path))
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _optionsDialogBox(context);
        },
        child: Icon(Icons.add_a_photo),
        tooltip: 'Open Camera',
      ),
    );
  }
}
