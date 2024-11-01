import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/nextsplash.dart';
import 'package:spotify/registerorsignup.dart';
import 'splashscreen.dart';
import 'choosemode.dart';
import 'counter.dart';
import 'registerorsignup.dart';
import 'signin.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: const Color(0xFF181818)),
      debugShowCheckedModeBanner: false,
      initialRoute: '/counter',
      getPages: [
        GetPage(
          name: '/splash',
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: '/nextsplash',
          page: () => const Nextsplash(),
        ),
        GetPage(
          name: '/choosemode',
          page: () => const Choosemode(),
        ),
        GetPage(
          name: '/registerorsignup',
          page: () => const RegisterOrSignup(),
        ),
        GetPage(
          name: '/signin',
          page: () => const Signin(),
        ),
        GetPage(
          name: '/counter',
          page: () => Counter(),
        ),
      ],
    );
  }
}
