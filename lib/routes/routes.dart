import 'package:credease/general_binding/common_binding.dart';
import 'package:credease/ui/home/home_screen.dart';
import 'package:credease/ui/home_main/home_main.dart';
import 'package:credease/ui/login_screen/login_screen.dart';
import 'package:credease/ui/otp_verify_screen/otp_verify_screen.dart';
import 'package:credease/ui/sign_up_screen/signup_screen.dart';
import 'package:credease/ui/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String initialRoutes = "/";
  static const String splash = "/splash";
  static const String signUp = "/signUp";
  static const String login = "/login";
  static const String otpVerify = "/otpVerify";
  static const String homeMain = "/homeMain";
  static const String homeScreen = "/homeScreen";


  static List<GetPage<dynamic>> get generateRoutes => [
        GetPage(name: splash, page: () => SplashScreen(), binding: CommonBinding()),
        GetPage(name: signUp, page: () => SignUpScreen(), binding: CommonBinding()),
        GetPage(name: login, page: () => LoginScreen(), binding: CommonBinding()),
        GetPage(name: otpVerify, page: () => OtpVerifyScreen(), binding: CommonBinding()),
        GetPage(name: homeMain, page: () => HomeMain(), binding: CommonBinding()),
        GetPage(name: homeScreen, page: () => HomeScreen(), binding: CommonBinding()),
      ];
}
