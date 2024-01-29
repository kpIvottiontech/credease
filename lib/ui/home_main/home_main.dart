import 'package:credease/components/common_size/nk_font_size.dart';
import 'package:credease/components/my_regular_text.dart';
import 'package:credease/components/nk_meatrial_bottom_nav.dart';
import 'package:credease/themes/color/colors.dart';
import 'package:credease/ui/home_main/home_main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeMain extends StatefulWidget {
  HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  HomeMainController homeMainController = Get.find();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('index>>check ${homeMainController.selectedIndex.value}');
    return GetBuilder<HomeMainController>(
      id: 'homeMain',
      init: HomeMainController(),
      builder: (homeMain) {
        return Container(
            color: Colors.white,
            child: SafeArea(
            child: Scaffold(
              backgroundColor: white,
              body: SafeArea(
                  child: homeMain.screenWidgets[homeMain.selectedIndex.value]),
              bottomNavigationBar: KPMaterialBottomNav(
                backgroundColor: primaryLight,
                destinations: List.generate(
                    homeMain.tabData.length,
                    (index) => Padding(
                          padding: const EdgeInsets.only(top: 5.0, bottom: 3.0),
                          child: InkResponse(
                            onTap: () {
                              homeMain.selectedIndex.value = index;
                              print('index>>check ${homeMain.selectedIndex.value}');
                              homeMain.updateScreen('homeMain');
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                homeMain.tabData[index]['icon'],
                                AnimatedSize(
                                    duration: const Duration(milliseconds: 400),
                                    child: SizedBox(
                                        height:
                                            homeMain.selectedIndex.value == index
                                                ? 3
                                                : 0)),
                                MyRegularText(
                                  fontSize: homeMain.selectedIndex.value == index
                                      ? NkFontSize.regularFont(regularFont: 11.5)
                                      : NkFontSize.regularFont(regularFont: 11),
                                  label: homeMain.tabData[index]['title'],
                                  color: homeMain.selectedIndex.value == index
                                      ? primaryColor
                                      : iconColor,
                                  fontWeight: homeMain.selectedIndex.value == index
                                      ? FontWeight.w600
                                      : FontWeight.w500,
                                )
                              ],
                            ),
                          ),
                        )),
                onDestinationSelected: (p0) {},
              ),
            ),
          ),
        );
      },
    );
  }
}
