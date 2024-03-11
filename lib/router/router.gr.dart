// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CartRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CartScreen(),
      );
    },
    CartWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CartWrapperScreen(),
      );
    },
    CategoryRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CategoryScreen(
          key: args.key,
          category: args.category,
        ),
      );
    },
    FoodRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FoodScreen(),
      );
    },
    FoodWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FoodWrapperScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainScreen(),
      );
    },
    NewsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewsScreen(),
      );
    },
    NewsWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewsWrapperScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingScreen(),
      );
    },
    OrderPlacedRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrderPlacedScreen(),
      );
    },
    PrivacyPolicyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PrivacyPolicyScreen(),
      );
    },
    ProductRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProductScreen(
          key: args.key,
          product: args.product,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    ProfileSetupRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileSetupRouteArgs>(
          orElse: () => const ProfileSetupRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfileSetupScreen(
          key: args.key,
          name: args.name,
          image: args.image,
        ),
      );
    },
    PromotionRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PromotionScreen(),
      );
    },
    SelectionRoute.name: (routeData) {
      final args = routeData.argsAs<SelectionRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SelectionScreen(
          key: args.key,
          selection: args.selection,
        ),
      );
    },
    SingleNewsRoute.name: (routeData) {
      final args = routeData.argsAs<SingleNewsRouteArgs>(
          orElse: () => const SingleNewsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SingleNewsScreen(
          key: args.key,
          news: args.news,
        ),
      );
    },
    TermsOfUseRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TermsOfUseScreen(),
      );
    },
  };
}

/// generated route for
/// [CartScreen]
class CartRoute extends PageRouteInfo<void> {
  const CartRoute({List<PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CartWrapperScreen]
class CartWrapperRoute extends PageRouteInfo<void> {
  const CartWrapperRoute({List<PageRouteInfo>? children})
      : super(
          CartWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CategoryScreen]
class CategoryRoute extends PageRouteInfo<CategoryRouteArgs> {
  CategoryRoute({
    Key? key,
    required Category category,
    List<PageRouteInfo>? children,
  }) : super(
          CategoryRoute.name,
          args: CategoryRouteArgs(
            key: key,
            category: category,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static const PageInfo<CategoryRouteArgs> page =
      PageInfo<CategoryRouteArgs>(name);
}

class CategoryRouteArgs {
  const CategoryRouteArgs({
    this.key,
    required this.category,
  });

  final Key? key;

  final Category category;

  @override
  String toString() {
    return 'CategoryRouteArgs{key: $key, category: $category}';
  }
}

/// generated route for
/// [FoodScreen]
class FoodRoute extends PageRouteInfo<void> {
  const FoodRoute({List<PageRouteInfo>? children})
      : super(
          FoodRoute.name,
          initialChildren: children,
        );

  static const String name = 'FoodRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FoodWrapperScreen]
class FoodWrapperRoute extends PageRouteInfo<void> {
  const FoodWrapperRoute({List<PageRouteInfo>? children})
      : super(
          FoodWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'FoodWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewsScreen]
class NewsRoute extends PageRouteInfo<void> {
  const NewsRoute({List<PageRouteInfo>? children})
      : super(
          NewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewsWrapperScreen]
class NewsWrapperRoute extends PageRouteInfo<void> {
  const NewsWrapperRoute({List<PageRouteInfo>? children})
      : super(
          NewsWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnboardingScreen]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OrderPlacedScreen]
class OrderPlacedRoute extends PageRouteInfo<void> {
  const OrderPlacedRoute({List<PageRouteInfo>? children})
      : super(
          OrderPlacedRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderPlacedRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PrivacyPolicyScreen]
class PrivacyPolicyRoute extends PageRouteInfo<void> {
  const PrivacyPolicyRoute({List<PageRouteInfo>? children})
      : super(
          PrivacyPolicyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PrivacyPolicyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductScreen]
class ProductRoute extends PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    Key? key,
    required Product product,
    List<PageRouteInfo>? children,
  }) : super(
          ProductRoute.name,
          args: ProductRouteArgs(
            key: key,
            product: product,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductRoute';

  static const PageInfo<ProductRouteArgs> page =
      PageInfo<ProductRouteArgs>(name);
}

class ProductRouteArgs {
  const ProductRouteArgs({
    this.key,
    required this.product,
  });

  final Key? key;

  final Product product;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileSetupScreen]
class ProfileSetupRoute extends PageRouteInfo<ProfileSetupRouteArgs> {
  ProfileSetupRoute({
    Key? key,
    String? name,
    Uint8List? image,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileSetupRoute.name,
          args: ProfileSetupRouteArgs(
            key: key,
            name: name,
            image: image,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileSetupRoute';

  static const PageInfo<ProfileSetupRouteArgs> page =
      PageInfo<ProfileSetupRouteArgs>(name);
}

class ProfileSetupRouteArgs {
  const ProfileSetupRouteArgs({
    this.key,
    this.name,
    this.image,
  });

  final Key? key;

  final String? name;

  final Uint8List? image;

  @override
  String toString() {
    return 'ProfileSetupRouteArgs{key: $key, name: $name, image: $image}';
  }
}

/// generated route for
/// [PromotionScreen]
class PromotionRoute extends PageRouteInfo<void> {
  const PromotionRoute({List<PageRouteInfo>? children})
      : super(
          PromotionRoute.name,
          initialChildren: children,
        );

  static const String name = 'PromotionRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SelectionScreen]
class SelectionRoute extends PageRouteInfo<SelectionRouteArgs> {
  SelectionRoute({
    Key? key,
    required Selection selection,
    List<PageRouteInfo>? children,
  }) : super(
          SelectionRoute.name,
          args: SelectionRouteArgs(
            key: key,
            selection: selection,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectionRoute';

  static const PageInfo<SelectionRouteArgs> page =
      PageInfo<SelectionRouteArgs>(name);
}

class SelectionRouteArgs {
  const SelectionRouteArgs({
    this.key,
    required this.selection,
  });

  final Key? key;

  final Selection selection;

  @override
  String toString() {
    return 'SelectionRouteArgs{key: $key, selection: $selection}';
  }
}

/// generated route for
/// [SingleNewsScreen]
class SingleNewsRoute extends PageRouteInfo<SingleNewsRouteArgs> {
  SingleNewsRoute({
    Key? key,
    News? news,
    List<PageRouteInfo>? children,
  }) : super(
          SingleNewsRoute.name,
          args: SingleNewsRouteArgs(
            key: key,
            news: news,
          ),
          initialChildren: children,
        );

  static const String name = 'SingleNewsRoute';

  static const PageInfo<SingleNewsRouteArgs> page =
      PageInfo<SingleNewsRouteArgs>(name);
}

class SingleNewsRouteArgs {
  const SingleNewsRouteArgs({
    this.key,
    this.news,
  });

  final Key? key;

  final News? news;

  @override
  String toString() {
    return 'SingleNewsRouteArgs{key: $key, news: $news}';
  }
}

/// generated route for
/// [TermsOfUseScreen]
class TermsOfUseRoute extends PageRouteInfo<void> {
  const TermsOfUseRoute({List<PageRouteInfo>? children})
      : super(
          TermsOfUseRoute.name,
          initialChildren: children,
        );

  static const String name = 'TermsOfUseRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
