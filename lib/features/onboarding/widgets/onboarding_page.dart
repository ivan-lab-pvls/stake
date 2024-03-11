import 'package:flutter/material.dart';
import 'package:stake_lounge/const.dart';

class OnboardingPage extends StatelessWidget {
  final String title;
  final String content;
  final String assetPath;

  const OnboardingPage({
    super.key,
    required this.title,
    required this.content,
    required this.assetPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Opacity(
                opacity: 0.5,
                child: Image.asset(
                  assetPath,
                ),
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(fontWeight: FontWeight.w700, color: Colors.white),
              ),
            ],
          ),
          Text(
            content,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w500,
                color: Colors.white.withOpacity(0.4)),
          ),
        ],
      ),
    );
  }
}
