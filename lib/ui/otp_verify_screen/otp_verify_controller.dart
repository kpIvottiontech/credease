import 'package:credease/dio_api_handler/api_worker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpVerifyController extends GetxController {
  ApiWorker apiWorker = ApiWorker();
  final otpTC = TextEditingController();

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

}