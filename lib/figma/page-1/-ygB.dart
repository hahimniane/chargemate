import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';


class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 376.0009765625;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // LCo (12:27)
        width: double.infinity,
        height: 257.01*fem,
        child: Image.asset(
          'assets/page-1/images/-ZFu.png',
          width: 376*fem,
          height: 257.01*fem,
        ),
      ),
          );
  }
}