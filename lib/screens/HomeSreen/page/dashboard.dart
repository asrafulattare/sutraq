import 'package:flutter/material.dart';
import 'package:sutraq/screens/HomeSreen/widgets/recentTransactions.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:sutraq/constants/colors.dart';
import 'package:sutraq/screens/HomeSreen/widgets/banner.dart';
import 'package:sutraq/screens/HomeSreen/widgets/tranBtn.dart';

import '../widgets/dashBoardAppbar.dart';

class DashBoard extends StatefulWidget {
  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final _scrollControolaer = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A004A),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollControolaer,
          child: Column(
            children: [
              const DashBoardAppBar().p12(),
              const HomeBanner(),
              TranButtons(),
              RecentTransactions(
                scrollController: _scrollControolaer,
              ).backgroundColor(ColorBlock.green),
            ],
          ),
        ),
      ).pOnly(top: 10),
    );
  }
}

class AllTeans extends StatefulWidget {
  const AllTeans({Key? key}) : super(key: key);

  @override
  State<AllTeans> createState() => _AllTeansState();
}

class _AllTeansState extends State<AllTeans> {
  final List<Tab> tabs = [
    Tab(
      child: "All Transactions".text.black.make(),
    ),
    Tab(
      child: "Debits".text.black.make(),
    ),
    Tab(
      child: "Credits".text.black.make(),
    ),
  ];

  List<Widget> tabsContant = [
    Container(color: Colors.teal),
    Container(color: Colors.green),
    Container(color: Colors.blue),
  ];

  String dropdownvalue = 'N190,000';

  var items = [
    'N190,000',
    'Banana',
    'Grapes',
    'Orange',
    'watermelon',
    'Pineapple'
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          backgroundColor: const Color(0xffF1F3F4),
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            backgroundColor: const Color(0xffF1F3F4),
            centerTitle: false,
            title: 'Transaction History'
                .text
                .black
                .align(TextAlign.center)
                .makeCentered(),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(150),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        // assign the color to the border color
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        borderRadius: BorderRadius.circular(5.0),
                        alignment: AlignmentDirectional.center,
                        value: dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                              value: items, child: Text(items));
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            dropdownvalue = newValue.toString();
                          });
                        },
                      ),
                    ),
                  ).p20(),
                  TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorWeight: 3,
                    indicator: const BoxDecoration(color: Colors.red),
                    isScrollable: true,
                    tabs: tabs,
                    indicatorColor: Colors.white,
                  )
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: tabsContant,
          ),
        ));
  }
}
