import 'package:credease/components/common_size/common_hight_width.dart';
import 'package:credease/components/common_size/nk_font_size.dart';
import 'package:credease/components/common_size/nk_spacing.dart';
import 'package:credease/components/my_common_container.dart';
import 'package:credease/components/my_regular_text.dart';
import 'package:credease/components/my_theme_button.dart';
import 'package:credease/themes/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KpAppBar extends PreferredSize {
  final Widget? appBarChild;
  final Size? appBarSize;
  final String title;
  final String name;
  final Color? backgroundColor;
  final void Function()? onBackTap;
  final void Function()? onCartTap;
  final void Function()? onEditTap;
  final bool? isLogo;
  final bool? isEditProfile;
  final bool? isBack;
  final double? width;

  KpAppBar(
      {super.key,
      this.appBarChild,
      this.appBarSize,
      required this.title,
      required this.name,
      this.backgroundColor,
      this.isLogo = false,
      this.isEditProfile = false,
        this.width,
      this.isBack = false,
      this.onBackTap,
      this.onCartTap,
      this.onEditTap,
      })
      : super(
            child: Container(),
            preferredSize: appBarSize ??
                Size.fromHeight(AppDimensions.instance!.height / 13));

  @override
  Widget get child => PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        padding: kPRegularPadding(top:6,bottom: 6),
        decoration: BoxDecoration(
          color: backgroundColor ?? white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: greyColor.withOpacity(0.2),
                blurRadius: 4.0,
                offset: Offset(0.0, 0.75))
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDimensions.instance!.width / 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  appBarChild ??
                      MyRegularText(
                        label: title,
                        fontWeight: FontWeight.bold,
                        align: TextAlign.left,
                        fontSize: NkFontSize.regularFont(regularFont: 17),
                        color: primaryColor,
                      ),
                      MyRegularText(
                        label: name,
                        fontWeight: FontWeight.w500,
                        align: TextAlign.left,
                        fontSize: NkFontSize.regularFont(regularFont: 12),
                        color: primaryColor,
                      ),
                ],
              ),
              isLogo == true
                  ? logoIcon
                  : SizedBox()
            ],
          ),
        ),
      ));

  Widget get backIcon => MyCommnonContainer(
      height: AppDimensions.instance!.height * 0.035,
      width: AppDimensions.instance!.height * 0.035,
      child: Image.asset('assets/images/left_arrow.png'));

  Widget get logoIcon =>  MyCommnonContainer(
    height: AppDimensions.instance!.height / 13.3,
    width: AppDimensions.instance!.height / 13.3,
    color: Colors.transparent,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Image.asset(
        'assets/images/logo.png',
        fit: BoxFit.cover,
      ),
    ),
  );

  Widget get editProfile => Align(
    alignment: Alignment.centerRight,
    child: MyThemeButton(
      buttonText: 'Edit',
      color: primaryColor,
      fontColor: white,
      fontSize: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      height: AppDimensions.instance!.height / 28,
      width: AppDimensions.instance!.width / 7,
      padding: EdgeInsets.zero,
    ),
  );
}
