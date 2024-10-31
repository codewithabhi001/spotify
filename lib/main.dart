import 'package:flutter/material.dart';
import 'package:spotify/nextsplash.dart';
import 'splashscreen.dart';
import 'nextsplash.dart';
import 'choosemode.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/choosemode',
        routes: {
          '/splash': (context) => const SplashScreen(),
          '/nextsplash': (context) => const Nextsplash(),
          '/choosemode': (context) => const Choosemode(),
        });
  }
}
