import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travel_bucket_list_6/main.dart';

class ImageInput extends StatefulWidget {
  ImageInput({super.key});

  @override
  State<ImageInput> createState() {
    return ImageInputState();
  }
}

class ImageInputState extends State<ImageInput> {
  File? _selectedImage;

  void takePicture(int choice) async {
    final imagePicker = ImagePicker();
    final pickedImage;
    if (choice == 1) {
      pickedImage = await imagePicker.pickImage(
          source: ImageSource.camera, maxWidth: 600);
    } else {
      pickedImage = await imagePicker.pickImage(
          source: ImageSource.gallery, maxWidth: 600);
    }

    if (pickedImage == null) {
      return;
    }
    _selectedImage = File(pickedImage.path);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Widget actionButtons = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton.icon(
          style: TextButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(
                    20)), // Set border radius to zero for a rectangle
              ),
              backgroundColor: Color.fromARGB(100, 0, 0, 0)),
          icon: const Icon(Icons.camera_alt),
          label: const Text("Camera"),
          onPressed: () {
            takePicture(1);
          },
        ),
        TextButton.icon(
          style: TextButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(
                    20)), // Set border radius to zero for a rectangle
              ),
              backgroundColor: Color.fromARGB(100, 0, 0, 0)),
          icon: const Icon(Icons.photo),
          label: const Text("Gallery"),
          onPressed: () {
            takePicture(2);
          },
        ),
      ],
    );

    Widget content = Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("Add an Image!",style: Theme.of(context).textTheme.titleMedium,), Expanded(child: actionButtons)],
      ),
    );

    if (_selectedImage != null) {
      content = Stack(children: [
        Image.file(
          _selectedImage!,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Center(child: actionButtons)
      ]);
    }

    return (Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(border: Border.all()),
        child: content));
  }
}
