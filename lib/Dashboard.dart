import 'package:flutter/material.dart';
import 'package:flutter_application_tugas_kelompok_nftmarket/sign_in.dart';
import 'sign_up.dart';
import 'package:google_fonts/google_fonts.dart';
import 'drawer.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  TextEditingController pass = TextEditingController();

  bool? _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 40, top: 50),
            child: Text(
              'WELC\nOME TO \nMavia \nNFTs \nMarket\nPlace',
              style: GoogleFonts.chakraPetch(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    height: 1.3,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 40, top: 420),
            child: Text(
              'The biggest n coolest\nNFTs Market Place number\none on the earth.',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13.5,
                height: 1.5,
                letterSpacing: 0.5,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.42),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 35,
                      right: 35,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 190,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: (Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color.fromRGBO(255, 137, 9, 1)),
                                child: Center(
                                    child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => SignUpPage()));
                                  },
                                  child: Text(
                                    'Sign Up',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            color: Colors.white,
                                            shadows: [
                                          Shadow(
                                              color:
                                                  Colors.black.withOpacity(0.5),
                                              offset: const Offset(3, 3),
                                              blurRadius: 5)
                                        ])),
                                  ),
                                )),
                              )),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(
                              child: (Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.grey[900],
                                    border: Border.all(
                                        color: Colors.white, width: 1.0)),
                                child: Center(
                                    child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (_) =>
                                                      SignInPage()));
                                        },
                                        child: Text(
                                          'Sign In',
                                          style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  color: Colors.white,
                                                  shadows: [
                                                Shadow(
                                                    color: Colors.black
                                                        .withOpacity(0.5),
                                                    offset: const Offset(3, 3),
                                                    blurRadius: 5)
                                              ])),
                                        ))),
                              )),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
