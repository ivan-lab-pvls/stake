import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stake_lounge/const.dart';
import 'package:stake_lounge/data/hive/box.dart';
import 'package:stake_lounge/data/product.dart';
import 'package:stake_lounge/data/user.dart';
import 'package:stake_lounge/features/food/category/category.dart';
import 'package:stake_lounge/router/router.dart';

bool? isFirstTime;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  isFirstTime = prefs.getBool('isFirstTime') ?? true;
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  await Hive.initFlutter();
  Hive.registerAdapter(ProductAdapter());
  Hive.registerAdapter(CategoryAdapter());
  Hive.registerAdapter(UserAdapter());
  cart = await Hive.openBox('cart');
  user = await Hive.openBox('user');
  // user.deleteFromDisk();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
          splashColor: Colors.transparent,
          appBarTheme: const AppBarTheme(
              backgroundColor: secondaryColor,
              iconTheme: IconThemeData(color: accentColor)),
          textSelectionTheme: const TextSelectionThemeData(
            cursorColor: accentColor,
          )),
      routerConfig: _appRouter.config(),
      debugShowCheckedModeBanner: false,
    );
  }
}
