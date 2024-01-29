import 'package:credease/components/common_size/common_hight_width.dart';
import 'package:credease/dio_api_handler/api_worker.dart';
import 'package:credease/themes/color/colors.dart';
import 'package:credease/ui/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeMainController extends GetxController {
  ApiWorker apiWorker = ApiWorker();

  RxInt selectedIndex = 0.obs;
  int index = 0;
  // AddressController addressController = Get.find();

  @override
  void onInit() {
   /* addressController.getCountry();
    addressController.getStates();*/
    super.onInit();
   // updateScreen('homeMain');
  }

  final List<Widget> screenWidgets = [
    HomeScreen(),
    Placeholder(),
    Placeholder(),
    Placeholder(),
  ];

  getArguments(){
    print('check ${Get.arguments}');
    selectedIndex.value = Get.arguments ?? 0;
   // updateScreen('homeMain');
  }

  List<Map<String, dynamic>> get tabData => [
        {
          'icon': SvgPicture.asset('assets/images/svg/home.svg',
              color: selectedIndex.value == 0 ?  primaryColor : iconColor,
              height:selectedIndex.value == 0 ? AppDimensions.instance!.height / 37: AppDimensions.instance!.height / 37,
              width: selectedIndex.value == 0 ?AppDimensions.instance!.height / 35: AppDimensions.instance!.height / 35),
          'title': 'Home',
        },
        {
          'icon':  SvgPicture.asset('assets/images/svg/contact_us.svg',
              color: selectedIndex.value == 1 ? primaryColor : iconColor,
              height:selectedIndex.value == 1 ? AppDimensions.instance!.height / 37: AppDimensions.instance!.height / 37,
              width: selectedIndex.value == 1 ?AppDimensions.instance!.height / 35: AppDimensions.instance!.height / 35),
          'title': 'My Booking',
        },
        {
          'icon': SvgPicture.asset('assets/images/svg/referral.svg',
              color: selectedIndex.value == 2 ? primaryColor : iconColor,
              height:selectedIndex.value == 2 ? AppDimensions.instance!.height / 37: AppDimensions.instance!.height / 37,
              width: selectedIndex.value == 2 ?AppDimensions.instance!.height / 34: AppDimensions.instance!.height / 35),
          'title': 'Blogs',
        },
        {
          'icon': SvgPicture.asset('assets/images/svg/profile.svg',
              color: selectedIndex.value == 3 ? primaryColor : iconColor,
              height:selectedIndex.value == 3 ? AppDimensions.instance!.height / 37: AppDimensions.instance!.height / 37,
              width: selectedIndex.value == 3 ?AppDimensions.instance!.height / 34: AppDimensions.instance!.height / 35),
          'title': 'My Account',
        },
      ];

  updateScreen(String value) {
    update([value]);
  }
}
