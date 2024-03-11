import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stake_lounge/const.dart';

class SettingsItem extends StatelessWidget {
  final String title;
  final String assetPath;
  final Function(BuildContext) onPressed;

  const SettingsItem({
    super.key,
    required this.title,
    required this.assetPath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (ctx) {
      return CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: () => onPressed(ctx),
        child: Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: accentColor.withOpacity(0.14),
                      borderRadius: const BorderRadius.all(radius),
                    ),
                    child: SvgPicture.asset(assetPath),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: secondaryColor.withOpacity(0.4),
              )
            ],
          ),
        ),
      );
    });
  }
}
