import 'package:flutter/cupertino.dart';
import 'package:stake_lounge/const.dart';

class CustomContainerBottom extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  const CustomContainerBottom({
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
        borderRadius: BorderRadius.only(topLeft: radius, topRight: radius),
      ),
      width: double.infinity,
      child: child,
    );
  }
}
