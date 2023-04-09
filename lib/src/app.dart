import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/view/screen/splash.dart';
import 'view/widget/app_theme.dart';


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      smartManagement: SmartManagement.onlyBuilder,
      theme: AppTheme.appTheme,
      home: SplashPage(),
    // home: CustomNav(),
      // home: HomePage(),
    );
  }
}
