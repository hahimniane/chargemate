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
        // mFM (1:43)
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
              // frameqW7 (1:193)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 100*fem),
              width: 347.71*fem,
              height: 259*fem,
              child: Image.asset(
                'assets/page-1/images/frame.png',
                width: 347.71*fem,
                height: 259*fem,
              ),
            ),
            Container(
              // frame2hoD (1:731)
              margin: EdgeInsets.fromLTRB(20.21*fem, 0*fem, 29.5*fem, 40*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    // titleCzs (1:732)
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
                          color: Color(0xff1c1468),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // textTR1 (1:733)
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
              // stepWPH (1:1993)
              margin: EdgeInsets.fromLTRB(126.71*fem, 0*fem, 137*fem, 52*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // rectangle21DoV (I1:1995;711:68)
                    width: 16*fem,
                    height: 8*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(6*fem),
                      color: Color(0x3f1c1468),
                    ),
                  ),
                  SizedBox(
                    width: 10*fem,
                  ),
                  Container(
                    // rectangle21jmq (I1:1996;711:68)
                    width: 16*fem,
                    height: 8*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(6*fem),
                      color: Color(0x3f1c1468),
                    ),
                  ),
                  SizedBox(
                    width: 10*fem,
                  ),
                  Container(
                    // rectangle20R8s (I1:1994;711:67)
                    width: 32*fem,
                    height: 8*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(6*fem),
                      color: Color(0xff1c1468),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame83kB9 (1:778)
              margin: EdgeInsets.fromLTRB(8.71*fem, 0*fem, 19*fem, 0*fem),
              padding: EdgeInsets.fromLTRB(20*fem, 20*fem, 20*fem, 5*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xff1c1468),
                borderRadius: BorderRadius.circular(16*fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // buttonR2P (1:779)
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
                            color: Color(0xff1c1468),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // buttonXUj (1:780)
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