import 'package:credease/components/common_size/common_hight_width.dart';
import 'package:credease/components/common_size/nk_font_size.dart';
import 'package:credease/components/my_common_container.dart';
import 'package:credease/components/my_regular_text.dart';
import 'package:credease/components/my_theme_button.dart';
import 'package:credease/routes/routes.dart';
import 'package:credease/themes/color/colors.dart';
import 'package:credease/ui/login_screen/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginController loginController = Get.find();

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
    return GetBuilder<LoginController>(
        id: 'login',
        init: LoginController(),
        builder: (login) {
          return Scaffold(
            backgroundColor: white,
            body: SingleChildScrollView(
              child:
              Form(
                key: login.formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Container(
                  height: AppDimensions.instance!.height,
                  child: Stack(
                    children: [
                      Container(
                        height: AppDimensions.instance!.height / 3,
                        color: primaryColor,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: AppDimensions.instance!.height / 14),
                          child: topContainer(),
                        ),
                      ),
                      Positioned(
                          top: AppDimensions.instance!.height / 4,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: loginBody(login)),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }

  Widget topContainer() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimensions.instance!.width / 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MyRegularText(label: 'Login', color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          MyCommnonContainer(
             height: AppDimensions.instance!.height / 9,
            width: AppDimensions.instance!.height / 9,
            color: Colors.transparent,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget loginBody(LoginController login) {
    return Container(
      width: AppDimensions.instance!.width,
      // height: AppDimensions.instance!.height / 10,
      decoration: const BoxDecoration(
          color: white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        )
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimensions.instance!.width / 18),
        child: Column(
          children: [
            SizedBox(
              height: AppDimensions.instance!.height /12,
            ),
            formFieldWidget(login),
            SizedBox(
              height: AppDimensions.instance!.height / 26,
            ),
            loginBtn(login),
            SizedBox(
              height: AppDimensions.instance!.height / 50,
            ),
            registerText(),

          ],
        ),
      ),
    );
  }

  formFieldWidget(LoginController login) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        MyRegularText(
          fontSize: NkFontSize.regularFont(regularFont: 15.6),
          label: 'Enter Mobile Number and Login*',
          fontWeight: FontWeight.w500,
          color: primaryTextColor,
        ),
        SizedBox(
          height: AppDimensions.instance!.height / 30,
        ),
        Obx(() =>  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MyCommnonContainer(
              padding: EdgeInsets.symmetric(
                  horizontal: AppDimensions.instance!.width / 40),
              color: white,
              borderRadius: 10,
              border: Border.all(color:login.phnValidator.value? primaryTextFieldColor: errorColor, width: 1),
              child: InternationalPhoneNumberInput(
                onInputChanged: (PhoneNumber number) {
                  print(number.phoneNumber);
                },
                validator: (p0) {
                  print('On Validator: $p0');
                  if(p0 == null || p0.isEmpty){
                    login.phnValidator.value = false;
                    print('phnValidator: ${login.phnValidator.value}');
                  }else{
                    login.phnValidator.value = true;
                    print('phnValidator: ${login.phnValidator.value}');
                  }
                  return null;
                },
                errorMessage: 'Enter a mobile number',
                selectorButtonOnErrorPadding: 10,
                onInputValidated: (bool value) {
                  print(value);
                },
                selectorConfig: SelectorConfig(
                  selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                ),
                ignoreBlank: true,
                maxLength: 10,
                textStyle: TextStyle(color: primaryTextColor, fontSize: 16),
                autoValidateMode: AutovalidateMode.disabled,
                selectorTextStyle:
                TextStyle(color: primaryTextColor, fontSize: 14),
                initialValue: login.number,
                inputDecoration: InputDecoration(
                  hintStyle:
                  TextStyle(color: primaryTextFieldColor, fontSize: 14),
                  hintText: 'Mobile Number',
                  border: InputBorder.none,
                ),
                textFieldController: login.mobileTC,
                formatInput: false,
                keyboardType: const TextInputType.numberWithOptions(
                    signed: false, decimal: false),
                inputBorder: InputBorder.none,
                spaceBetweenSelectorAndTextField: 0,
                onSaved: (PhoneNumber number) async {
                  print('On Saved: $number');
                  if (!RegExp(r'^[0-9]{10}$').hasMatch(login.mobileTC.text) && login.mobileTC.text.isNotEmpty) {
                    Get.snackbar('Wrong', 'Enter a valid 10-digit number',
                        snackPosition: SnackPosition.BOTTOM,
                        colorText: primaryColor,
                        backgroundColor: primaryColor.withOpacity(0.2));
                  }else if(login.mobileTC.text.isNotEmpty){
                    print('>>> next screen >>>');
                    Get.toNamed(AppRoutes.otpVerify);
                  }else{
                    print('>>> mobileTC is empty >>>');
                  }
                },
              ),
            ),
            login.phnValidator == false?
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: MyRegularText(label: 'Please enter a mobile number', color: errorColor,fontSize: 12,),
                )
              ],
            ) : SizedBox(),
          ],
        ),),
        SizedBox(
          height: AppDimensions.instance!.height / 90,
        ),
      ],
    );
  }

  Widget registerText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MyRegularText(
            label: 'Don\u0027t have an account?',
            fontSize: 13,
            color: primaryTextColor.withOpacity(0.8),
            fontWeight: FontWeight.w400),
        GestureDetector(
            onTap: () {
              Get.offAndToNamed(AppRoutes.signUp);
            },
            child: MyRegularText(
                label: ' Sign Up',
                fontSize: 13,
                color: primaryColor,
                fontWeight: FontWeight.w500)),
      ],
    );
  }

  Widget loginBtn(LoginController login) {
    return MyThemeButton(
      onPressed: () {
        if (login.formKey.currentState!.validate()) {
          login.formKey.currentState?.save();
          //login.login('0',context: context);
        }
      },
      buttonText: 'Request OTP',
      color: primaryColor,
      fontColor: white,
      fontSize: 13,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      height: AppDimensions.instance!.height / 16,
      width: AppDimensions.instance!.width,
      padding: EdgeInsets.zero,
    );
  }
}
