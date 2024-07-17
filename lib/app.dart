import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/features/authentication/screens/onboarding/onboarding_screen.dart';
// My Imports
import 'package:my_project/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
