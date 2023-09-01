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
        // zaB (5:245)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(30*fem),
          // borderRadius: BorderRadius.only (
          //   topLeft: Radius.circular(16*fem),
          //   topRight: Radius.circular(16*fem),
          // ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogrouphrct4pw (JGjFzzVd9RM8A6wZuahRCT)
              width: 564*fem,
              height: 388*fem,
              child: Image.asset(
                'assets/page-1/images/auto-group-hrct.png',
                width: 564*fem,
                height: 388*fem,
              ),
            ),
            Container(
              // otpverification9Lb (5:249)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 29*fem),
              child: Text(
                'OTP Verification',
                style: SafeGoogleFont (
                  'Montserrat',
                  fontSize: 24*ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2175*ffem/fem,
                  color: Color(0xff143463),
                ),
              ),
            ),
            Text(
              // entertheotpsentto90111222333og (5:363)
              'Enter the OTP sent to +90 111 222 333',
              textAlign: TextAlign.center,
              style: SafeGoogleFont (
                'Montserrat',
                fontSize: 16*ffem,
                fontWeight: FontWeight.w400,
                height: 1.5*ffem/fem,
                color: Color(0xff143463),
              ),
            ),
            Container(
              // autogroupg8mmWqM (JGjG9VFU6E6kgDMr55g8Mm)
              padding: EdgeInsets.fromLTRB(24*fem, 30*fem, 24*fem, 70*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group75903oJf (5:343)
                    margin: EdgeInsets.fromLTRB(55*fem, 0*fem, 56*fem, 107*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // 863 (5:345)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.34*fem, 20*fem),
                          child: Text(
                            '02:32',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Montserrat',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2175*ffem/fem,
                              color: Color(0xff143463),
                            ),
                          ),
                        ),
                        Container(
                          // frame5003pjZ (5:346)
                          width: double.infinity,
                          height: 48*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // group75890j5q (5:347)
                                width: 48*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(4*fem),
                                ),
                                child: Container(
                                  // group75882G5m (5:348)
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
                                        color: Color(0xff143463),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8*fem,
                              ),
                              Container(
                                // group75891i6B (5:351)
                                width: 48*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(4*fem),
                                ),
                                child: Container(
                                  // group75882SXy (5:352)
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
                                        color: Color(0xff143463),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8*fem,
                              ),
                              Container(
                                // group758924pF (5:355)
                                width: 48*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(4*fem),
                                ),
                                child: Container(
                                  // group75882yAX (5:356)
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
                                        color: Color(0xff143463),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8*fem,
                              ),
                              Container(
                                // group75893B1h (5:359)
                                width: 48*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(4*fem),
                                ),
                                child: Container(
                                  // group75882XLT (5:360)
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
                                        color: Color(0xff143463),
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
                    // didntyourecivetheotpresendotpA (5:364)
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
                              color: Color(0xff143463),
                              decorationColor: Color(0xff143463),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // frame235nb9 (5:247)
                    width: double.infinity,
                    height: 58*fem,
                    decoration: BoxDecoration (
                      color: Color(0xff143463),
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