import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stake_lounge/const.dart';
import 'package:stake_lounge/data/hive/box.dart';
import 'package:stake_lounge/data/product.dart';
import 'package:stake_lounge/data/user.dart';
import 'package:stake_lounge/features/food/category/category.dart';
import 'package:stake_lounge/firebase_options.dart';
import 'package:stake_lounge/router/router.dart';

bool? isFirstTime;
String? privacyPolicy;
String? termsOfUse;
String? promotion;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: App.currentPlatform);
  final remoteConfig = FirebaseRemoteConfig.instance;
  await remoteConfig.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(seconds: 25),
    minimumFetchInterval: const Duration(seconds: 25),
  ));
  await remoteConfig.fetchAndActivate();

  final SharedPreferences prefs = await SharedPreferences.getInstance();
  isFirstTime = prefs.getBool('isFirstTime') ?? true;

  await Hive.initFlutter();
  Hive.registerAdapter(ProductAdapter());
  Hive.registerAdapter(CategoryAdapter());
  Hive.registerAdapter(UserAdapter());
  cart = await Hive.openBox('cart');
  user = await Hive.openBox('user');

  privacyPolicy = remoteConfig.getString("privacy_policy");
  termsOfUse = remoteConfig.getString("terms_of_use");
  promotion = remoteConfig.getString("promotion");

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
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
