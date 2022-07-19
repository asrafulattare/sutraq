import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:sutraq/constants/colors.dart';
import 'package:sutraq/widgets/buttons.dart';
import '../constants/assets.dart';
import '../widgets/dot_indigetor.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late double height, width;
  int activeIndex = 0;
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
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: height * .6,
                decoration: const BoxDecoration(color: ColorBlock.white),
              ),
              Container(
                height: height * .4,
                decoration: const BoxDecoration(
                  color: ColorBlock.green,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: const Buttons(),
              ),
            ],
          ).backgroundColor(Colors.white),

          VxSwiper.builder(
            onPageChanged: (index) {
              setState(() {
                activeIndex = index;
              });
            },
            viewportFraction: 1.0,
            aspectRatio: 30,
            scrollDirection: Axis.horizontal,
            height: MediaQuery.of(context).size.height * .75,
            itemCount: title.length,
            itemBuilder: (_, index) {
              return IntroWid(
                dec: des[index],
                img: images[index],
                title: title[index],
              );
            },
          ),
          DotIndigetor(length: title, activeIndex: activeIndex)
              .centered()
              .positioned(bottom: height * .42, left: 0, right: 0),

          // const Buttons(),
        ],
      ),
    );
  }
}

class IntroWid extends StatelessWidget {
  final String title;
  final String dec;
  final String img;

  const IntroWid({
    Key? key,
    required this.title,
    required this.dec,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 38.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .7,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const HeightBox(10),
            Image.asset(
              img,
            ),
            const HeightBox(10),
            const HeightBox(70),
            title.text.size(27).fontFamily('Gelion').white.bold.makeCentered(),
            const HeightBox(10),
            dec.text
                .size(16)
                .fontFamily('Gelion')
                .white
                .align(TextAlign.center)
                .thin
                .makeCentered(),
          ],
        ),
      ),
    );
  }
}
