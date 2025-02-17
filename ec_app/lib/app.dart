import 'package:flutter/material.dart';
import 'package:ec_app/utils/theme/theme.dart';

/// -- Use this Class to setup themes, initial bindings, any animations
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
    );
  }
}