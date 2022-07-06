import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screens/sign_up.dart';
import '../screens/dashboard.dart';
import '../screens/sign_up_phone.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

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
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
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
        body: const TabBarView(children: [
          SignUpPage(),
          SignUpPhonePage(),
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
                context, MaterialPageRoute(builder: (_) => const Dashboard()));
          },
        ));
  }
}
