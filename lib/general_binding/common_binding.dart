import 'package:credease/dio_api_handler/api_worker.dart';
import 'package:credease/ui/home/home_controller.dart';
import 'package:credease/ui/home_main/home_main_controller.dart';
import 'package:credease/ui/login_screen/login_controller.dart';
import 'package:credease/ui/otp_verify_screen/otp_verify_controller.dart';
import 'package:credease/ui/sign_up_screen/signup_controller.dart';
import 'package:get/get.dart';

class CommonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApiWorker());
    Get.lazyPut(() => SignUpController());
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => OtpVerifyController());
    Get.lazyPut(() => HomeMainController());
    Get.lazyPut(() => HomeController());
  }
}
