import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';


class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1066.8541259766;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // dikeysloganllogo1j1q (1:735)
        width: double.infinity,
        height: 515*fem,
        child: Image.asset(
          'assets/page-1/images/dikey-sloganl-logo-1.png',
          fit: BoxFit.cover,
        ),
      ),
          );
  }
}