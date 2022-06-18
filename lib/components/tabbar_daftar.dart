import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_rich_text/simple_rich_text.dart';

import 'package:flutter_application_tugas_kelompok_nftmarket/screens/sign_up.dart';
import 'package:flutter_application_tugas_kelompok_nftmarket/screens/sign_in.dart';
import 'package:flutter_application_tugas_kelompok_nftmarket/screens/dashboard.dart';
import 'package:flutter_application_tugas_kelompok_nftmarket/screens/sign_up_phone.dart';
import 'package:flutter_application_tugas_kelompok_nftmarket/screens/sign_in_phone.dart';

class TabBarPage extends StatefulWidget {
  TabBarPage({Key? key}) : super(key: key);

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.black,
          leading: buildButton(),
          title: Text(
            "Sign up",
            style: GoogleFonts.chakraPetch(
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          bottom: TabBar(
              padding: EdgeInsets.only(
                left: 65,
                right: 65,
              ),
              indicator: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(15),
              ),
              tabs: [
                Tab(text: 'Email'),
                Tab(text: 'Phone'),
              ]),
        ),
        body: TabBarView(children: [
          SignUpPage(),
          SignUpPhonePage(),
        ]),
      ),
    );
  }

  Widget buildButton() {
    return Container(
        padding: EdgeInsets.only(left: 15),
        child: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 15,
          ),
          color: Colors.white,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Dashboard()));
          },
        ));
  }
}
