import 'dart:async';
import 'package:credease/components/my_common_container.dart';
import 'package:credease/routes/routes.dart';
import 'package:credease/themes/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLogin = false;


  @override
  void initState() {
   // getIsLogin();
    startTime();
    super.initState();
  }

  startTime() async {
    var duration = const Duration(seconds: 4);
    Timer(duration, getNavigationPage);
  }

  getNavigationPage() {
    if (isLogin) {
     // Get.offAllNamed(AppRoutes.home);
    } else {
      Get.offAllNamed(AppRoutes.login);
    }
  }

/*  getIsLogin() async {
    await SessionManager.getBoolValue("isLogin").then((value) {
      print('>>>print isLogin $value');
      setState(() {
        isLogin = value;
      });
    });
  }*/

  @override
  Widget build(BuildContext context) {
    print('check>>');
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: myBody(),
      ),
    );
  }

  Widget myBody(){
    return MyCommnonContainer(
      color: primaryColor,
      child: Center(child: Padding(
        padding: EdgeInsets.symmetric(horizontal:  MediaQuery.of(context).size.width/3.4),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset('assets/images/logo.png',width: MediaQuery.of(context).size.width,)),
      )),
    );
  }
}
