import 'package:carry/core/core_files.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.hintText,
    this.keyboardType,
    this.obsecureText,
  }) : super(key: key);
  final String hintText;
  final TextInputType? keyboardType;
  final bool? obsecureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hh(context, 45),
      child: TextField(
        cursorColor: Clr.accent,
        keyboardType: keyboardType ?? TextInputType.text,
        obscureText: obsecureText ?? false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 6, left: 10),
          fillColor: Clr.white,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Clr.inactiveGrey,
            fontSize: hh(context, 14),
            fontWeight: FontWeight.w300,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(ww(context, 5)),
            borderSide: BorderSide(
              width: 1,
              color: Clr.lightGrey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(ww(context, 5)),
            borderSide: BorderSide(
              width: 1.5,
              color: Clr.accent,
            ),
          ),
        ),
      ),
    );
  }
}
