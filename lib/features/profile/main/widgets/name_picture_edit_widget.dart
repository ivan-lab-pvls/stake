import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:stake_lounge/const.dart';
import 'package:stake_lounge/data/hive/box.dart';
import 'package:stake_lounge/router/router.dart';
import 'package:stake_lounge/shared/custom_container.dart';

class ProfilePictureAndNameWidget extends StatelessWidget {
  const ProfilePictureAndNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(radius),
              child: Image.memory(
                user.getAt(0).image,
                width: 52,
                height: 52,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              user.getAt(0).name,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ],
        ),
        CupertinoButton(
          padding: EdgeInsets.zero,
          child: const Text(
            'Edit',
            style: TextStyle(
              color: accentColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          onPressed: () => context.router.push(ProfileSetupRoute(
              name: user.getAt(0).name, image: user.getAt(0).image)),
        )
      ],
    ));
  }
}
