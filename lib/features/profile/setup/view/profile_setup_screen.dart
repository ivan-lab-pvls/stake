import 'dart:io';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stake_lounge/const.dart';
import 'package:stake_lounge/data/hive/box.dart';
import 'package:stake_lounge/data/user.dart';
import 'package:stake_lounge/features/profile/main/view/profile_screen.dart';
import 'package:stake_lounge/shared/widgets/custom_button.dart';
import 'package:stake_lounge/features/profile/setup/widgets/image_widget_setup.dart';
import 'package:stake_lounge/features/profile/setup/widgets/name_section.dart';
import 'package:stake_lounge/router/router.dart';
import 'package:stake_lounge/shared/widgets/custom_container_top.dart';

final nameController = TextEditingController();
final profilePictureController = ProfilePictureController();

@RoutePage()
class ProfileSetupScreen extends StatelessWidget {
  final String? name;
  final Uint8List? imageFile;

  const ProfileSetupScreen({super.key, this.name, this.imageFile});

  @override
  Widget build(BuildContext context) {
    nameController.text = name ?? '';
    profilePictureController.updateProfilePicture(imageFile);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomContainerTop(
                  child: GetBuilder(
                    init: profilePictureController,
                    builder: (_) {
                      if (profilePictureController.image != null) {
                        return ImageWidgetSetup(
                            image: profilePictureController.image);
                      } else {
                        return const ImageWidgetSetup();
                      }
                    },
                  ),
                ),
                whiteSpace,
                const NameSection(),
              ],
            ),
            GetBuilder(
              init: profilePictureController,
              builder: (_) => Align(
                alignment: Alignment.bottomCenter,
                child: CustomButton(
                  title: user.isNotEmpty ? 'Done' : 'Get started',
                  onPressed: (profilePictureController.image != null &&
                          nameController.text != '')
                      ? (p0) async {
                          if (name == null) {
                            final prefs = await SharedPreferences.getInstance();
                            await prefs.setBool('isFirstTime', false);
                            final image = profilePictureController.image!;
                            user.put(nameController.text,
                                User(nameController.text, image));
                            context.router.replace(const MainRoute());
                          } else {
                            final image = profilePictureController.image!;
                            user.deleteAt(0);
                            user.put(nameController.text,
                                User(nameController.text, image));
                            profileController.update();
                            context.router.pop();
                          }
                        }
                      : null,
                  color: accentColor,
                  textColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilePictureController extends GetxController {
  Uint8List? image;
  updateProfilePicture(Uint8List? newImageFile) {
    image = newImageFile;
    update();
  }
}
