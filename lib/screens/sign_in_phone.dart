import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_rich_text/simple_rich_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter_application_tugas_kelompok_nftmarket/screens/sign_up.dart';
import 'package:flutter_application_tugas_kelompok_nftmarket/screens/sign_in.dart';
import 'package:flutter_application_tugas_kelompok_nftmarket/components/navbar.dart';
import 'package:flutter_application_tugas_kelompok_nftmarket/screens/dashboard.dart';
import 'package:flutter_application_tugas_kelompok_nftmarket/screens/sign_up_phone.dart';
import 'package:flutter_application_tugas_kelompok_nftmarket/components/tabbar_login.dart';
import 'package:flutter_application_tugas_kelompok_nftmarket/components/tabbar_daftar.dart';

class SignInPhonePage extends StatefulWidget {
  @override
  _SignInPhonePageState createState() => _SignInPhonePageState();
}

class _SignInPhonePageState extends State<SignInPhonePage> {
  TextEditingController pass = TextEditingController();

  bool? _agreeterms = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 65,
              ),
              buildEmailField(),
              SizedBox(
                height: 25,
              ),
              buildPasswordField(),
              SizedBox(
                height: 50,
              ),
              buildCreateanAccount(),
              SizedBox(
                height: 15,
              ),
              buildTextCenter(
                  name: 'or',
                  choose: GoogleFonts.chakraPetch(
                      textStyle: TextStyle(color: Colors.white))),
              SizedBox(
                height: 15,
              ),
              buildCreateanAccountWithGoogle(),
              SizedBox(
                height: 15,
              ),
              buildCreateanAccountWithApple(),
              buildTaptoLogin(context),
            ],
          ),
        ),
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

  Widget buildEmailField() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 45, right: 45),
      child: TextFormField(
        style: GoogleFonts.poppins(
            textStyle: TextStyle(
          fontSize: 15,
          color: Colors.white,
        )),
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            fillColor: Color.fromRGBO(26, 27, 38, 1),
            filled: true,
            hintText: "Enter your Phone Number",
            labelText: "Phone Number",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            floatingLabelStyle: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            contentPadding: EdgeInsets.all(15.0),
            hintStyle: TextStyle(
              fontSize: 13,
              color: Colors.white,
            ),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
      ),
    );
  }

  Widget buildText({required String name, required TextStyle choose}) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 45),
      child: Text(
        name,
        style: choose,
      ),
    );
  }

  Widget buildTextCenter({required String name, required TextStyle choose}) {
    return Center(
      child: Text(
        name,
        style: choose,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget buildCheckBox() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
      child: Row(
        children: [
          Checkbox(
            value: _agreeterms,
            checkColor: Colors.black,
            activeColor: Color.fromRGBO(255, 137, 9, 1),
            onChanged: (value) {
              setState(() {
                _agreeterms = value;
              });
            },
            side: BorderSide(color: Color.fromRGBO(255, 137, 9, 1)),
          ),
          SimpleRichText(
            'I agree to the *_Terms_* and *_Privacy Policy_*',
            style: GoogleFonts.chakraPetch(
                textStyle: TextStyle(
              fontSize: 13,
            )),
          ),
        ],
      ),
    );
  }

  Widget buildPasswordField() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 45, right: 45),
      child: TextFormField(
        style: GoogleFonts.poppins(
            textStyle: TextStyle(
          fontSize: 15,
          color: Colors.white,
        )),
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            fillColor: Color.fromRGBO(26, 27, 38, 1),
            filled: true,
            hintText: "Enter your password",
            labelText: "Password",
            suffixIcon: Icon(Icons.visibility_off_outlined),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            floatingLabelStyle: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            contentPadding: EdgeInsets.all(15.0),
            hintStyle: TextStyle(
              fontSize: 13,
              color: Colors.white,
            ),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
      ),
    );
  }

  Widget buildCreateanAccount() {
    return Padding(
      padding: const EdgeInsets.only(left: 45, right: 45),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => Home()));
        },
        child: Text(
          "Request OTP",
          style: GoogleFonts.poppins(
              textStyle: TextStyle(color: Colors.white),
              shadows: [
                Shadow(
                    color: Colors.black.withOpacity(0.5),
                    offset: const Offset(3, 3),
                    blurRadius: 10)
              ]),
        ),
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            minimumSize: Size(500, 50),
            primary: Color.fromRGBO(255, 137, 9, 1)),
      ),
    );
  }

  Widget buildCreateanAccountWithGoogle() {
    return Padding(
      padding: const EdgeInsets.only(left: 95, right: 85),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => Home()));
        },
        child: Text(
          "Sign In with Google",
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
                color: Color.fromRGBO(116, 116, 117, 1),
                fontWeight: FontWeight.bold),
          ),
        ),
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            minimumSize: Size(250, 50),
            primary: Colors.white),
      ),
    );
  }

  Widget buildCreateanAccountWithApple() {
    return Padding(
      padding: const EdgeInsets.only(left: 95, right: 85),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => Home()));
        },
        child: Text(
          "Sign In with Apple",
          style: GoogleFonts.roboto(
            textStyle:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            minimumSize: Size(250, 50),
            primary: Colors.white),
      ),
    );
  }

  Widget buildTaptoLogin(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Not registered yet?",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              )),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => TabBarPage()));
              },
              child: Text(
                "Create An Account",
                style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ))
        ],
      ),
    );
  }
}
