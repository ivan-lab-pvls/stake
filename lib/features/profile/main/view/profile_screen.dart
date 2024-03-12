import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stake_lounge/const.dart';
import 'package:stake_lounge/features/profile/main/widgets/settings_section.dart';

final profileController = ProfileController();

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: scaffoldColor,
        child: SafeArea(
          child: Container(
            color: Colors.white,
            child: CustomScrollView(
              slivers: [
                const SettingsSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileController extends GetxController {}
