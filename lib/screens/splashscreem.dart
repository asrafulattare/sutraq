import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:sutraq/constants/assets.dart';
import 'package:sutraq/constants/colors.dart';
import 'package:sutraq/screens/onboarding.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: ColorBlock.white,
      splashIconSize: MediaQuery.of(context).size.shortestSide * 0.7,
      splash: Assets.logoSquar,
      splashTransition: SplashTransition.fadeTransition,
      nextScreen: const OnboardingScreen(),
    );
  }
}
