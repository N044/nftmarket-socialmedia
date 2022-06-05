import 'package:flutter/material.dart';
import 'package:flutter_application_tugas_kelompok_nftmarket/dashboard.dart';
import 'package:flutter_application_tugas_kelompok_nftmarket/sign_in.dart';
import 'package:flutter_application_tugas_kelompok_nftmarket/sign_in_phone.dart';
import 'package:flutter_application_tugas_kelompok_nftmarket/sign_up.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_rich_text/simple_rich_text.dart';

class SignUpPhonePage extends StatefulWidget {
  @override
  _SignUpPhonePageState createState() => _SignUpPhonePageState();
}

class _SignUpPhonePageState extends State<SignUpPhonePage> {
  TextEditingController pass = TextEditingController();

  bool? _agreeterms = false;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return SafeArea(
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
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildEmailPhoneFunction(mq),
              buildEmailField(),
              SizedBox(
                height: 25,
              ),
              buildPasswordField(),
              buildText(
                  name:
                      'Use 8 or more characters with a mix of letters, \nnumbers, and symbols.',
                  choose: GoogleFonts.chakraPetch(
                      textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ))),
              SizedBox(
                height: 25,
              ),
              buildCheckBox(),
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

  Widget buildEmailPhoneFunction(Size mq) {
    return Padding(
      padding: const EdgeInsets.only(top: 13, left: 5, right: 3, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.grey),
                    backgroundColor: Color.fromRGBO(255, 137, 9, 1),
                    elevation: 15.0,
                    minimumSize: Size(mq.width * 0.35, 55),
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => SignUpPage()));
                },
                child: Text(
                  'Email',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Colors.white)),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.grey),
                    backgroundColor: Color.fromRGBO(255, 137, 9, 1),
                    elevation: 15.0,
                    minimumSize: Size(mq.width * 0.35, 55),
                    primary: Colors.white,
                    // backgroundColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => SignUpPhonePage()));
                },
                child: Text('Phone',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(color: Colors.white)))),
          ),
        ],
      ),
    );
  }

  Widget buildEmailField() {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 35, right: 35),
      child: TextFormField(
        style: GoogleFonts.poppins(
            textStyle: TextStyle(
          fontSize: 10,
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
      padding: const EdgeInsets.only(top: 15, left: 35, right: 35),
      child: TextFormField(
        style: GoogleFonts.poppins(
            textStyle: TextStyle(
          fontSize: 10,
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
      padding: const EdgeInsets.only(top: 0, left: 30, right: 30),
      child: ElevatedButton(
        onPressed: () {},
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
      padding: const EdgeInsets.only(top: 0, left: 70, right: 30),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "Sign Up with Google",
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
      padding: const EdgeInsets.only(top: 0, left: 70, right: 30),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "Sign Up with Apple",
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
      padding: const EdgeInsets.only(top: 5, left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Already have an account?",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => SignInPhonePage()));
              },
              child: Text("Log in",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 12))))
        ],
      ),
    );
  }
}
