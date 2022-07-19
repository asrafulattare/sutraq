import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sutraq/constants/assets.dart';
import 'package:sutraq/constants/colors.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../widgets/dot_indigetor.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  // loadData() async {
  //   await Future.delayed(const Duration(seconds: 2));
  //   final catalogJson = await rootBundle.loadString("assets/items.json");
  //   final decodedData = jsonDecode(catalogJson);
  //   var bannerData = decodedData["banners"];
  //   print(bannerData);
  //   BannerModel.bannerItem = List.from(bannerData)
  //       .map<BannerItem>((item) => BannerItem.fromMap(item))
  //       .toList();
  //   setState(() {});
  // }
  int currentIndex = 0;

  @override
  void initState() {
    // loadData();
    super.initState();
  }

  List<String> listPaths = [
    "images/nature1.jpg",
    "images/nature2.jpg",
    "images/nature3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          carouselController: CarouselController(),
          itemCount: 3,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) =>
                  const HomeBannerCard(),
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
            enlargeCenterPage: true,
            // viewportFraction: 0.9,
            aspectRatio: 2.5,

            initialPage: 2,
          ),
        ),
        const HeightBox(08),
        DotIndigetor(length: listPaths, activeIndex: currentIndex).p12(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: listPaths.map((url) {
            int index = listPaths.indexOf(url);
            return Container(
              width: 8.0,
              height: 8.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: currentIndex == index
                    ? ColorBlock.green
                    : const Color.fromARGB(102, 125, 104, 104),
              ),
            );
          }).toList(),
        ).hide(),
      ],
    );
  }
}

class HomeBannerCard extends StatelessWidget {
  // final BannerItem bannerItem;

  const HomeBannerCard({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorBlock.white,
      elevation: 1.0,
      margin: const EdgeInsets.all(4.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: SizedBox(
        height: 150,
        width: 300,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10, right: 10, left: 20, bottom: 10),
          child: Column(
            children: [
              const HeightBox(14),
              Row(
                children: [
                  Image.asset(
                    Assets.logo,
                    height: 25,
                    width: 25,
                  ),
                  "SUTRAQ CURRENCY"
                      .text
                      .fontFamily('Gelion')
                      .size(15)
                      .bold
                      .make(),
                  const WidthBox(70),
                  const Icon(
                    Icons.visibility_outlined,
                  )
                ],
              ),
              const HeightBox(14),
              "AVAILABLE BALANCE"
                  .text
                  .color(ColorBlock.gray2)
                  .fontFamily('Gelion')
                  .size(15)
                  .align(TextAlign.left)
                  .fontWeight(FontWeight.w500)
                  .make()
                  .box
                  .alignBottomLeft
                  .make(),
              Row(
                children: [
                  "Q190,000"
                      .text
                      .fontFamily('Gelion')
                      .headline4(context)
                      .color(ColorBlock.green)
                      .bold
                      .make(),
                  const WidthBox(87),
                  const Icon(
                    Icons.arrow_forward,
                    color: ColorBlock.green,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexcolor) {
    hexcolor = hexcolor.toLowerCase().replaceAll('#', '');
    if (hexcolor.length == 6) {
      hexcolor = 'FF$hexcolor';
    }
    return int.parse(hexcolor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
