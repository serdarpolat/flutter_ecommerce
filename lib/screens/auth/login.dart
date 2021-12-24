import 'package:carry/core/core_files.dart';
import 'package:carry/screens/screen_files.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
                          hintText: "Username/Email",
                          keyboardType: TextInputType.emailAddress,
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
                                top: 8,
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
                        SizedBox(
                          width: w(context),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                    fontSize: hh(context, 10),
                                    color: Clr.black,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Don't have account?  ",
                                    style: TextStyle(
                                      fontSize: hh(context, 10),
                                      color: Clr.black,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => push(context, Register()),
                                    child: Text(
                                      "Sign up now",
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
                          height: hh(context, 20),
                        ),
                        SizedBox(
                          width: w(context),
                          child: Row(
                            children: [
                              Expanded(
                                child: CustomButton(
                                  onTap: () {},
                                  title: SvgPicture.asset(
                                    "assets/icons/Google.svg",
                                    color: Clr.white,
                                  ),
                                  bgColor: Clr.blue,
                                ),
                              ),
                              SizedBox(
                                width: hh(context, 20),
                              ),
                              Expanded(
                                child: CustomButton(
                                  onTap: () {},
                                  title: SvgPicture.asset(
                                    "assets/icons/Apple.svg",
                                    color: Clr.white,
                                  ),
                                  bgColor: Clr.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: hh(context, 145),
                        ),
                        CustomButton(
                          onTap: () => push(context, Root()),
                          width: w(context),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "LOGIN",
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
