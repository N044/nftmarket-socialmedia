import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_tugas_kelompok_nftmarket/screens/sign_in.dart';
import 'package:flutter_application_tugas_kelompok_nftmarket/screens/dashboard.dart';
import 'package:flutter_application_tugas_kelompok_nftmarket/screens/sign_in_phone.dart';

class TabBarPageLogin extends StatefulWidget {
  const TabBarPageLogin({Key? key}) : super(key: key);

  @override
  State<TabBarPageLogin> createState() => _TabBarPageLoginState();
}

class _TabBarPageLoginState extends State<TabBarPageLogin> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.transparent,
          leading: buildButton(),
          title: RichText(
            text: TextSpan(
              text: 'Sign In',
              style: GoogleFonts.chakraPetch(
                  textStyle:
                      const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              children: const <TextSpan>[
                TextSpan(
                    text: '\nHello, Welcome Back !',
                    style: TextStyle(fontSize: 15, color: Colors.grey))
              ],
            ),
          ),
          bottom: TabBar(
              padding: const EdgeInsets.only(
                left: 65,
                right: 65,
              ),
              indicator: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(15),
              ),
              tabs: const [
                Tab(text: 'Email'),
                Tab(text: 'Phone'),
              ]),
        ),
        body: TabBarView(children: [
          SignInPage(),
          SignInPhonePage(),
        ]),
      ),
    );
  }

  Widget buildButton() {
    return Container(
        padding: const EdgeInsets.only(left: 15),
        child: IconButton(
          icon: const Icon(
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
