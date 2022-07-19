import 'package:flutter/material.dart';

class TxtPassField extends StatelessWidget {
  final IconData iconData;
  final String hintText;
  final ValueChanged<String> onChanged;
  const TxtPassField({
    Key? key,
    required this.iconData,
    required this.hintText,
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
          obscureText: true,
          decoration: InputDecoration(
            suffixIcon: const Icon(Icons.visibility),
            hintText: hintText,
            icon: Icon(iconData),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
