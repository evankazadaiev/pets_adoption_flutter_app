import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PetPhotoUpload extends StatefulWidget {
  final Function onSelectImage;

  const PetPhotoUpload({Key? key, required this.onSelectImage})
      : super(key: key);

  @override
  State<PetPhotoUpload> createState() => _PetPhotoUploadState();
}

class _PetPhotoUploadState extends State<PetPhotoUpload> {
  File? _storedImage;
  // late final ValueChanged<ImageSource> onClicked;

  Future<ImageSource?> _showImageSource(BuildContext context) async {
    if (Platform.isIOS) {
      return showCupertinoModalPopup<ImageSource>(
          context: context,
          builder: (context) => CupertinoActionSheet(
                actions: [
                  CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.of(context).pop(ImageSource.camera);
                      },
                      child: const Text("Camera")),
                  CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.of(context).pop(ImageSource.gallery);
                      },
                      child: const Text("Gallery")),
                ],
              ));
    } else {
      return showModalBottomSheet<ImageSource>(
          context: context,
          builder: (context) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: const Icon(Icons.camera_alt),
                    title: const Text("Camera"),
                    onTap: () => Navigator.of(context).pop(ImageSource.camera),
                  ),
                  ListTile(
                    leading: const Icon(Icons.image),
                    title: const Text("Gallery"),
                    onTap: () => Navigator.of(context).pop(ImageSource.gallery),
                  ),
                ],
              ));
    }
    return null;
  }

  Future<void> _takePicture(BuildContext context) async {
    final ImageSource? source = await _showImageSource(context);

    if (source == null) {
      return;
    }

    print("$source is selected");

    final ImagePicker picker = ImagePicker();
    final XFile? photo = await picker.pickImage(source: source, maxWidth: 600);
    print(photo);
    if (photo != null) {
      final photoFile = File(photo.path);
      setState(() {
        _storedImage = photoFile;
      });

      print(photoFile);
      // final appDir = await sysPaths.getApplicationDocumentsDirectory();
      // final fileName = path.basename(photoFile.path);
      // final savedImage = await photoFile.copy('${appDir.path}/$fileName');
      // widget.onSelectImage(savedImage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.black,
          radius: 40.0,
          child: CircleAvatar(
            radius: 38.0,
            backgroundColor: Colors.white,
            child: ClipOval(
              key: ValueKey(_storedImage?.path),
              child: _storedImage != null
                  ? Image.file(
                      File(_storedImage!.path),
                      fit: BoxFit.cover,
                    )
                  : Image.network(
                      "https://image.shutterstock.com/image-vector/various-bright-basic-geometric-figures-600w-1837202410.jpg",
                      fit: BoxFit.cover,
                    ),
              // child: (_image != null)
              //     ? Image.file(_image)
              //     : Image.asset('images/newimage.png'),
            ),
          ),
        ),
        TextButton.icon(
            icon: const Icon(Icons.add_a_photo),
            onPressed: () => _takePicture(context),
            label: const Text("Add a pet photo"))
      ],
    );
    // return Row(
    //   children: [
    //     Container(
    //       alignment: Alignment.center,
    //       width: 200,
    //       height: 100,
    //       decoration:
    //           BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
    //       child: _storedImage != null
    //           ? Image.file(_storedImage as File,
    //               fit: BoxFit.cover, width: double.infinity)
    //           : const Text(
    //               "No image taken",
    //               textAlign: TextAlign.center,
    //             ),
    //     ),
    //     const SizedBox(
    //       width: 10,
    //     ),
    //     Expanded(
    //         child: ElevatedButton.icon(
    //             icon: const Icon(Icons.camera),
    //             onPressed: _takePicture,
    //             label: const Text("Take picture")))
    //   ],
    // );
  }
}
