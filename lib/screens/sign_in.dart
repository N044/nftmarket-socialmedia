import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_rich_text/simple_rich_text.dart';

import 'package:flutter_application_tugas_kelompok_nftmarket/components/navbar.dart';
import 'package:flutter_application_tugas_kelompok_nftmarket/screens/dashboard.dart';

import 'package:flutter_application_tugas_kelompok_nftmarket/components/tabbar_daftar.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController pass = TextEditingController();

  bool? _agreeterms = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 65,
              ),
              buildEmailField(),
              const SizedBox(
                height: 25,
              ),
              buildPasswordField(),
              const SizedBox(
                height: 50,
              ),
              buildCreateanAccount(),
              const SizedBox(
                height: 15,
              ),
              buildTextCenter(
                  name: 'or',
                  choose: GoogleFonts.chakraPetch(
                      textStyle: const TextStyle(color: Colors.white))),
              const SizedBox(
                height: 15,
              ),
              buildCreateanAccountWithGoogle(),
              const SizedBox(
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

  Widget buildEmailField() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 45, right: 45),
      child: TextFormField(
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
          fontSize: 15,
          color: Colors.white,
        )),
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            fillColor: const Color.fromRGBO(26, 27, 38, 1),
            filled: true,
            hintText: "Enter your Email Address",
            labelText: "Email Addres",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            floatingLabelStyle: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            contentPadding: const EdgeInsets.all(15.0),
            hintStyle: const TextStyle(
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
            activeColor: const Color.fromRGBO(255, 137, 9, 1),
            onChanged: (value) {
              setState(() {
                _agreeterms = value;
              });
            },
            side: const BorderSide(color: Color.fromRGBO(255, 137, 9, 1)),
          ),
          SimpleRichText(
            'I agree to the *_Terms_* and *_Privacy Policy_*',
            style: GoogleFonts.chakraPetch(
                textStyle: const TextStyle(
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
            textStyle: const TextStyle(
          fontSize: 15,
          color: Colors.white,
        )),
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            fillColor: const Color.fromRGBO(26, 27, 38, 1),
            filled: true,
            hintText: "Enter your password",
            labelText: "Password",
            suffixIcon: const Icon(Icons.visibility_off_outlined),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            floatingLabelStyle: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            contentPadding: const EdgeInsets.all(15.0),
            hintStyle: const TextStyle(
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
          Navigator.push(context, MaterialPageRoute(builder: (_) => const Home()));
        },
        child: Text(
          "Sign In",
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(color: Colors.white),
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
            minimumSize: const Size(500, 50),
            primary: const Color.fromRGBO(255, 137, 9, 1)),
      ),
    );
  }

  Widget buildCreateanAccountWithGoogle() {
    return Padding(
      padding: const EdgeInsets.only(left: 95, right: 85),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => const Home()));
        },
        child: Text(
          "Sign In with Google",
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
                color: Color.fromRGBO(116, 116, 117, 1),
                fontWeight: FontWeight.bold),
          ),
        ),
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            minimumSize: const Size(250, 50),
            primary: Colors.white),
      ),
    );
  }

  Widget buildCreateanAccountWithApple() {
    return Padding(
      padding: const EdgeInsets.only(left: 95, right: 85),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => const Home()));
        },
        child: Text(
          "Sign In with Apple",
          style: GoogleFonts.roboto(
            textStyle:
                const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            minimumSize: const Size(250, 50),
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
                textStyle: const TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              )),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const TabBarPage()));
              },
              child: const Text(
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
