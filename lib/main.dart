import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/sign_up.dart';
import 'package:flutter_application_tugas_kelompok_nftmarket/screens/sign_in.dart';
import 'package:flutter_application_tugas_kelompok_nftmarket/components/navbar.dart';
import 'package:flutter_application_tugas_kelompok_nftmarket/screens/dashboard.dart';
import 'package:flutter_application_tugas_kelompok_nftmarket/components/tabbar_daftar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: TabBarPage(),
      // routes: <String, WidgetBuilder>{
      //   '/': (context) => HomePage(),
      //   '/second': (context) => SecondApp()
      // },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final _textControler = new TextEditingController();

  // @override
  // void dispose() {
  //   _textControler.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
