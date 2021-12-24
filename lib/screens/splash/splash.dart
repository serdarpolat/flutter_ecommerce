import 'package:carry/core/core_files.dart';
import 'package:carry/screens/screen_files.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: s.width,
        height: s.height,
        child: Stack(
          children: [
            Image.asset(
              "assets/images/bg.png",
              fit: BoxFit.cover,
            ),
            Positioned(
              top: hh(context, 334),
              left: ww(context, 92),
              child: SvgPicture.asset(
                "assets/icons/Logo.svg",
                width: ww(context, 314.22),
              ),
            ),
            Positioned(
              bottom: hh(context, 135),
              left: ww(context, 66),
              right: ww(context, 66),
              child: CustomButton(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                ),
                width: w(context),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Continue",
                      style: TextStyle(
                        color: Clr.white,
                        fontSize: hh(context, 14),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      width: ww(context, 16),
                    ),
                    Icon(
                      Icons.arrow_forward_rounded,
                      color: Clr.white,
                      size: hh(context, 20),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
