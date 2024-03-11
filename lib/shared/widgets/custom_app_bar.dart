import 'package:flutter/material.dart';
import 'package:stake_lounge/const.dart';

class CustomAppBar extends StatelessWidget {
  final String? title;
  final String assetPath;
  final EdgeInsets? padding;
  final bool? automaticallyImplyLeading;

  const CustomAppBar({
    super.key,
    this.title,
    required this.assetPath,
    this.padding,
    this.automaticallyImplyLeading,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: automaticallyImplyLeading ?? true,
      shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: radius * 2, bottomRight: radius * 2)),
      backgroundColor: scaffoldColor,
      pinned: false,
      floating: false,
      expandedHeight: MediaQuery.of(context).size.height / 10,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: padding,
        centerTitle: false,
        title: Text(
          title ?? '',
          style: const TextStyle(color: Colors.black),
        ),
        background: Padding(
          padding: padding ??
              EdgeInsets.only(left: MediaQuery.of(context).size.width / 3.5),
          child: Image.asset(
            assetPath,
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}
