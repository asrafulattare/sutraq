import 'package:flutter/material.dart';

import 'package:sutraq/constants/colors.dart';

class RoundIconBtn extends StatelessWidget {
  final VoidCallback onTap;
  final IconData iconData;
  final Color iconBgColor;
  final double iconSize;
  const RoundIconBtn({
    Key? key,
    required this.onTap,
    required this.iconData,
    required this.iconBgColor,
    required this.iconSize,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration:
          ShapeDecoration(shape: const CircleBorder(), color: iconBgColor),
      child: IconButton(
        icon: Icon(iconData),
        iconSize: iconSize,
        color: ColorBlock.white,
        onPressed: onTap,
      ),
    );
  }
}
