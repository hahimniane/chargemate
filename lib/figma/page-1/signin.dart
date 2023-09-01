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
        // signinW2K (5:826)
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
              // autogroupnxprvbq (JGjEocKZmAsUvCXHuLNxPR)
              width: 564*fem,
              height: 388*fem,
              child: Image.asset(
                'assets/page-1/images/auto-group-nxpr.png',
                width: 564*fem,
                height: 388*fem,
              ),
            ),
            Container(
              // otpverification3Af (5:830)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 10.5*fem),
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
            Center(
              // tittleX5q (5:848)
              child: Container(
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                constraints: BoxConstraints (
                  maxWidth: 204*fem,
                ),
                child: Text(
                  'Charge Mate with OTP Verification: Safe & Easy!',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Montserrat',
                    fontSize: 16*ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.2175*ffem/fem,
                    letterSpacing: 0.3000000119*fem,
                    color: Color(0xff145063),
                  ),
                ),
              ),
            ),
            Container(
              // autogroup1gf1M4s (JGjEwc6F1Dw1sqGcXa1Gf1)
              padding: EdgeInsets.fromLTRB(24*fem, 30.5*fem, 24*fem, 70*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame354sJ7 (5:831)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 104*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // phonenozNj (5:847)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                          width: double.infinity,
                          child: Text(
                            'Enter mobile no.*',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Montserrat',
                              fontSize: 15*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2175*ffem/fem,
                              color: Color(0xff737373),
                            ),
                          ),
                        ),
                        Container(
                          // autogroup4kq5FZZ (JGjF8MHLcRJ5R6DCcm4kq5)
                          width: double.infinity,
                          height: 48*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // group19AgX (5:837)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.11*fem, 0*fem),
                                padding: EdgeInsets.fromLTRB(7*fem, 14*fem, 6.35*fem, 14*fem),
                                width: 92*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  border: Border.all(color: Color(0xffd9d9d9)),
                                  borderRadius: BorderRadius.circular(7*fem),
                                ),
                                child: Container(
                                  // frame5004T9q (5:839)
                                  padding: EdgeInsets.fromLTRB(0*fem, 1*fem, 4.44*fem, 0*fem),
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // group75904jd9 (5:840)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 1*fem),
                                        width: 23.09*fem,
                                        height: 15.88*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/group-75904-BHy.png',
                                          width: 23.09*fem,
                                          height: 15.88*fem,
                                        ),
                                      ),
                                      Container(
                                        // nLX (5:844)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9.27*fem, 0*fem),
                                        child: Text(
                                          '+90',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 15*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2175*ffem/fem,
                                            color: Color(0xff145063),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // phcaretdownfillzSb (5:845)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.5*fem),
                                        width: 8.85*fem,
                                        height: 5.5*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/ph-caret-down-fill-sR9.png',
                                          width: 8.85*fem,
                                          height: 5.5*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // group182u5 (5:832)
                                padding: EdgeInsets.fromLTRB(14.63*fem, 14.38*fem, 14.63*fem, 13.63*fem),
                                width: 226.89*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  border: Border.all(color: Color(0xffe63946)),
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(7*fem),
                                ),
                                child: Container(
                                  // frame5001KdH (5:834)
                                  width: 56*fem,
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // evT (5:835)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                                        child: Text(
                                          '01234',
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 15*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2175*ffem/fem,
                                            letterSpacing: 0.9*fem,
                                            color: Color(0xff145063),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // 8aj (5:836)
                                        '|',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125*ffem/fem,
                                          letterSpacing: 0.96*fem,
                                          color: Color(0xff145063),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    // body3xb (5:849)
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                      constraints: BoxConstraints (
                        maxWidth: 240*fem,
                      ),
                      child: Text(
                        'We will send you a one -time password to this mobile number   ',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Montserrat',
                          fontSize: 14*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5*ffem/fem,
                          color: Color(0xff64748b),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // frame2356vs (5:828)
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
                        'SEND CODE',
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