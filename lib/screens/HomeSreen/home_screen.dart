import 'package:flutter/material.dart';
import 'package:sutraq/constants/colors.dart';
import 'package:sutraq/screens/HomeSreen/page/cards.dart';
import 'package:sutraq/screens/HomeSreen/page/dashboard.dart';
import 'package:sutraq/screens/HomeSreen/page/settings.dart';
import 'package:sutraq/screens/HomeSreen/page/wallet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final screen = [
    DashBoard(),
    Wallet(),
    Cards(),
    Settings(),
  ];
  int currentIndex = 0;
  bool isPressed = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade200,
      body: screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 10,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorBlock.white,
        selectedItemColor: ColorBlock.green,
        unselectedItemColor: ColorBlock.gray2,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: const [
          BottomNavigationBarItem(
            label: 'Dashboard',
            icon: Icon(
              Icons.dashboard_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Wallet',
            icon: Icon(
              Icons.account_balance_wallet_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Cards',
            icon: Icon(
              Icons.credit_card_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(
              Icons.settings_outlined,
            ),
          ),
        ],
      ),
    );
  }
}
