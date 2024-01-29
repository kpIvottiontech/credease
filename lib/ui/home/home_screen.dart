import 'dart:io';
import 'package:credease/components/common_size/common_hight_width.dart';
import 'package:credease/components/common_size/nk_font_size.dart';
import 'package:credease/components/common_size/nk_spacing.dart';
import 'package:credease/components/my_common_container.dart';
import 'package:credease/components/my_regular_text.dart';
import 'package:credease/themes/color/colors.dart';
import 'package:credease/ui/home/home_controller.dart';
import 'package:credease/ui/home/widget/appbar/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController = Get.put(HomeController());

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        id: 'home',
        init: HomeController(),
        builder: (home) {
          return Container(
            color: white,
            child: SafeArea(
              child: Scaffold(
                backgroundColor: white,
                appBar:  KpAppBar(
                  //backgroundColor: Colors.yellow,
                    isBack: false,
                    title: 'Welcome',
                    name: 'Kinjal Patani',
                    isLogo: true,
                ),
                body: myBody(home),
              ),
            ),
          );
        });
  }

  Widget myBody(HomeController home) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimensions.instance!.width / 40),
        child: Column(
          children: [
            kPSmallSizeBox(),
            MyCommnonContainer(
              height: AppDimensions.instance!.height / 4.5,
              width: AppDimensions.instance!.width,
              borderRadius: 12,
              border: Border.all(color: primaryColor, width: 0.5),
              //color: Colors.yellow,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/banner.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            kPMediumSizeBox(
              height: AppDimensions.instance!.height / 20,
            ),
            myContainer(label: homeController.label[0], image: 'assets/images/account_receivable.png', color: homeController.label[0] == homeController.selectedValue? white: primaryColor,index: 0),
            kPMediumSizeBox(),
            myContainer(label: homeController.label[1], image: 'assets/images/legal_notice.png', color: homeController.label[1] == homeController.selectedValue? white: primaryColor,index: 1),
          ]
        ),
      )
    );
  }

  Widget myContainer({String? label, String? image,Color? color,int? index}) {
    return MyCommnonContainer(
      width: AppDimensions.instance!.width,
      borderRadius: 12,
      color: homeController.label[index!] == homeController.selectedValue?primaryColor:containerColor1,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: AppDimensions.instance!.height / 80),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                image.toString(),
                color: color,
                height: AppDimensions.instance!.height / 11,
                width: AppDimensions.instance!.height / 11,
              )
            ),
            kPMediumSizeBox(width: AppDimensions.instance!.width / 16),
            MyRegularText(label: label.toString(),
              fontSize: NkFontSize.regularFont(regularFont: 17),
              color: color,
              fontWeight: FontWeight.bold,
              align: TextAlign.start,
            )
          ],
        ),
      )
    );
  }

}
