import 'package:flutter/material.dart';
import 'package:test_me/utils/app_color.dart';

class CustomBackButton extends StatelessWidget {
  final VoidCallback? onTap;
  const CustomBackButton({
    Key? key, this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.arrow_back_ios,
            color: AppColor.accentColor,
          ),
          Text(
            "Back",
            style: TextStyle(
              fontSize: 17, 
              fontWeight: FontWeight.w400,
              color: AppColor.accentColor
            ),
          ),
        ],
      ),
    );
  }
}
