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
        // mZ9 (1:2016)
        padding: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(30*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // shutterstock1980807548converte (12:158)
              width: 569*fem,
              height: 386*fem,
              child: Image.asset(
                'assets/page-1/images/shutterstock1980807548-converted-1.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // autogroupb5dq5iF (JGjCfft5WMRi3swpDhB5Dq)
              padding: EdgeInsets.fromLTRB(27*fem, 40*fem, 28*fem, 30*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame2yod (1:2554)
                    margin: EdgeInsets.fromLTRB(11.5*fem, 0*fem, 10.5*fem, 40*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          // titleuSP (1:2555)
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
                                color: Color(0xff145063),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // textaqM (1:2556)
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
                    // step4kX (1:2558)
                    margin: EdgeInsets.fromLTRB(118*fem, 0*fem, 118*fem, 52*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // rectangle21ZxB (I1:2559;711:68)
                          width: 16*fem,
                          height: 8*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(6*fem),
                            color: Color(0x3f145063),
                          ),
                        ),
                        SizedBox(
                          width: 10*fem,
                        ),
                        Container(
                          // rectangle21qPu (I1:2560;711:68)
                          width: 16*fem,
                          height: 8*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(6*fem),
                            color: Color(0x3f145063),
                          ),
                        ),
                        SizedBox(
                          width: 10*fem,
                        ),
                        Container(
                          // rectangle20xDd (I1:2561;711:67)
                          width: 32*fem,
                          height: 8*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(6*fem),
                            color: Color(0xff145063),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame83gvK (1:2551)
                    padding: EdgeInsets.fromLTRB(20*fem, 20*fem, 20*fem, 5*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xff145063),
                      borderRadius: BorderRadius.circular(16*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // buttonyPd (1:2552)
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
                                  color: Color(0xff145063),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // button38b (1:2553)
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
          ],
        ),
      ),
          );
  }
}