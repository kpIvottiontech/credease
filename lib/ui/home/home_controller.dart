import 'package:credease/dio_api_handler/api_worker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  ApiWorker apiWorker = ApiWorker();
  List<String> label = ['Account Receivable', 'Legal Notice', 'Financing', 'Community'];
  String selectedValue = '';

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
