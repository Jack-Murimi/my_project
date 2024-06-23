import 'package:flutter/material.dart';
import 'package:my_project/features/auth/login/pages/login_page.dart';
import 'package:my_project/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      home: const LoginPage(),
    );
  }
}
