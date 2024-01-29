import 'package:credease/themes/color/colors.dart';
import 'package:flutter/material.dart';

class DecorationUtils {
  BuildContext context;

  DecorationUtils(this.context);

  InputDecoration getUnderlineInputDecoration({
    String? labelText = "",
    bool isRequire = false,
    bool isEnable = true,
    final Color? enableColor,
    final Color? disabledColor,
    bool? alignLabelWithHint,
    final Color? focusedColor,
    final Color? labelTextColor,
    final FloatingLabelBehavior? floatingLabelBehavior,
    icon,
    final Widget? prefixIcon,
    final Widget? suffixIcon,
    final BorderRadius? borderRadius,
    final Color? fillColor,
    final Color? hintColor,
    final EdgeInsetsGeometry? contentPadding,
  }) {
    return InputDecoration(
      fillColor: isRequire ? fillColor ?? Colors.white : Colors.white,
      filled: (isEnable) ? true : true,
      alignLabelWithHint: alignLabelWithHint,
      suffixIcon: suffixIcon,
      icon: icon,
      border: InputBorder.none,
      prefixIcon: prefixIcon,
      contentPadding: contentPadding ??
          const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3),
      labelText: labelText,
      counterText: "",
      labelStyle: TextStyle(
        color: labelTextColor ?? primaryTextFieldColor,
        fontSize: 14,
      ),
      hintStyle: TextStyle(
        color: hintColor ?? primaryTextFieldColor,
        fontSize: 14,
      ),
      floatingLabelBehavior:
          floatingLabelBehavior ?? FloatingLabelBehavior.never,
      enabledBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: enableColor ?? primaryTextFieldColor, width: 1),
        borderRadius: borderRadius ?? BorderRadius.circular(10),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: disabledColor ?? primaryTextFieldColor, width: 1),
        borderRadius: borderRadius ?? BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: focusedColor ?? primaryTextFieldColor, width: 1),
        borderRadius: borderRadius ?? BorderRadius.circular(10),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: errorColor, width: 1),
        borderRadius: borderRadius ?? BorderRadius.circular(10),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: errorColor, width:1),
        borderRadius: borderRadius ?? BorderRadius.circular(10),
      ),
    );
  }
}
