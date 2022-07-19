import 'package:flutter/material.dart';
import 'package:sutraq/constants/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class DashBoardAppBar extends StatelessWidget {
  const DashBoardAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            gradient: LinearGradient(
              colors: [Color(0xff3417A8), Color(0xff4e17a887)],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(0.5, 0.0),
            ),
          ),
          child: "OP".text.white.make().centered(),
        ),
        const WidthBox(10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            "Hello, Precious!"
                .text
                .size(18)
                .fontFamily('Gelion')
                .bold
                .white
                .align(TextAlign.start)
                .make(),
            const HeightBox(4),
            "Su/Pre123!"
                .text
                .gray700
                .align(TextAlign.start)
                .size(12)
                .white
                .make()
          ],
        ),
        WidthBox(MediaQuery.of(context).size.width * 0.37),
        const Icon(
          Icons.notifications_outlined,
          color: Color.fromARGB(255, 176, 175, 175),
          size: 36,
        ).badge(type: VxBadgeType.round, color: ColorBlock.white),
      ],
    );
  }
}
