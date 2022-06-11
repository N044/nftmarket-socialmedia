import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget home() {
  return Scaffold(
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
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text("This is wallet Section.",
          style: GoogleFonts.poppins(
            fontSize: 26,
          ))
    ],
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
