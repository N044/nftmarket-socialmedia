import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.transparent,
      body: PageView(
        controller: pageController,
        //Physics define the nature of pageview
        physics: NeverScrollableScrollPhysics(),
        //Items arranged according to Gnav Button
        children: [home(), wallet(), search(), profile()],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(26, 27, 38, 1),
            borderRadius: BorderRadius.circular(35)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
              gap: 8,
              padding: EdgeInsets.all(16),
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                  iconActiveColor: Color.fromRGBO(254, 137, 8, 1),
                ),
                GButton(
                  icon: Icons.account_balance_wallet_outlined,
                  text: 'Wallet',
                  iconActiveColor: Color.fromRGBO(254, 137, 8, 1),
                ),
                GButton(
                  icon: Icons.search_outlined,
                  text: 'Search',
                  iconActiveColor: Color.fromRGBO(254, 137, 8, 1),
                ),
                GButton(
                  icon: Icons.person_outline_outlined,
                  text: 'Profile',
                  iconActiveColor: Color.fromRGBO(254, 137, 8, 1),
                ),
              ],
              onTabChange: (index) {
                pageController.animateToPage(index,
                    duration: Duration(milliseconds: 5),
                    curve: Curves.fastOutSlowIn);
              }),
        ),
      ),
    );
  }
}
