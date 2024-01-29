import 'package:credease/components/common_size/common_hight_width.dart';
import 'package:credease/components/common_size/nk_font_size.dart';
import 'package:credease/components/my_common_container.dart';
import 'package:credease/components/my_form_field.dart';
import 'package:credease/components/my_regular_text.dart';
import 'package:credease/components/my_theme_button.dart';
import 'package:credease/routes/routes.dart';
import 'package:credease/themes/color/colors.dart';
import 'package:credease/ui/sign_up_screen/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  SignUpController signUpController = Get.find();

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
    return GetBuilder<SignUpController>(
        id: 'signUp',
        init: SignUpController(),
        builder: (signUp) {
          return Scaffold(
            backgroundColor: primaryColor,
            body: SingleChildScrollView(
              child:
              Form(
                key: signUp.formKey,
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
                          top: AppDimensions.instance!.height / 4.5,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: signUpBody(signUp)),
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
          MyRegularText(label: 'Sign Up', color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
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

  Widget signUpBody(SignUpController signUp) {
    return Container(
      width: AppDimensions.instance!.width,
     // height: AppDimensions.instance!.height / 1.292,
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
              height: AppDimensions.instance!.height /20,
            ),
            formFieldWidget(signUp),
            SizedBox(
              height: AppDimensions.instance!.height / 46,
            ),
            signUpBtn(signUp),
            SizedBox(
              height: AppDimensions.instance!.height / 50,
            ),
            registerText(),
            SizedBox(
              height: AppDimensions.instance!.height / 30,
            ),
          ],
        ),
      ),
    );
  }

  formFieldWidget(SignUpController signUp) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        MyRegularText(
          fontSize: NkFontSize.regularFont(regularFont: 15.6),
          label: 'Email*',
          fontWeight: FontWeight.w500,
          color: primaryTextColor,
        ),
        SizedBox(
          height: AppDimensions.instance!.height / 80,
        ),
        MyFormField(
          labelText: 'Email',
          controller: signUp.emailTC,
          textAlign: TextAlign.start,
          textAlignVertical: TextAlignVertical.top,
          maxLines: 1,
          textInputType: TextInputType.emailAddress,
          validator: (name) {
            if (name == null || name.trim().isEmpty) {
              return 'Please enter email address';
            }
            if (!RegExp(r'\S+@\S+\.\S+').hasMatch(name)) {
              return 'Please enter a valid email address';
            }
            return null;
          },
        ),
        SizedBox(
          height: AppDimensions.instance!.height / 50,
        ),
        MyRegularText(
          fontSize: NkFontSize.regularFont(regularFont: 15.6),
          label: 'Mobile Number*',
          fontWeight: FontWeight.w500,
          color: primaryTextColor,
        ),
        SizedBox(
          height: AppDimensions.instance!.height / 80,
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
              border: Border.all(color:signUp.phnValidator.value? primaryTextFieldColor: errorColor, width: 1),
              child: InternationalPhoneNumberInput(
                onInputChanged: (PhoneNumber number) {
                  print(number.phoneNumber);
                },
                validator: (p0) {
                  print('On Validator: $p0');
                  if(p0 == null || p0.isEmpty){
                    signUp.phnValidator.value = false;
                    print('phnValidator: ${signUp.phnValidator.value}');
                  }else{
                    signUp.phnValidator.value = true;
                    print('phnValidator: ${signUp.phnValidator.value}');
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
                initialValue: signUp.number,
                inputDecoration: InputDecoration(
                  hintStyle:
                  TextStyle(color: primaryTextFieldColor, fontSize: 14),
                  hintText: 'Mobile Number',
                  border: InputBorder.none,
                ),
                textFieldController: signUp.mobileTC,
                formatInput: false,
                keyboardType: const TextInputType.numberWithOptions(
                    signed: false, decimal: false),
                inputBorder: InputBorder.none,
                spaceBetweenSelectorAndTextField: 0,
                onSaved: (PhoneNumber number) async {
                  print('On Saved: $number');
                  if (!RegExp(r'^[0-9]{10}$').hasMatch(signUp.mobileTC.text) && signUp.mobileTC.text.isNotEmpty) {
                    Get.snackbar('Wrong', 'Enter a valid 10-digit number',
                        snackPosition: SnackPosition.BOTTOM,
                        colorText: primaryColor,
                        backgroundColor: primaryColor.withOpacity(0.2));
                  }else if(signUp.mobileTC.text.isNotEmpty){
                    print('>>> next screen >>>');
                    Get.toNamed(AppRoutes.otpVerify);
                  }else{
                    print('>>> mobileTC is empty >>>');
                  }
                },
              ),
            ),
            signUp.phnValidator == false?
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
          height: AppDimensions.instance!.height / 50,
        ),
        MyRegularText(
          fontSize: NkFontSize.regularFont(regularFont: 15.6),
          label: 'Password*',
          fontWeight: FontWeight.w500,
          color: primaryTextColor,
        ),
        SizedBox(
          height: AppDimensions.instance!.height / 80,
        ),
        MyFormField(
          controller: signUp.pswrdTC,
          labelText: 'Password',
          suffixIcon: GestureDetector(
              onTap: () {
                signUp.isVisible1 = !signUp.isVisible1;
                setState(() {});
              },
              child: Icon(
                signUp.isVisible1 ? Icons.visibility : Icons.visibility_off,
                color: primaryColor,
              )),
          obscureText: !signUp.isVisible1,
          maxLines: 1,
          validator: (PassCurrentValue) {
            RegExp regex = RegExp(
                r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,20}$');

            if (PassCurrentValue!.isEmpty) {
              return "Please enter password";
            } else if (PassCurrentValue!.length < 8) {
              print('password length is less than 8');
              return "Please enter atleast 8 character password";
            } else {
              if (!regex.hasMatch(PassCurrentValue)) {
                return ("Password should contain upper, lower, digit\nand Special character ");
              } else {
                return null;
              }
            }
          },
        ),
        SizedBox(
          height: AppDimensions.instance!.height / 50,
        ),
        MyRegularText(
          fontSize: NkFontSize.regularFont(regularFont: 15.6),
          label: 'Confirm Password*',
          fontWeight: FontWeight.w500,
          color: primaryTextColor,
        ),
        SizedBox(
          height: AppDimensions.instance!.height / 80,
        ),
        MyFormField(
          controller: signUp.confirmpswrdTC,
          labelText: 'Confirm Password',
          suffixIcon: GestureDetector(
              onTap: () {
                signUp.isVisible2 = !signUp.isVisible2;
                setState(() {});
              },
              child: Icon(
                signUp.isVisible2 ? Icons.visibility : Icons.visibility_off,
                color: primaryColor,
              )),
          obscureText: !signUp.isVisible2,
          maxLines: 1,
          validator: (PassCurrentValue) {
            RegExp regex = RegExp(
                r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,20}$');
            if (PassCurrentValue!.isEmpty) {
              return "Please enter confirm password";
            } else if (PassCurrentValue!.length < 8) {
              print('password length is less than 8');
              return "Please enter atleast 8 character password";
            } else if (signUp.pswrdTC.text != signUp.confirmpswrdTC.text) {
              return "Confirm Password does not match to Password";
            } else {
              if (!regex.hasMatch(PassCurrentValue)) {
                return ("Password should contain upper, lower, digit\nand Special character ");
              } else {
                return null;
              }
            }
          },
        ),
        SizedBox(
          height: AppDimensions.instance!.height / 90,
        ),
        Row(
          children: [
            SizedBox(
              width: AppDimensions.instance!.width / 20,
              height: AppDimensions.instance!.height / 20,
              child: Checkbox(
                side: const BorderSide(
                  color: primaryTextFieldColor,
                ),
                activeColor: primaryColor,
                checkColor: Colors.white,
                value: signUp.agree,
                onChanged: (value) {
                    signUp.agree = value ?? false;
                    signUp.updateScreen('signUp');
                },
              ),
            ),
            SizedBox(width: AppDimensions.instance!.width / 40,),
            MyRegularText(
              fontSize: NkFontSize.regularFont(regularFont: 13.6),
              label: 'I agree terms and conditions',
              fontWeight: FontWeight.w500,
              color: primaryTextColor.withOpacity(0.6),
            ),
          ]
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
            label: 'Already have an account?',
            fontSize: 13,
            color: primaryTextColor.withOpacity(0.8),
            fontWeight: FontWeight.w400),
        GestureDetector(
            onTap: () {
              Get.offAndToNamed(AppRoutes.login);
            },
            child: MyRegularText(
                label: ' Login',
                fontSize: 13,
                color: primaryColor,
                fontWeight: FontWeight.w500)),
      ],
    );
  }

  Widget signUpBtn(SignUpController signUp) {
    return MyThemeButton(
      onPressed: () {
        if (signUp.formKey.currentState!.validate()) {
          signUp.formKey.currentState?.save();
          //signUp.signUp('0',context: context);
        }
      },
      buttonText: 'Sign Up',
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
