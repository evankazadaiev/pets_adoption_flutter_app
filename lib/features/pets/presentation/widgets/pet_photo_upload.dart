import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as sysPaths;

import '../../../../gen/assets.gen.dart';

class PetPhotoUpload extends StatelessWidget {
  final TextFieldBloc<dynamic> textFieldBloc;

  const PetPhotoUpload({required this.textFieldBloc});

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
          builder: (ctx) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: const Icon(Icons.camera_alt),
                    title: const Text("Camera"),
                    onTap: () => Navigator.of(ctx).pop(ImageSource.camera),
                  ),
                  ListTile(
                    leading: const Icon(Icons.image),
                    title: const Text("Gallery"),
                    onTap: () => Navigator.of(ctx).pop(ImageSource.gallery),
                  ),
                ],
              ));
    }
  }

  Future<void> _takePicture(
      BuildContext context, TextFieldBlocState fieldState) async {
    if (context.mounted) {
      final ImageSource? source = await _showImageSource(context);

      if (source == null) {
        return;
      }

      final ImagePicker picker = ImagePicker();
      final XFile? photo =
          await picker.pickImage(source: source, maxWidth: 600);

      if (photo != null) {
        final photoFile = File(photo.path);

        final appDir = await sysPaths.getApplicationDocumentsDirectory();
        final fileName = path.basename(photoFile.path);
        final savedImage = await photoFile.copy('${appDir.path}/$fileName');
        textFieldBloc.updateValue(savedImage.path);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TextFieldBloc, TextFieldBlocState>(
      bloc: textFieldBloc,
      builder: (ctx, state) {
        return Column(
          children: [
            CircleAvatar(
                radius: 38.0,
                backgroundColor: Colors.white,
                backgroundImage: textFieldBloc.value != ''
                    ? FileImage(File(textFieldBloc.value))
                        as ImageProvider<Object>
                    : AssetImage(Assets.images.footprint.path)),
            TextButton.icon(
                icon: const Icon(Icons.add_a_photo),
                onPressed: () => _takePicture(ctx, state),
                label: const Text(
                  "Add a pet photo",
                ))
          ],
        );
      },
    );
  }
}
