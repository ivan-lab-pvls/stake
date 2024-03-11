import 'dart:io';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stake_lounge/const.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stake_lounge/features/profile/setup/view/profile_setup_screen.dart';

class ImageWidgetSetup extends StatelessWidget {
  final Uint8List? image;
  const ImageWidgetSetup({
    super.key,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        child: image == null
            ? Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(radius)),
                width: 114,
                height: 114,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/onboarding/image.svg'),
                    const Text(
                      'Add image',
                      style:
                          TextStyle(color: accentColor, fontFamily: 'Roboto'),
                    )
                  ],
                ),
              )
            : ClipRRect(
                borderRadius: BorderRadius.all(radius),
                child: Image.memory(
                  image!,
                  width: 114,
                  height: 114,
                  fit: BoxFit.cover,
                ),
              ),
        onPressed: () => showOptions(context));
  }

  showOptions(BuildContext context) => showCupertinoModalPopup(
        context: context,
        builder: (context) => CupertinoActionSheet(
          actions: [
            CupertinoActionSheetAction(
              onPressed: () async {
                context.router.pop();
                final ImagePicker picker = ImagePicker();
                final XFile? pickedImage =
                    await picker.pickImage(source: ImageSource.camera);
                if (pickedImage != null) {
                  profilePictureController
                      .updateProfilePicture(await pickedImage.readAsBytes());
                }
              },
              child: const Text('Camera'),
            ),
            CupertinoActionSheetAction(
              onPressed: () async {
                context.router.pop();
                final ImagePicker picker = ImagePicker();
                final XFile? pickedImage =
                    await picker.pickImage(source: ImageSource.gallery);
                if (pickedImage != null) {
                  profilePictureController
                      .updateProfilePicture(await pickedImage.readAsBytes());
                }
              },
              child: const Text('Library'),
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            onPressed: () => context.router.pop(),
            child: const Text('Cancel'),
          ),
        ),
      );
}
