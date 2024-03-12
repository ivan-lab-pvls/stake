import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stake_lounge/const.dart';
import 'package:stake_lounge/features/settings/widgets/settings_section.dart';

final profileController = ProfileController();

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Container(
        color: scaffoldColor,
        child: SafeArea(
          child: Container(
            color: Colors.white,
            child: const SettingsSection(),
          ),
        ),
      ),
    );
  }
}

class ProfileController extends GetxController {}
