import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stake_lounge/const.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function(dynamic)? onPressed;
  final Color color;
  final Color textColor;
  final EdgeInsets? customPadding;

  const CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
    required this.color,
    required this.textColor,
    this.customPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: customPadding ?? padding,
      child: Row(
        children: [
          Expanded(
            child: CupertinoButton(
              borderRadius: BorderRadius.all(radius),
              color: color,
              onPressed: onPressed == null ? null : () => onPressed!(1),
              child: Text(
                title,
                style: TextStyle(color: textColor, fontFamily: 'Roboto'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
