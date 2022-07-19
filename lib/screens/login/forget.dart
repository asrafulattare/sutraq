import 'package:flutter/material.dart';
import 'package:sutraq/constants/assets.dart';
import 'package:sutraq/screens/HomeSreen/home_screen.dart';
import 'package:sutraq/screens/login/widgets/txt_email_field.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../constants/colors.dart';
import 'widgets/color_btn.dart';
import 'widgets/round_bt.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            RoundIconBtn(
                iconSize: 30,
                iconBgColor: ColorBlock.green,
                iconData: Icons.arrow_back,
                onTap: () {
                  Navigator.pop(context);
                }).box.alignBottomLeft.make(),
            const HeightBox(20),
            Center(
              child: Image.asset(
                Assets.logo,
                height: 120,
              ),
            ),
            const HeightBox(30),
            'Forgot Password?'
                .text
                .headline4(context)
                .fontFamily('Gelion')
                .black
                .bold
                .make(),
            const HeightBox(10),
            'Enter the email address associated with your account to recover password.'
                .text
                .align(TextAlign.center)
                .subtitle1(context)
                .fontFamily('Gelion')
                .black
                .thin
                .make(),
            const HeightBox(40),
            SizedBox(
              child: 'Email Address'.text.align(TextAlign.left).gray500.make(),
            ).box.alignTopLeft.make(),
            const HeightBox(7),
            TxtEmailField(
                hintText: 'Email',
                iconData: Icons.email_outlined,
                onChanged: (value) {}),
            const HeightBox(17),
            ColorBtn(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const CheckEmail()));
              },
              bgColor: ColorBlock.green,
              btnText: 'Recover PASSWORD',
              txtColor: ColorBlock.white,
            ),
          ],
        ).p20(),
      ),
    );
  }
}

class CheckEmail extends StatelessWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width / 1.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ColorBlock.white,
          ),
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
              'Check your Inbox!'
                  .text
                  .headline4(context)
                  .fontFamily('Gelion')
                  .black
                  .bold
                  .make(),
              const HeightBox(10),
              'An email has been sent to you. Click the link to reset your password.'
                  .text
                  .align(TextAlign.center)
                  .subtitle1(context)
                  .fontFamily('Gelion')
                  .black
                  .thin
                  .make(),
              const HeightBox(40),
              ColorBtn(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const OnSucess()));
                },
                bgColor: ColorBlock.green,
                btnText: 'Check Mail',
                txtColor: ColorBlock.white,
              ),
            ],
          ).p12(),
        ),
      ),
    );
  }
}

class OnSucess extends StatelessWidget {
  const OnSucess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset('assets/images/shap.png'),
          Positioned(
            top: 150,
            right: 0,
            left: 0,
            child: Column(
              children: [
                const Icon(
                  Icons.lightbulb_outlined,
                  color: Colors.amberAccent,
                  size: 150,
                ),
                HeightBox(MediaQuery.of(context).size.height * .4),
                ColorBtn(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) => const HomeScreen()));
                  },
                  bgColor: ColorBlock.green,
                  btnText: 'Got It!',
                  txtColor: ColorBlock.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
