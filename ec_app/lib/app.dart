import 'package:ec_app/features/authentication/screens/onboarding/onboarding.dart';
import 'package:ec_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:ec_app/utils/theme/theme.dart';
import 'package:get/get.dart';

/// -- Use this Class to setup themes, initial bindings, any animations
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      /// Show Loader or Circular Progress Indicator meanwhile Authentication Repository id deciding to show relevant screen
      home: const Scaffold(
        backgroundColor: TColors.primary,
        body: Center(child: CircularProgressIndicator(color: Colors.white,),),
      ),
    );
  }
}