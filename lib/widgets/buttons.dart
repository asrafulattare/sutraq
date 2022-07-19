import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sutraq/screens/HomeSreen/home_screen.dart';
import 'package:sutraq/screens/login/login.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constants/colors.dart';

class Buttons extends StatefulWidget {
  const Buttons({
    Key? key,
  }) : super(key: key);

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    bool isPressed = true;
    return Container(
      decoration: BoxDecoration(
        color: ColorBlock.green,
        border: Border.all(color: ColorBlock.green),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HeightBox(MediaQuery.of(context).size.height / 4.5),
          InkWell(
            onTap: () {
              if (kDebugMode) {
                print("Login");
                VxToast.show(context, msg: "Login Page Added Soon");
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const LoginScreen()));
              }
            },
            child: Container(
              //color: Colors.black,
              decoration: BoxDecoration(
                color: ColorBlock.black,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 40,
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .2,
                  right: MediaQuery.of(context).size.width * .2),
              child: "Login"
                  .text
                  .uppercase
                  .size(17)
                  .fontFamily('Gelion')
                  .white
                  .medium
                  .makeCentered(),
            ),
          ),
          const HeightBox(10),
          MaterialButton(
            onPressed: () {
              print("fasd");
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const HomeScreen()));
            },
            child: "Try Sutraq"
                .text
                .uppercase
                .size(16)
                .fontFamily('Gelion')
                .white
                .fontWeight(FontWeight.w500)
                .makeCentered(),
          )
        ],
      ),
    );
  }
}
