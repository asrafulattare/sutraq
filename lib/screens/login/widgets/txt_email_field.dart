import 'package:flutter/material.dart';

class TxtEmailField extends StatelessWidget {
  final String hintText;
  final IconData iconData;
  final ValueChanged<String> onChanged;
  const TxtEmailField({
    Key? key,
    required this.hintText,
    required this.iconData,
    required this.onChanged,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.0,
          // assign the color to the border color
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: TextFormField(
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hintText,
            icon: Icon(iconData),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
