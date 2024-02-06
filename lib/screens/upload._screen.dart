import 'dart:developer';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:image_picker/image_picker.dart';

class upload_screen extends StatefulWidget {
  const upload_screen({super.key});

  @override
  State<upload_screen> createState() => _upload_screenState();
}

class _upload_screenState extends State<upload_screen> {
  File? profilepic;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 2, 2),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageIcon(
              AssetImage(
                'assets/netflix.png',
              ),
              color: Colors.red,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              'Image Picker ',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                XFile? selectedImage =
                    await ImagePicker().pickImage(source: ImageSource.gallery);

                if (selectedImage != null) {
                  File ConvertedFile = File(selectedImage.path);

                  setState(() {
                    profilepic = ConvertedFile;
                  });

                  log('Image selected');
                } else {
                  log('No image selectedd');
                }
              },
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.red,
                backgroundImage:
                    (profilepic != null) ? FileImage(profilepic!) : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
