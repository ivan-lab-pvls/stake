import 'package:flutter/cupertino.dart';
import 'package:stake_lounge/const.dart';

class CustomContainerTop extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  const CustomContainerTop({
    super.key,
    required this.child,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.zero,
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius:
            BorderRadius.only(bottomLeft: radius, bottomRight: radius),
      ),
      width: double.infinity,
      child: child,
    );
  }
}
