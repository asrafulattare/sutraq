import 'package:flutter/material.dart';
import 'package:sutraq/constants/colors.dart';

class DotIndigetor extends StatelessWidget {
  const DotIndigetor({
    Key? key,
    required this.length,
    required this.activeIndex,
  }) : super(key: key);

  final List<String> length;
  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: List.generate(length.length, (index) {
        double sizeDot = index == activeIndex ? 10 : 8;
        Color colorDot = index == activeIndex
            ? const Color.fromARGB(102, 125, 104, 104)
            : ColorBlock.green;
        return Container(
          width: sizeDot,
          height: sizeDot,
          decoration: BoxDecoration(color: colorDot, shape: BoxShape.circle),
        );
      }),
    );
  }
}
