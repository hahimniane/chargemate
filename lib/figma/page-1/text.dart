import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';


import '../utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 297;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // text4fh (1:1903)
        width: double.infinity,
        height: 48*fem,
        child: Text(
          'Charge Mate: Your Car\'s Best Friend for On-the-Go Charging!"',
          textAlign: TextAlign.center,
          style: SafeGoogleFont (
            'Montserrat',
            fontSize: 16*ffem,
            fontWeight: FontWeight.w400,
            height: 1.5*ffem/fem,
            letterSpacing: -0.4099999964*fem,
            color: Color(0xff555555),
          ),
        ),
      ),
          );
  }
}