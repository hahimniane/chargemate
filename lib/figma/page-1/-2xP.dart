import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';


class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // kpP (1:1953)
        width: double.infinity,
        height: 896*fem,
        child: Image.asset(
          'assets/page-1/images/.png',
          width: 414*fem,
          height: 896*fem,
        ),
      ),
          );
  }
}