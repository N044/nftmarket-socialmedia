import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    );
  }
}
