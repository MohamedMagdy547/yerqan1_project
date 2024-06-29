import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:yerqan1_project/app/app_images/app_images.dart';
import 'package:yerqan1_project/ui/bad_result/bad_result.dart';
import 'package:yerqan1_project/ui/good_result/good_result.dart';

class UploadScreen extends StatefulWidget {
  @override
  _UploadScreenState createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  bool _isFileUploaded = false;
  String _fileName = 'baby.png'; // Placeholder file name
  String _uploadDate = DateFormat('dd.MM.yy hh:mm a')
      .format(DateTime.now()); // Current date and time

  void _uploadFile() {
    // Placeholder function to simulate file upload
    setState(() {
      _isFileUploaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 60),
            const Text("Upload Baby Image",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Center(
                    child: DottedBorder(
                      dashPattern: [8, 4],
                      strokeWidth: 2,
                      color: const Color.fromARGB(255, 101, 237, 244),
                      child: Container(
                        width: double.infinity,
                        color: const Color.fromARGB(255, 223, 240, 245),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Icon(Icons.cloud_upload, size: 50),
                              const Text(
                                'Drag and drop your baby image here',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                              const SizedBox(height: 36),
                              ElevatedButton(
                                onPressed: _uploadFile,
                                child: const Text(
                                  'Upload',
                                  style: TextStyle(color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    fixedSize: const Size(200, 30),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)))

                                    // Button color
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            if (_isFileUploaded)
              UploadedImagePreview(
                  fileName: _fileName, uploadDate: _uploadDate),
            const Spacer(),
            const DividerWithText(text: 'OR'),
            const Spacer(),
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.only(bottom: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.camera_alt,
                        color: Colors.blue,
                      )),
                  TextButton(
                    onPressed: () {
                      // Open camera
                    },
                    child: const Text(
                      'Open Camera',
                      style: TextStyle(color: Colors.black),
                    ),
                    // style: ElevatedButton.styleFrom(
                    //     // backgroundColor: Colors.blue,
                    //     // Button color
                    //     ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DividerWithText extends StatelessWidget {
  final String text;

  // ignore: use_super_parameters
  const DividerWithText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Expanded(
          child: Divider(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(text),
        ),
        const Expanded(
          child: Divider(),
        ),
      ],
    );
  }
}

class UploadedImagePreview extends StatelessWidget {
  final String fileName;
  final String uploadDate;

  const UploadedImagePreview(
      {Key? key, required this.fileName, required this.uploadDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        const SizedBox(height: 8),
        const Text(
          "My Upload",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ImageThumbnail(),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(fileName,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 9, 9, 9), fontSize: 10)),
                    Text(uploadDate,
                        style: const TextStyle(color: Colors.grey, fontSize: 8)),
                  ],
                ),
              ),
              ButtonBar(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const BadResult(),));

                    },
                    child: const Text('View'),
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue, // Text color
                        elevation: 2, // Shadow
                        fixedSize: const Size(80, 5),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        padding: const EdgeInsets.all(3)),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      // Delete image
                    },
                    child: const Text(
                      'Delete',
                      style: TextStyle(fontSize: 12),
                    ),
                    style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.black,
                        side: const BorderSide(color: Colors.black),
                        fixedSize: const Size(80, 5),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        padding: const EdgeInsets.all(3)
// Border color
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ImageThumbnail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Image.asset(
        AppImage.babyPhoto, // Sample image URL
        fit: BoxFit.cover,
      ),
    );
  }
}
