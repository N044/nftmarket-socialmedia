import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter_application_tugas_kelompok_nftmarket/components/navbar.dart';

Widget home() {
  return Scaffold(
      appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.transparent,
          leadingWidth: 100,
          titleSpacing: 0.5,
          leading: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                image: const DecorationImage(
                  image: AssetImage('images/profile.jpg'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  color: Colors.orange,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(15),
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
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          minimum: EdgeInsets.all(48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(45),
                    child: Image(
                      fit: BoxFit.fill,
                      width: 300,
                      height: 300,
                      image: AssetImage('images/alienboy.png'),
                    ),
                  ),
                  Positioned(
                    top: 215,
                    bottom: 15,
                    left: 10,
                    right: 10,
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: double.infinity,
                        maxHeight: double.infinity,
                      ),
                      padding: EdgeInsets.only(
                        right: 25.0,
                        left: 25.0,
                        top: 15.0,
                        bottom: 2.0,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.8),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 5),
                            )
                          ]),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'AlienBoy',
                                style: GoogleFonts.chakraPetch(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                'ETH',
                                style: GoogleFonts.chakraPetch(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Etherium',
                                style: GoogleFonts.chakraPetch(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: Row(
                                  children: [
                                    Text(
                                      '0.25',
                                      style: GoogleFonts.chakraPetch(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(45),
                    child: Image(
                      fit: BoxFit.fill,
                      width: 300,
                      height: 300,
                      image: AssetImage('images/robot.jpg'),
                    ),
                  ),
                  Positioned(
                    top: 215,
                    bottom: 15,
                    left: 10,
                    right: 10,
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: double.infinity,
                        maxHeight: double.infinity,
                      ),
                      padding: EdgeInsets.only(
                        right: 25.0,
                        left: 25.0,
                        top: 20.0,
                        bottom: 2.0,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.8),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 5),
                            )
                          ]),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Robot',
                                style: GoogleFonts.chakraPetch(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                'ETH',
                                style: GoogleFonts.chakraPetch(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Etherium',
                                style: GoogleFonts.chakraPetch(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: Row(
                                  children: [
                                    Text(
                                      '1.3',
                                      style: GoogleFonts.chakraPetch(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ));
}

Widget wallet() {
  return SafeArea(
    child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            toolbarHeight: 100,
            backgroundColor: Colors.transparent,
            leading: Container(
                padding: EdgeInsets.only(left: 15),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 15,
                  ),
                  color: Colors.white,
                  onPressed: () {},
                )),
            title: Text(
              'Wallet',
              style: GoogleFonts.chakraPetch(
                  textStyle:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            )),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Text(
                  'Balance',
                  style: GoogleFonts.chakraPetch(
                      textStyle:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                ),
                Text(
                  'Rp 69.000.000,00',
                  style: GoogleFonts.chakraPetch(
                      textStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 45,
                    bottom: 10,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your Portfolio',
                        style: GoogleFonts.chakraPetch(
                          textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Positioned(
                    top: 10,
                    bottom: 5,
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: double.infinity,
                        maxHeight: double.infinity,
                      ),
                      padding: EdgeInsets.only(
                        right: 40.0,
                        left: 40.0,
                        top: 10.0,
                        bottom: 12.0,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.8),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 5),
                            )
                          ]),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Bitcoin',
                                style: GoogleFonts.chakraPetch(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Text(
                                'Rp 35.500.000,00',
                                style: GoogleFonts.chakraPetch(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'BTC',
                                style: GoogleFonts.chakraPetch(
                                  textStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: Row(
                                  children: [
                                    Text(
                                      '+69.00%',
                                      style: GoogleFonts.chakraPetch(
                                        textStyle: TextStyle(
                                          color: Colors.green,
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Positioned(
                    top: 10,
                    bottom: 5,
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: double.infinity,
                        maxHeight: double.infinity,
                      ),
                      padding: EdgeInsets.only(
                        right: 40.0,
                        left: 40.0,
                        top: 12.0,
                        bottom: 12.0,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.8),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 5),
                            )
                          ]),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Ethereum',
                                style: GoogleFonts.chakraPetch(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Text(
                                'Rp 17.250.000,00',
                                style: GoogleFonts.chakraPetch(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'ETH',
                                style: GoogleFonts.chakraPetch(
                                  textStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: Row(
                                  children: [
                                    Text(
                                      '+9.77%',
                                      style: GoogleFonts.chakraPetch(
                                        textStyle: TextStyle(
                                          color: Colors.green,
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Positioned(
                    top: 100,
                    bottom: 5,
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: double.infinity,
                        maxHeight: double.infinity,
                      ),
                      padding: EdgeInsets.only(
                        right: 40.0,
                        left: 40.0,
                        top: 12.0,
                        bottom: 12.0,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.8),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 5),
                            )
                          ]),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Cardano',
                                style: GoogleFonts.chakraPetch(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Text(
                                'Rp 9.000.000,00',
                                style: GoogleFonts.chakraPetch(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'ADA',
                                style: GoogleFonts.chakraPetch(
                                  textStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: Row(
                                  children: [
                                    Text(
                                      '-22.97%',
                                      style: GoogleFonts.chakraPetch(
                                        textStyle: TextStyle(
                                          color: Colors.red,
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Positioned(
                    top: 100,
                    bottom: 5,
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: double.infinity,
                        maxHeight: double.infinity,
                      ),
                      padding: EdgeInsets.only(
                        right: 40.0,
                        left: 40.0,
                        top: 12.0,
                        bottom: 12.0,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.8),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 5),
                            )
                          ]),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Dogecoin',
                                style: GoogleFonts.chakraPetch(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Text(
                                'Rp 7.250.000,00',
                                style: GoogleFonts.chakraPetch(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'DOGE',
                                style: GoogleFonts.chakraPetch(
                                  textStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: Row(
                                  children: [
                                    Text(
                                      '-16.58%',
                                      style: GoogleFonts.chakraPetch(
                                        textStyle: TextStyle(
                                          color: Colors.red,
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: (Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromRGBO(255, 137, 9, 1)),
                          child: Center(
                              child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Deposit',
                              style: GoogleFonts.chakraPetch(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      shadows: [
                                    Shadow(
                                        color: Colors.black.withOpacity(0.5),
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
                              border:
                                  Border.all(color: Colors.white, width: 1.0)),
                          child: Center(
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Withdraw',
                                    style: GoogleFonts.chakraPetch(
                                        textStyle: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            shadows: [
                                          Shadow(
                                              color:
                                                  Colors.black.withOpacity(0.5),
                                              offset: const Offset(3, 3),
                                              blurRadius: 5)
                                        ])),
                                  ))),
                        )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        )),
  );
}

Widget search() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text("This is search Part Page.",
          style: GoogleFonts.poppins(
            fontSize: 26,
          ))
    ],
  );
}

Widget profile() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text("This is profile page.",
          style: GoogleFonts.poppins(
            fontSize: 26,
          ))
    ],
  );
}
