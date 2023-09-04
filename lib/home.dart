import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:par_king/screens/parkings.dart';
import 'package:par_king/screens/orders.dart';
import 'package:par_king/screens/elements/slots.dart';
import 'package:par_king/screens/settings.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  static slots slotcontrol = slots();
  final screens = [
    parKINGS(slotcontrol),
    orders(slotcontrol),
    Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: GNav(
      gap: 8,
      color: Colors.black,
      activeColor: const Color(0xFFf74f4f),
      tabActiveBorder: Border.all(color: const Color(0xFFf74f4f)),
      tabBorderRadius: 80,
      onTabChange: (value) => {
        setState(() {
          currentIndex = value;
        })
      },
      tabs: 
      const [
        GButton(icon: Icons.map_rounded, text: "parkings",),
        GButton(icon: Icons.account_box_rounded, text: "Account",),
        GButton(icon: Icons.settings, text: "settings",),
      ])
    );
  }
}