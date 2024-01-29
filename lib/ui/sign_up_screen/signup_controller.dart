import 'package:credease/dio_api_handler/api_worker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SignUpController extends GetxController {
  ApiWorker apiWorker = ApiWorker();
  final formKey = GlobalKey<FormState>();
  final emailTC = TextEditingController();
  final mobileTC = TextEditingController();
  final pswrdTC = TextEditingController();
  final confirmpswrdTC = TextEditingController();
  bool isVisible1 = false;
  bool isVisible2 = false;
  bool agree = false;
  String initialCountry = 'IN';
  PhoneNumber number = PhoneNumber(isoCode: 'IN');
  RxBool phnValidator = true.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  updateScreen(String value) {
    update([value]);
  }

/*  login(String from, {BuildContext? context}) async {
    if (from != '1') {
      DialogUtils.showLoader(context!);
    }
    LoginRequest loginRequest = LoginRequest(
      username: userNameTC.text.trim(),
      password: passwordTC.text.trim(),
    );
    print('>>>print ${loginRequest.toJson()}');
    await apiWorker.login(loginRequest).then((value) async {
      if (value.success == true) {
        await SessionManager.setBoolValue("isLogin", true);
        await SessionManager.setLoginResponse(value);
        await SessionManager.getLoginResponse().then((value) {
          print('>>>print login response as saved>>>>    ${value!.toJson()}');
        });
        if (from != '1') {
          DialogUtils.hideLoader();
          Get.snackbar('Successful', '${value.message}',
              snackPosition: SnackPosition.BOTTOM, colorText: primaryBlue);
        }
        clearAll(from);
      } else {
        if (from != '1') {
          DialogUtils.hideLoader();
          Get.snackbar('Unsuccessful', '${value.message}',
              snackPosition: SnackPosition.BOTTOM, colorText: primaryBlue);
        }
      }
    });
  }*/

  clearAll(String from) async {
    mobileTC.clear();
    Get.delete<SignUpController>();
    //Get.offAndToNamed(AppRoutes.home);
  }
}