import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import '../utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 795;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Center(
        // titleGhD (1:1900)
        child: Container(
          width: double.infinity,
          height: 30*fem,
          child: Text(
            'Unlock the Power of Charge Mate: Charge Your Car Anywhere!"',
            textAlign: TextAlign.center,
            style: SafeGoogleFont (
              'Montserrat',
              fontSize: 24*ffem,
              fontWeight: FontWeight.w700,
              height: 1.2175*ffem/fem,
              color: Color(0xff1c1468),
            ),
          ),
        ),
      ),
          );
  }
}