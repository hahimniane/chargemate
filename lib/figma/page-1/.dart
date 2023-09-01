import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // KUK (1:15)
        padding: EdgeInsets.fromLTRB(27*fem, 317*fem, 27*fem, 317*fem),
        width: double.infinity,
        height: 896*fem,
        decoration: BoxDecoration (
          color: Color(0xe0263a96),
          borderRadius: BorderRadius.circular(30*fem),
        ),
        child: Container(
          // chargemate1htB (1:740)
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // group1dy (1:774)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.79*fem, 17.76*fem),
                width: 163.21*fem,
                height: 166.9*fem,
                child: Image.asset(
                  'assets/page-1/images/group.png',
                  width: 163.21*fem,
                  height: 166.9*fem,
                ),
              ),
              Container(
                // katman1VJF (1:741)
                width: 360*fem,
                height: 77.34*fem,
                child: Image.asset(
                  'assets/page-1/images/katman-1.png',
                  width: 360*fem,
                  height: 77.34*fem,
                ),
              ),
            ],
          ),
        ),
      ),
          );
  }
}