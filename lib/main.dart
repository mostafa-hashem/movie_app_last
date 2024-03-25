import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/firebase_options.dart';
import 'package:untitled1/home_layout/home_layout.dart';
import 'package:untitled1/provider/my_app_provider.dart';
import 'package:untitled1/screens/splash_screen.dart';
import 'package:untitled1/shared/my_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) => MyAppProvider(), child: const MyApp(),),);
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemeData.themeData,
      home: const SplashScreen(),
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeLayout.routeName: (context) => const HomeLayout(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
