import 'package:flutter/material.dart';
import 'package:sutraq/constants/colors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'dart:math' as math;

class TranButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: ColorBlock.green,
        border: Border.all(color: ColorBlock.green),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: const BoxDecoration(
                  color: Color(0xff051F0E),
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                child: const Icon(
                  Icons.account_balance_wallet_outlined,
                  color: ColorBlock.white,
                ),
              ),
              const HeightBox(5),
              "Fund Wallet".text.white.make().centered(),
            ],
          ),
          const WidthBox(30),
          Column(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: const BoxDecoration(
                  color: Color(0xff051F0E),
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                child: const Icon(
                  Icons.input_outlined,
                  color: ColorBlock.white,
                ),
              ),
              const HeightBox(5),
              "Send Money".text.white.make().centered(),
            ],
          ),
          const WidthBox(30),
          Column(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: const BoxDecoration(
                  color: Color(0xff051F0E),
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                child: Transform(
                  transform: Matrix4.rotationY(math.pi),
                  alignment: Alignment.center,
                  child: const Icon(
                    Icons.input_outlined,
                    color: ColorBlock.white,
                  ),
                ),
              ),
              const HeightBox(5),
              "Withdraw".text.white.make().centered(),
            ],
          ),
        ],
      ).p16(),
    );
  }
}
