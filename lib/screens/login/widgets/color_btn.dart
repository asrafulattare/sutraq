import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ColorBtn extends StatelessWidget {
  final VoidCallback onTap;
  final Color bgColor;
  final Color txtColor;
  final String btnText;
  const ColorBtn({
    Key? key,
    required this.onTap,
    required this.bgColor,
    required this.txtColor,
    required this.btnText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(6),
        ),
        height: 50,
        margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * .01,
            right: MediaQuery.of(context).size.width * .01),
        child: btnText.text.uppercase
            .size(17)
            .fontFamily('Gelion')
            .color(txtColor)
            .medium
            .makeCentered(),
      ),
    );
  }
}
