

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/src/view/screen/auth/login.dart';
import 'package:shop/src/view/widget/app_colors.dart';
import 'package:shop/src/services/helpers/k_Text.dart';
import 'package:shop/src/services/helpers/render_img.dart';
import 'package:shop/src/view/screen/main_screen.dart';
import 'dart:async';


class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

   Timer(Duration(seconds: 3), () => Get.to(LoginPage()));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [

        Image.asset("images/bac.jpg",fit: BoxFit.cover,
        height: MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.width ,),

          Positioned(
            top: 0,
              right: 0,
              left: 0,
              child:  Container(
                height: MediaQuery.of(context).size.height,
                width:MediaQuery.of(context).size.width ,
                  child: Center(child: Image.asset("images/Logo.png",height: 36,width: 162,))))


        ],
      ),
    );
  }
}

