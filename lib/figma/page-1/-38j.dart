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
        // CZD (1:2638)
        width: double.infinity,
        height: 896*fem,
        decoration: BoxDecoration (
          color: Color(0xff143463),
          borderRadius: BorderRadius.circular(30*fem),
        ),
        child: Stack(
          children: [
            Positioned(
              // image4162Tk3 (1:2637)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 810*fem,
                  height: 896*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0xcc171f29),
                      image: DecorationImage (
                        fit: BoxFit.cover,
                        image: AssetImage (
                          'assets/page-1/images/image-4162-bg.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // chargemate1PGK (1:2640)
              left: 27*fem,
              top: 317*fem,
              child: Container(
                width: 360*fem,
                height: 262*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // groupqu1 (1:2674)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.79*fem, 17.76*fem),
                      width: 163.21*fem,
                      height: 166.9*fem,
                      child: Image.asset(
                        'assets/page-1/images/group-jts.png',
                        width: 163.21*fem,
                        height: 166.9*fem,
                      ),
                    ),
                    Container(
                      // katman1Xmq (1:2641)
                      width: 360*fem,
                      height: 77.34*fem,
                      child: Image.asset(
                        'assets/page-1/images/katman-1-FNo.png',
                        width: 360*fem,
                        height: 77.34*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}