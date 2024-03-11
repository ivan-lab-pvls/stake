import 'dart:io';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stake_lounge/features/food/selection/selection.dart';
import 'package:stake_lounge/main.dart';

import '../data/news.dart';
import '../data/product.dart';
import '../features/cart/cart_screen.dart';
import '../features/cart/cart_wrapper.dart';
import '../features/cart/order_placed_screen.dart';
import '../features/food/category/category.dart';
import '../features/food/category/category_screen.dart';
import '../features/food/main/food_screen.dart';
import '../features/food/product/product_screen.dart';
import '../features/food/main/food_wrapper.dart';
import '../features/food/selection/selection_screen.dart';
import '../features/news/news_wrapper.dart';
import '../features/news/mobile/news_details.dart';
import '../features/news/news_screen.dart';
import '../features/onboarding/onboarding_screen.dart';
import '../features/profile/setup/profile_setup_screen.dart';
import '../features/profile/main/privacy_policy_screen.dart';
import '../features/profile/main/profile_screen.dart';
import '../features/profile/main/terms_of_use_screen.dart';
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
