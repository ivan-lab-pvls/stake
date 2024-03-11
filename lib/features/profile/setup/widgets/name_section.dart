import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stake_lounge/const.dart';
import 'package:stake_lounge/features/profile/setup/view/profile_setup_screen.dart';
import 'package:stake_lounge/shared/widgets/custom_container.dart';

class NameSection extends StatelessWidget {
  const NameSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: CupertinoTextField(
        onChanged: (value) => profilePictureController.update(),
        padding: padding,
        controller: nameController,
        style: const TextStyle(fontFamily: 'Roboto'),
        placeholder: 'Your name',
        decoration: const BoxDecoration(
            border: null,
            color: Colors.white,
            borderRadius: BorderRadius.all(radius)),
      ),
    );
  }
}
