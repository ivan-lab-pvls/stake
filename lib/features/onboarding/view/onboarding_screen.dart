import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stake_lounge/const.dart';
import 'package:stake_lounge/features/onboarding/widgets/bottom_links.dart';
import 'package:stake_lounge/shared/widgets/custom_button.dart';
import 'package:stake_lounge/features/onboarding/widgets/onboarding_page.dart';

import '../../../router/router.dart';

late PageController pageController;
int page = 0;

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: accentColor,
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: pageController,
              children: const [
                OnboardingPage(
                  title:
                      'Welcome to our online ordering app of Stake Lounge Restaurat!',
                  content:
                      'Discover a wide assortment of ready-to-eat dishes and unique delicacies, all available with just a few clicks.',
                  assetPath: 'assets/onboarding/1.png',
                ),
                OnboardingPage(
                  title: 'Great news for food lovers!',
                  content:
                      'Our application combines convenience with a wealth of choices, helping you to enjoy dinners and treats.',
                  assetPath: 'assets/onboarding/2.png',
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(
                  color: Colors.white,
                  textColor: Colors.black,
                  title: 'Next',
                  onPressed: (p0) async {
                    if (page != 1) {
                      pageController.animateToPage(++page,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.ease);
                    } else {
                      final prefs = await SharedPreferences.getInstance();
                      await prefs.setBool('isFirstTime', false);
                      context.router.replace(const MainRoute());
                    }
                  },
                ),
                const BottomLinks(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
