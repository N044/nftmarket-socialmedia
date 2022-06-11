import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            toolbarHeight: 100,
            backgroundColor: Colors.transparent,
            leadingWidth: 100,
            titleSpacing: 0.5,
            leading: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://img.freepik.com/free-photo/handsome-confident-smiling-man-with-hands-crossed-chest_176420-18743.jpg?w=2000'),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Colors.orange,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: new Icon(FontAwesomeIcons.bell, color: Colors.white),
                onPressed: () {},
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: IconButton(
                  icon: new Icon(FontAwesomeIcons.arrowRightFromBracket,
                      color: Colors.white),
                  onPressed: () {},
                ),
              ),
            ],
            title: RichText(
                text: TextSpan(
                    text: 'Good Morning',
                    style: GoogleFonts.dmSans(
                        textStyle: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    children: const <TextSpan>[
                  TextSpan(
                      text: '\nJohn F Kenn',
                      style: TextStyle(fontSize: 20, color: Colors.white))
                ]))),
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
                gap: 8,
                padding: const EdgeInsets.all(16),
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
                      duration: const Duration(milliseconds: 5),
                      curve: Curves.fastOutSlowIn);
                }),
          ),
        ),
      ),
    );
  }
}
