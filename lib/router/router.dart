import 'dart:io';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stake_lounge/features/food/selection/selection.dart';
import 'package:stake_lounge/main.dart';

import '../data/news.dart';
import '../data/product.dart';
import '../features/cart/view/cart_screen.dart';
import '../features/cart/view/cart_wrapper.dart';
import '../features/cart/view/order_placed_screen.dart';
import '../features/food/category/category.dart';
import '../features/food/category/view/category_screen.dart';
import '../features/food/main/view/food_screen.dart';
import '../features/food/product/view/product_screen.dart';
import '../features/food/main/view/food_wrapper.dart';
import '../features/food/selection/view/selection_screen.dart';
import '../features/news/view/news_wrapper.dart';
import '../features/news/view/mobile/news_details.dart';
import '../features/news/view/news_screen.dart';
import '../features/onboarding/view/onboarding_screen.dart';
import '../features/profile/setup/view/profile_setup_screen.dart';
import '../features/profile/main/view/privacy_policy_screen.dart';
import '../features/profile/main/view/profile_screen.dart';
import '../features/profile/main/view/terms_of_use_screen.dart';
import 'tabs_router.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MainRoute.page,
          initial: !isFirstTime!,
          children: [
            AutoRoute(page: FoodWrapperRoute.page, children: [
              AutoRoute(page: FoodRoute.page),
              AutoRoute(page: CategoryRoute.page),
              AutoRoute(page: SelectionRoute.page),
              AutoRoute(page: ProductRoute.page),
            ]),
            AutoRoute(page: NewsWrapperRoute.page, children: [
              AutoRoute(page: NewsRoute.page),
              AutoRoute(page: SingleNewsRoute.page),
            ]),
            AutoRoute(page: CartWrapperRoute.page, children: [
              AutoRoute(page: CartRoute.page),
              AutoRoute(page: OrderPlacedRoute.page),
            ]),
            AutoRoute(page: ProfileRoute.page),
          ],
        ),
        AutoRoute(page: OnboardingRoute.page, initial: isFirstTime!),
        AutoRoute(page: ProfileSetupRoute.page),
        AutoRoute(page: TermsOfUseRoute.page),
        AutoRoute(page: PrivacyPolicyRoute.page),
      ];
}
