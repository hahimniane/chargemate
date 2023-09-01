import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import '../utils.dart';


class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // mAf (1:810)
        padding: EdgeInsets.fromLTRB(18.29*fem, 70*fem, 9*fem, 30*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(30*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frameYaj (1:811)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 100*fem),
              width: 347.71*fem,
              height: 259*fem,
              child: Image.asset(
                'assets/page-1/images/frame-T67.png',
                width: 347.71*fem,
                height: 259*fem,
              ),
            ),
            Container(
              // frame2p2T (1:1905)
              margin: EdgeInsets.fromLTRB(20.21*fem, 0*fem, 29.5*fem, 40*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    // titleitX (1:1906)
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                      child: Text(
                        'Supercharge Your Car',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Montserrat',
                          fontSize: 26*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2175*ffem/fem,
                          color: Color(0xff143463),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // textmM1 (1:1907)
                    constraints: BoxConstraints (
                      maxWidth: 265*fem,
                    ),
                    child: Text(
                      'Charge Up with Charge Mate: Find Your Closest Electric Car Charging Station Now!"',
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
                ],
              ),
            ),
            Container(
              // stepefh (1:2001)
              margin: EdgeInsets.fromLTRB(126.71*fem, 0*fem, 137*fem, 52*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // rectangle218as (I1:2002;711:68)
                    width: 16*fem,
                    height: 8*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(6*fem),
                      color: Color(0x3f143463),
                    ),
                  ),
                  SizedBox(
                    width: 10*fem,
                  ),
                  Container(
                    // rectangle218DV (I1:2003;711:68)
                    width: 16*fem,
                    height: 8*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(6*fem),
                      color: Color(0x3f143463),
                    ),
                  ),
                  SizedBox(
                    width: 10*fem,
                  ),
                  Container(
                    // rectangle2012P (I1:2004;711:67)
                    width: 32*fem,
                    height: 8*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(6*fem),
                      color: Color(0xff143463),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame83WUw (1:1351)
              margin: EdgeInsets.fromLTRB(8.71*fem, 0*fem, 19*fem, 0*fem),
              padding: EdgeInsets.fromLTRB(20*fem, 20*fem, 20*fem, 5*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xff143463),
                borderRadius: BorderRadius.circular(16*fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // buttonBb5 (1:1352)
                    width: double.infinity,
                    height: 56*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(8*fem),
                    ),
                    child: Center(
                      child: Center(
                        child: Text(
                          'GET STARTED',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Montserrat',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.125*ffem/fem,
                            letterSpacing: -0.0099999998*fem,
                            color: Color(0xff143463),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // buttondCB (1:1353)
                    width: double.infinity,
                    height: 48*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(8*fem),
                    ),
                    child: Center(
                      child: Center(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: SafeGoogleFont (
                              'Montserrat',
                              fontSize: 13*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3846153846*ffem/fem,
                              letterSpacing: 0.4900000095*fem,
                              color: Color(0xffffffff),
                            ),
                            children: [
                              TextSpan(
                                text: 'Already have an account? ',
                              ),
                              TextSpan(
                                text: 'Sign in',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 13*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.3846153846*ffem/fem,
                                  letterSpacing: 0.4900000095*fem,
                                  decoration: TextDecoration.underline,
                                  color: Color(0xffffffff),
                                  decorationColor: Color(0xffffffff),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}