import 'package:flutter/material.dart';
import 'package:test_me/utils/app_color.dart';

class CustomTextField extends StatelessWidget {
final String? hintText;
final Widget? suffixIcon;
final Widget? prefixIcon;
final TextEditingController? controller;

final bool obscureText;
  const CustomTextField({
    Key? key, this.hintText,this.prefixIcon, this.suffixIcon, this.obscureText = false, this.controller
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        fillColor: AppColor.greyColor,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide.none
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide.none
        ),
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon
      ),
    );
  }
}