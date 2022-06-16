import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter_application_tugas_kelompok_nftmarket/widget_hwsp.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: PageView(
          controller: pageController,
          //Physics define the nature of pageview
          physics: const NeverScrollableScrollPhysics(),
          //Items arranged according to Gnav Button
          children: [home(), wallet(), search(), profile()],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: const Color.fromRGBO(26, 27, 38, 1),
              borderRadius: BorderRadius.circular(35)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
            child: GNav(
                gap: 10,
                padding: const EdgeInsets.all(16),
                tabs: const [
                  GButton(
                    icon: FontAwesomeIcons.house,
                    iconSize: 18,
                    text: 'Home',
                    iconActiveColor: Color.fromRGBO(254, 137, 8, 1),
                  ),
                  GButton(
                    icon: FontAwesomeIcons.wallet,
                    iconSize: 18,
                    text: 'Wallet',
                    iconActiveColor: Color.fromRGBO(254, 137, 8, 1),
                  ),
                  GButton(
                    icon: FontAwesomeIcons.magnifyingGlass,
                    iconSize: 18,
                    text: 'Search',
                    iconActiveColor: Color.fromRGBO(254, 137, 8, 1),
                  ),
                  GButton(
                    icon: FontAwesomeIcons.user,
                    iconSize: 18,
                    text: 'Profile',
                    iconActiveColor: Color.fromRGBO(254, 137, 8, 1),
                  ),
                ],
                onTabChange: (index) {
                  pageController.animateToPage(index,
                      duration: const Duration(milliseconds: 5),
                      curve: Curves.fastOutSlowIn);
                }),
          ),
        ),
      ),
    );
  }
}
