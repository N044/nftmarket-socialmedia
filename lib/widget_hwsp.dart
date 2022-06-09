import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget home() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text("This is Home Page.",
          style: GoogleFonts.poppins(
            fontSize: 26,
          ))
    ],
  );
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
