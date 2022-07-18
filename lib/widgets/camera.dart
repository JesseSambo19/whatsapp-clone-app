import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  File? _image;

  Future getImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      // final imageTemporary = File(image.path);
      final imagePermanent = await saveFilePermanently(image.path);

      setState(() {
        this._image = imagePermanent;
      });
    } on PlatformException catch (e) {
      print("Failed to pick image: $e");
    }
  }

  Future<File> saveFilePermanently(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final image = File('${directory.path}/$name');

    return File(imagePath).copy(image.path);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double _imageWidth = 0;
    double _imageHeight = 0;
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 480) {
        _imageWidth = size.width * 0.5;
        _imageHeight = size.width * 0.5;
      } else if (constraints.maxWidth > 330) {
        _imageWidth = size.width * 0.75;
        _imageHeight = size.width * 0.75;
      } else {
        _imageWidth = size.width * 0.75;
        _imageHeight = size.width * 0.75;
      }
      return ListView(
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                _image != null
                    ? ClipOval(
                        child: Image.file(
                          _image!,
                          width: _imageWidth,
                          height: _imageHeight,
                          fit: BoxFit.cover,
                        ),
                      )
                    : ClipOval(
                        // child: Image.asset(
                        //   "assets/images/profile-pic.jpg",
                        //   width: _imageWidth,
                        //   height: _imageHeight,
                        //   fit: BoxFit.cover,
                        // ),
                        child: Container(
                          decoration: const BoxDecoration(color: Colors.teal),
                          width: _imageWidth,
                          height: _imageHeight,
                          child: Center(
                              child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: _imageWidth - 100,
                          )),
                        ),
                      ),
                // Image.network("https://picsum.photos/250?image=9"),
                const SizedBox(
                  height: 40,
                ),
                CustomButton(
                  title: "Pick from Gallery",
                  icon: Icons.image_outlined,
                  onClick: () => getImage(ImageSource.gallery),
                ),
                CustomButton(
                  title: "Pick from Camera",
                  icon: Icons.camera,
                  onClick: () => getImage(ImageSource.camera),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}

Widget CustomButton({
  required String title,
  required IconData icon,
  required VoidCallback onClick,
}) {
  return SizedBox(
      width: 200, // was 280
      child: ElevatedButton(
        onPressed: onClick,
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(
              width: 20,
            ),
            Text(title),
          ],
        ),
      ));
}
