import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String? buttonLevel;
  final Color? color;
  final Color? levelColor;
  const CustomButton({
    Key? key, this.buttonLevel, this.color, this.onTap, this.levelColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
    onPressed: onTap,
    child: Text(
      '$buttonLevel',
       style: TextStyle(
        fontSize: 17, 
        fontWeight: FontWeight.w500,
        color: levelColor
      ),
    ),
    style: ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 48),
      primary: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // <-- Radius
      ),
    ),
            );
  }
}