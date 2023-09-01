import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';


class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 771.7431640625;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // ingilizceyataysloganllogo1E71 (1:736)
        width: double.infinity,
        height: 150*fem,
        child: Image.asset(
          'assets/page-1/images/ingilizce-yatay-sloganl-logo-1.png',
          fit: BoxFit.cover,
        ),
      ),
          );
  }
}