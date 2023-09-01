import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';


class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1262.8538818359;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // dikeylogo1uYb (1:734)
        width: double.infinity,
        height: 515*fem,
        child: Image.asset(
          'assets/page-1/images/dikey-logo-1.png',
          fit: BoxFit.cover,
        ),
      ),
          );
  }
}