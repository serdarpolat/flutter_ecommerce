import 'package:carry/core/core_files.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    this.onTap,
    this.bgColor,
    this.width,
    this.elevation,
  }) : super(key: key);
  final Widget title;
  final Function()? onTap;
  final Color? bgColor;
  final double? width;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      color: bgColor ?? Clr.accent,
      highlightElevation: 0,
      highlightColor: Colors.white.withOpacity(0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          ww(context, 5),
        ),
      ),
      elevation: elevation ?? 0,
      child: SizedBox(
        width: width,
        height: hh(context, 45),
        child: title,
      ),
    );
  }
}
