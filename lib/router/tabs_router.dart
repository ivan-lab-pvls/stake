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
        SettingsRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
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
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.settings_rounded,
                color: Color.fromRGBO(215, 215, 215, 1),
              ),
              activeIcon: Icon(
                Icons.settings_rounded,
                color: accentColor,
              ),
              label: 'Settings',
            ),
          ],
        );
      },
    );
  }
}
