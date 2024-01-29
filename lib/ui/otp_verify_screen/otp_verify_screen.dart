import 'package:credease/components/common_size/common_hight_width.dart';
import 'package:credease/components/common_size/nk_spacing.dart';
import 'package:credease/components/my_common_container.dart';
import 'package:credease/components/my_regular_text.dart';
import 'package:credease/components/my_theme_button.dart';
import 'package:credease/routes/routes.dart';
import 'package:credease/themes/color/colors.dart';
import 'package:credease/ui/login_screen/login_controller.dart';
import 'package:credease/ui/otp_verify_screen/otp_verify_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class OtpVerifyScreen extends StatefulWidget {
  const OtpVerifyScreen({super.key});

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {
  OtpVerifyController otpVerifyController = Get.find();
  LoginController loginController = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OtpVerifyController>(
        id: 'otpVerify',
        init: OtpVerifyController(),
        builder: (otpVerify) {
          return Container(
            color: white,
            child: SafeArea(
              child: Scaffold(
                backgroundColor: white,
                appBar: AppBar(
                  backgroundColor: white,
                  elevation: 0,
                  leading: GestureDetector(
                    onTap: (){
                      Get.back();
                    },
                    child: Padding(
                      padding: EdgeInsets.all(AppDimensions.instance!.height / 50),
                      child: SvgPicture.asset('assets/images/svg/back.svg',height: 14,width: 14),
                    ),
                  ),
                  centerTitle:  false,
                  title: MyRegularText(
                    label: 'OTP',
                    color: primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )
                ),
                body: myBody(otpVerify),
              ),
            ),
          );
        });
  }

  Widget myBody(OtpVerifyController otpVerify) {
    return SingleChildScrollView(
      child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: AppDimensions.instance!.height / 10,
          ),
          imageContainer(),
          SizedBox(
            height: AppDimensions.instance!.height / 23,
          ),
          verificationText(),
          SizedBox(
            height: AppDimensions.instance!.height / 18,
          ),
          verifyField(otpVerify),
          SizedBox(
            height: AppDimensions.instance!.height / 18,
          ),
          submitBtn(otpVerify),
          SizedBox(
            height: AppDimensions.instance!.height / 12,
          ),
          //loginBody(login),
        ],
      ),
    );
  }

  Widget imageContainer(){
    return Center(
      child: MyCommnonContainer(
        height: AppDimensions.instance!.height / 5.6,
        width: AppDimensions.instance!.height / 5.6,
        color: Colors.transparent,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget verificationText(){
    return Column(
      children: [
        MyRegularText(
          label: 'Verification Code',
          color: primaryTextColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        kPMediumSizeBox(
          height: AppDimensions.instance!.height / 60,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'We have sent you a verification code\non your mobile no. ',
                style: TextStyle(
                  color: secondaryTextColor.withOpacity(0.9),
                  fontSize: 13.5,
                  fontWeight: FontWeight.w600,
                  height: 1.4,
                  letterSpacing: 0.5
                ),
              ),
              TextSpan(
                text: '+91 ${loginController.mobileTC.text}',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 13.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        )

      ],
    );
  }

  Widget verifyField(OtpVerifyController otpVerify){
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimensions.instance!.width / 10),
      child: Pinput(
        controller: otpVerify.otpTC,
        androidSmsAutofillMethod:
        AndroidSmsAutofillMethod.smsRetrieverApi,
        defaultPinTheme: PinTheme(
          width: AppDimensions.instance!.height / 13,
          height: AppDimensions.instance!.height / 13,
          textStyle: const TextStyle(
              fontSize: 20,
              color: primaryTextColor,
              fontWeight: FontWeight.w600),
          decoration: BoxDecoration(
            color: containerColor,
            //  border: Border.all(color: textFieldBorderColor),
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                color: primaryColor.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 1),
              )
            ],
          ),
        ),
        focusedPinTheme: PinTheme(
          width: AppDimensions.instance!.height / 13,
          height: AppDimensions.instance!.height / 13,
          textStyle: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600),
          decoration: BoxDecoration(
            color: containerColor,
            //  border: Border.all(color: textFieldBorderColor),
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                color: primaryColor.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0, 1),
              )
            ],
            //  border: Border.all(color: textFieldBorderColor),
          ),
        ),
        enableSuggestions: true,
        keyboardType: TextInputType.number,
        onChanged: (value) {
          print('onChanged: $value');
          if (value == "123456") {}
        },
        length: 4,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        errorText: "Invalid OTP!",
        forceErrorState: false,
        errorTextStyle: const TextStyle(color: errorColor),
        onSubmitted: (value) {
          print('onSubmitted: $value');
          if (value == "123456") {}
        },
        onCompleted: (pin) {
          otpVerify.otpTC.text = pin;
          print('onCompleted: $pin');
        },
      ),
    );
  }

  Widget submitBtn(OtpVerifyController otpVerify){
    return MyThemeButton(
      onPressed: () {
        if(otpVerify.otpTC.text != ""){
           Get.offAndToNamed(AppRoutes.homeMain);
         // authentication.verifyOTP();
        }else{
          Get.snackbar('Alert', 'Please Enter OTP First!!!',
              snackPosition: SnackPosition.BOTTOM,
              colorText: primaryColor,
              backgroundColor: primaryColor.withOpacity(0.2));
        }
      },
      buttonText: 'Submit',
      color: primaryColor,
      fontColor: white,
      fontSize: 14.2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      height: AppDimensions.instance!.height / 16,
      width: AppDimensions.instance!.width/1.2,
      padding: EdgeInsets.zero,
    );
  }
}
