import 'package:carry/core/core_files.dart';
import 'package:carry/screens/screen_files.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: w(context),
        height: h(context),
        child: Stack(
          children: [
            Image.asset(
              "assets/images/bg.png",
              fit: BoxFit.cover,
            ),
            Positioned(
              top: hh(context, 134),
              right: 0,
              child: SvgPicture.asset(
                "assets/icons/Logo.svg",
                width: ww(context, 246),
              ),
            ),
            SizedBox(
              width: w(context),
              height: h(context),
              child: Column(
                children: [
                  SizedBox(
                    height: hh(context, 258),
                  ),
                  Container(
                    width: w(context),
                    padding: EdgeInsets.symmetric(horizontal: ww(context, 25)),
                    child: Column(
                      children: [
                        InputField(
                          hintText: "Full Name",
                        ),
                        SizedBox(
                          height: hh(context, 20),
                        ),
                        SizedBox(
                          width: w(context),
                          child: Stack(
                            children: [
                              InputField(
                                hintText: "Password",
                                obsecureText: true,
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.visibility_off_rounded),
                                  color: Clr.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: hh(context, 20),
                        ),
                        InputField(
                          hintText: "Phone Number",
                          keyboardType: TextInputType.phone,
                        ),
                        SizedBox(
                          height: hh(context, 20),
                        ),
                        SizedBox(
                          width: w(context),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 6,
                                child: InputField(
                                  hintText: "Verification Code",
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              SizedBox(
                                width: hh(context, 20),
                              ),
                              Expanded(
                                flex: 2,
                                child: CustomButton(
                                  onTap: () {},
                                  title: Center(
                                    child: Text(
                                      "Get",
                                      style: TextStyle(
                                        color: Clr.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: hh(context, 16),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: hh(context, 20),
                        ),
                        SizedBox(
                          width: w(context),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: ww(context, 10),
                                    height: ww(context, 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2),
                                      border: Border.all(
                                        width: 1,
                                        color: Clr.accent,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "Terms and condtion",
                                    style: TextStyle(
                                      fontSize: hh(context, 10),
                                      color: Clr.black,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Already have an account?  ",
                                    style: TextStyle(
                                      fontSize: hh(context, 10),
                                      color: Clr.black,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => push(context, Login()),
                                    child: Text(
                                      "Sign in",
                                      style: TextStyle(
                                        fontSize: hh(context, 10),
                                        fontWeight: FontWeight.w700,
                                        color: Clr.black,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: hh(context, 81),
                        ),
                        CustomButton(
                          onTap: () => push(context, Root()),
                          width: w(context),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "SIGN UP",
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
