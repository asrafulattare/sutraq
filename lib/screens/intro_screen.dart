import 'package:flutter/material.dart';
import 'package:sutraq/constants/assets.dart';
import 'package:sutraq/screens/onboarding.dart';

class InroScreen extends StatefulWidget {
  @override
  State<InroScreen> createState() => _InroScreenState();
}

class _InroScreenState extends State<InroScreen> {
  final List images = [
    Assets.intro1,
    Assets.intro2,
    Assets.intro3,
  ];
  final List<String> title = [
    'Send Money Anywhere',
    'Safe & Secured',
    'Unbeatable Support',
  ];
  final List des = [
    'With our unique technology, you can get \nmoney anywhere in the world.',
    'Safety of your funds is guaranteed. We’ve \ngot you covered 24/7.',
    'Send money to other sutraq users free of \ncharge, with no additional fee.',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
          child: Column(
        children: [
          IntroWid(
            dec: des[0],
            img: images[0],
            title: title[0],
          ),
        ],
      )),
    );
  }
}
