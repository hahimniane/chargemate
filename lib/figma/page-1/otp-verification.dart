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
        // otpverificationwi7 (5:929)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          // borderRadius: BorderRadius.circular(30*fem),
          borderRadius: BorderRadius.only (
            topLeft: Radius.circular(16*fem),
            topRight: Radius.circular(16*fem),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogrouppzjuLkF (JGjH4Nu1HcmESNcXHbPZju)
              width: 564*fem,
              height: 388*fem,
              child: Image.asset(
                'assets/page-1/images/auto-group-pzju.png',
                width: 564*fem,
                height: 388*fem,
              ),
            ),
            Container(
              // otpverificationEqd (5:933)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 29*fem),
              child: Text(
                'OTP Verification',
                style: SafeGoogleFont (
                  'Montserrat',
                  fontSize: 24*ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2175*ffem/fem,
                  color: Color(0xff145063),
                ),
              ),
            ),
            Text(
              // entertheotpsentto90111222333uw (5:1028)
              'Enter the OTP sent to +90 111 222 333',
              textAlign: TextAlign.center,
              style: SafeGoogleFont (
                'Montserrat',
                fontSize: 16*ffem,
                fontWeight: FontWeight.w400,
                height: 1.5*ffem/fem,
                color: Color(0xff145063),
              ),
            ),
            Container(
              // autogrouprtapzTR (JGjHENcMLgb9dv3g4tRTaP)
              padding: EdgeInsets.fromLTRB(24*fem, 30*fem, 24*fem, 70*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group75903hcj (5:1008)
                    margin: EdgeInsets.fromLTRB(55*fem, 0*fem, 56*fem, 107*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // D5H (5:1010)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.34*fem, 20*fem),
                          child: Text(
                            '02:32',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Montserrat',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2175*ffem/fem,
                              color: Color(0xff145063),
                            ),
                          ),
                        ),
                        Container(
                          // frame5003GJT (5:1011)
                          width: double.infinity,
                          height: 48*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // group75890HDZ (5:1012)
                                width: 48*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(4*fem),
                                ),
                                child: Container(
                                  // group75882ztf (5:1013)
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: Color(0xff5cd1bf)),
                                    color: Color(0xffffffff),
                                    borderRadius: BorderRadius.circular(4*fem),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x2829f586),
                                        offset: Offset(0*fem, 4*fem),
                                        blurRadius: 4*fem,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      '3',
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0xff145063),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8*fem,
                              ),
                              Container(
                                // group75891M6w (5:1016)
                                width: 48*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(4*fem),
                                ),
                                child: Container(
                                  // group75882HmH (5:1017)
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: Color(0xff5cd1bf)),
                                    color: Color(0xffffffff),
                                    borderRadius: BorderRadius.circular(4*fem),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x2829f586),
                                        offset: Offset(0*fem, 4*fem),
                                        blurRadius: 4*fem,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      '6',
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0xff145063),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8*fem,
                              ),
                              Container(
                                // group758926Cw (5:1020)
                                width: 48*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(4*fem),
                                ),
                                child: Container(
                                  // group75882dCs (5:1021)
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: Color(0xff5cd1bf)),
                                    color: Color(0xffffffff),
                                    borderRadius: BorderRadius.circular(4*fem),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x2829f586),
                                        offset: Offset(0*fem, 4*fem),
                                        blurRadius: 4*fem,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      '2',
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0xff145063),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8*fem,
                              ),
                              Container(
                                // group758933Gb (5:1024)
                                width: 48*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(4*fem),
                                ),
                                child: Container(
                                  // group75882P5Z (5:1025)
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: Color(0xff5cd1bf)),
                                    color: Color(0xffffffff),
                                    borderRadius: BorderRadius.circular(4*fem),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x2829f586),
                                        offset: Offset(0*fem, 4*fem),
                                        blurRadius: 4*fem,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      '4',
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 24*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0xff145063),
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
                  Container(
                    // didntyourecivetheotpresendotpp (5:1029)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: SafeGoogleFont (
                          'Montserrat',
                          fontSize: 14*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.7142857143*ffem/fem,
                          color: Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: 'Didn’t you recive the OTP? ',
                            style: SafeGoogleFont (
                              'Montserrat',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.7142857143*ffem/fem,
                              color: Color(0xff737373),
                            ),
                          ),
                          TextSpan(
                            text: 'Resend OTP',
                            style: SafeGoogleFont (
                              'Montserrat',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.7142857143*ffem/fem,
                              decoration: TextDecoration.underline,
                              color: Color(0xff145063),
                              decorationColor: Color(0xff145063),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // frame235JXH (5:931)
                    width: double.infinity,
                    height: 58*fem,
                    decoration: BoxDecoration (
                      color: Color(0xff145063),
                      borderRadius: BorderRadius.circular(16*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x23000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 6.5*fem,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'VERIFY',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Montserrat',
                          fontSize: 15*ffem,
                          fontWeight: FontWeight.w700,
                          height: 2.5333333333*ffem/fem,
                          color: Color(0xffffffff),
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