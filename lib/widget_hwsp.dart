import 'package:flutter/material.dart';
import 'package:flutter_application_tugas_kelompok_nftmarket/home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  image: NetworkImage(
                      'https://img.freepik.com/free-photo/handsome-confident-smiling-man-with-hands-crossed-chest_176420-18743.jpg?w=2000'),
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
              SizedBox(
                height: 0,
              ),
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
                    top: 220,
                    bottom: 10,
                    left: 10,
                    right: 10,
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: double.infinity,
                        maxHeight: double.infinity,
                      ),
                      padding: EdgeInsets.only(
                          right: 150.0, left: 0.0, top: 20.0, bottom: 7.0),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 5),
                            )
                          ]),
                      child: Text(
                        'Alien Boy',
                        textAlign: TextAlign.center,
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
                    top: 220,
                    bottom: 10,
                    left: 10,
                    right: 10,
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: double.infinity,
                        maxHeight: double.infinity,
                      ),
                      padding: EdgeInsets.only(
                          right: 150.0, left: 0.0, top: 20.0, bottom: 7.0),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 5),
                            )
                          ]),
                      child: Text(
                        'Alien Boy',
                        textAlign: TextAlign.center,
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
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Text(
                  'Balance',
                  style: GoogleFonts.chakraPetch(
                      textStyle:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                ),
                Text(
                  'Rp 69.000.000,00',
                  style: GoogleFonts.chakraPetch(
                      textStyle:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50, bottom: 10),
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
                                fontSize: 15, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 30,
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) => ListTile(
                      leading: Container(
                        width: 50,
                        height: 50,
                        child: Icon(
                          FontAwesomeIcons.bitcoin,
                          color: Colors.white,
                        ),
                      ),
                      title: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Bitcoin',
                                style: GoogleFonts.chakraPetch(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Text(
                                'Rp 35.500.000,00',
                                style: GoogleFonts.chakraPetch(
                                    textStyle: TextStyle(
                                        color: Colors.white, fontSize: 16)),
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
                                        color: Colors.grey, fontSize: 16)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 6),
                                child: Row(
                                  children: [
                                    Text(
                                      '+69.00%',
                                      style: GoogleFonts.chakraPetch(
                                          textStyle: TextStyle(
                                              color: Colors.green,
                                              fontSize: 16)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    separatorBuilder: (context, index) => Divider(),
                    itemCount: 4,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 35),
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
