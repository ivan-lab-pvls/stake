import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stake_lounge/router/router.dart';

class BottomLinks extends StatelessWidget {
  const BottomLinks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CupertinoButton(
          child: Text(
            'Terms of Use',
            style: TextStyle(
                color: Colors.white.withOpacity(0.4), fontFamily: 'Roboto'),
          ),
          onPressed: () => context.router.push(const TermsOfUseRoute()),
        ),
        Text(
          ' / ',
          style: TextStyle(
              color: Colors.white.withOpacity(0.4), fontFamily: 'Roboto'),
        ),
        CupertinoButton(
          child: Text(
            'Privacy Policy',
            style: TextStyle(
                color: Colors.white.withOpacity(0.4), fontFamily: 'Roboto'),
          ),
          onPressed: () => context.router.push(const PrivacyPolicyRoute()),
        ),
      ],
    );
  }
}
