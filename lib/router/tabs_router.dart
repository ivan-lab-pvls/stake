import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stake_lounge/const.dart';
import 'package:stake_lounge/router/router.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        FoodRoute(),
        NewsRoute(),
        CartRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 50,
          elevation: 50,
          selectedItemColor: accentColor,
          currentIndex: tabsRouter.activeIndex,
          onTap: (value) {
            tabsRouter.setActiveIndex(value);
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/food0.svg'),
              activeIcon: SvgPicture.asset('assets/icons/food1.svg'),
              label: 'Food',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/news0.svg'),
              activeIcon: SvgPicture.asset('assets/icons/news1.svg'),
              label: 'News',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/cart0.svg'),
              activeIcon: SvgPicture.asset('assets/icons/cart1.svg'),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/profile0.svg'),
              activeIcon: SvgPicture.asset('assets/icons/profile1.svg'),
              label: 'Profile',
            ),
          ],
        );
      },
    );
  }
}
