import 'package:flutter/cupertino.dart';
import 'package:stake_lounge/const.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets? customPadding;
  const CustomContainer({
    super.key,
    required this.child,
    this.customPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: customPadding ?? padding,
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(radius),
      ),
      child: child,
    );
  }
}
