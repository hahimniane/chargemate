import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';


class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 824.7055664062;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // yataylogo1F27 (1:737)
        width: double.infinity,
        height: 150*fem,
        child: Image.asset(
          'assets/page-1/images/yatay-logo-1-KP5.png',
          fit: BoxFit.cover,
        ),
      ),
          );
  }
}