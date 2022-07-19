import 'package:flutter/material.dart';
import 'package:sutraq/screens/login/forget.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:sutraq/constants/colors.dart';

import '../../constants/assets.dart';
import 'widgets/color_btn.dart';
import 'widgets/txt_email_field.dart';
import 'widgets/txt_pass_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HeightBox(20),
            Center(
              child: Image.asset(
                Assets.logo,
                height: 120,
              ),
            ),
            const HeightBox(30),
            'Welcome Back!'
                .text
                .headline4(context)
                .fontFamily('Gelion')
                .black
                .bold
                .make(),
            const HeightBox(10),
            'Enter your details to continue'
                .text
                .subtitle1(context)
                .fontFamily('Gelion')
                .black
                .thin
                .make(),
            const HeightBox(40),
            Form(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      child: 'Email Address'
                          .text
                          .align(TextAlign.left)
                          .gray500
                          .make(),
                    ).box.alignTopLeft.make(),
                    const HeightBox(7),
                    TxtEmailField(
                        hintText: 'Email',
                        iconData: Icons.email_outlined,
                        onChanged: (value) {}),
                    const HeightBox(7),
                    SizedBox(
                      child:
                          'Password'.text.align(TextAlign.left).gray500.make(),
                    ).box.alignTopLeft.make(),
                    const HeightBox(7),
                    TxtPassField(
                      onChanged: (value) {},
                      hintText: "Password",
                      iconData: Icons.lock_outline,
                    ),
                    const HeightBox(7),
                    SizedBox(
                      child: 'Forgot Password?'
                          .text
                          .color(ColorBlock.green)
                          .make()
                          .onTap(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const ForgetPass()));
                      }),
                    ).box.alignBottomRight.make(),
                    const HeightBox(17),
                    ColorBtn(
                      onTap: () {},
                      bgColor: ColorBlock.green,
                      btnText: 'Login',
                      txtColor: ColorBlock.white,
                    ),
                    const HeightBox(15),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                        children: [
                          TextSpan(text: "Need an Account? "),
                          TextSpan(
                              text: "Try Sutraq",
                              style: TextStyle(color: ColorBlock.green)),
                        ],
                      ),
                    ).box.alignBottomCenter.make(),
                    const HeightBox(15),
                    Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.fingerprint_outlined,
                          color: ColorBlock.green,
                          size: 40,
                        ),
                      ),
                    ),
                    const HeightBox(20),
                    'Tap to use fingerprint'
                        .text
                        .size(10)
                        .color(ColorBlock.green)
                        .make()
                  ],
                ),
              ),
            )
          ],
        ).scrollVertical(),
      ),
    );
  }
}

class FormValidator {
  static FormValidator? _instance;

  factory FormValidator() => _instance ??= FormValidator._();

  FormValidator._();

  String validatePassword(String value) {
    String patttern = r'(^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,}$)';
    RegExp regExp = RegExp(patttern);
    if (value.isEmpty) {
      return "Password is Required";
    } else if (value.length < 8) {
      return "Password must minimum eight characters";
    } else if (!regExp.hasMatch(value)) {
      return "Password at least one uppercase letter, one lowercase letter and one number";
    }
    return '';
  }

  String validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return "Email is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Invalid Email";
    } else {
      return '';
    }
  }
}
