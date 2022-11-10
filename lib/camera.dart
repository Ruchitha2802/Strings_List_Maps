import 'dart:io';

import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

class Camera extends StatefulWidget {
  const Camera({super.key});

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  dynamic _image;

  void pickImage() async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) return;
    setState(() {
      _image = File(image.path);
    });
  }

  void image_gallery() async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;
    setState(() {
      _image = File(image.path);
    });
  }

  // final ImagePicker _picker = ImagePicker();
  //  Future getImage() async{
  //   var image = await _picker.pickImage(source:ImageSource.camera);
  //   setState(() {
  //     _image= image ;
  //   });
  //  }
//    Future<void> getLostData() async {
//   final LostDataResponse response = await _picker.retrieveLostData();
//   if (response.isEmpty) {
//     return;
//   }
//   if (response.files != null) {
//     for (final XFile file in response.files) {
//       _handleFile(file);
//     }
//   } else {
//     _handleError(response.exception);
//   }
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Select")),
      ),
      body: Column(
       mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        
        children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          
            child: Icon(Icons.camera_rear),
            onPressed: () {
              pickImage();
            }),
      ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              child: Icon(Icons.image),
              onPressed: (){
                image_gallery();
              }),
          ),
      // ElevatedButton(onPressed: (){
      //   pickImage();
      // }, child: Text("Select Image",
      //  )
      // ),
      if (_image != null)
        Image.file(
          _image,
          width: double.infinity,
          height: 400,
          fit: BoxFit.cover,
        )
        ],
      ),
    );
  }
}
