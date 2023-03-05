import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/view/splash.dart';

import 'services/configs/app_theme.dart';
import 'services/routes/app_router_service.dart';

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
