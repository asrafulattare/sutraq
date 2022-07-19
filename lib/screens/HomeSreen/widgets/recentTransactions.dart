import 'package:flutter/material.dart';
import 'package:sutraq/constants/colors.dart';
import 'package:sutraq/screens/HomeSreen/page/dashboard.dart';
import 'package:velocity_x/velocity_x.dart';

class RecentTransactions extends StatelessWidget {
  final ScrollController scrollController;

  const RecentTransactions({
    Key? key,
    required this.scrollController,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: ColorBlock.white,
        border: Border.all(color: ColorBlock.white),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          "Recent Transactions"
              .text
              .fontFamily('Gelion')
              .size(17)
              .fontWeight(FontWeight.w600)
              .align(TextAlign.start)
              .make(),
          const HeightBox(20),
          const Divider(),
          ListView.separated(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const TeanactionDetails();
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
          ).expand(),
          "View All".text.color(ColorBlock.green).make().centered().onTap(() {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AllTeans(),
                ));
          })
        ],
      ).p20(),
    ).scrollVertical(controller: scrollController);
  }
}

class TeanactionDetails extends StatelessWidget {
  const TeanactionDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: '\$2,400'.text.fontFamily('Gelion').bold.make(),
      title: 'Access Bank'.text.fontFamily('Gelion').bold.make(),
      subtitle: '28, Jan 2022'.text.fontFamily('Gelion').make(),
      leading: Container(
        height: 30,
        width: 30,
        decoration: const BoxDecoration(
          color: Color(0xffCBEEEA),
          borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
        child: const Icon(
          Icons.call_received_outlined,
          color: ColorBlock.green,
        ),
      ),
    );
  }
}
