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
        // signup1mmh (5:1035)
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
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              // autogroupxkhumv7 (JGjKgZ2SjzmRSee6vgxkHu)
              width: 564*fem,
              height: 388*fem,
              child: Stack(
                children: [
                  Positioned(
                    // vector56Sb (5:1039)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 456.5*fem,
                        height: 225.5*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-5.png',
                          width: 456.5*fem,
                          height: 225.5*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group75909kX9 (104:23)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 410*fem,
                        height: 302*fem,
                        child: Image.asset(
                          'assets/page-1/images/group-75909.png',
                          width: 410*fem,
                          height: 302*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group75907Wud (5:1184)
                    left: 28.2083740234*fem,
                    top: 32*fem,
                    child: Container(
                      width: 196.79*fem,
                      height: 19*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group34205RFu (5:1186)
                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 106.21*fem, 0*fem),
                            width: 15.58*fem,
                            height: 15.17*fem,
                            child: Image.asset(
                              'assets/page-1/images/group-34205-Fuq.png',
                              width: 15.58*fem,
                              height: 15.17*fem,
                            ),
                          ),
                          Text(
                            // signupuwm (5:1185)
                            'Sign Up',
                            style: SafeGoogleFont (
                              'Montserrat',
                              fontSize: 18*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.0555555556*ffem/fem,
                              letterSpacing: 0.36*fem,
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
            Container(
              // autogroupeeismyy (JGjKrt4Zvu451qrZQAEEis)
              padding: EdgeInsets.fromLTRB(24*fem, 30*fem, 24*fem, 70*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group759025Us (5:1155)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 30*fem),
                    width: double.infinity,
                    height: 76*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(7*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group75894NTy (5:1156)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
                          width: 158*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(7*fem),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // firstnameF1y (5:1160)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                child: Text(
                                  'First Name*',
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
                                // group18Lp7 (5:1157)
                                padding: EdgeInsets.fromLTRB(15*fem, 15*fem, 15*fem, 14*fem),
                                width: double.infinity,
                                decoration: BoxDecoration (
                                  border: Border.all(color: Color(0xffd9d9d9)),
                                  borderRadius: BorderRadius.circular(7*fem),
                                ),
                                child: Text(
                                  'John',
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 15*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2175*ffem/fem,
                                    color: Color(0xff145063),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // group75895aiT (5:1161)
                          width: 158*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(7*fem),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // lastname7Cb (5:1165)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                child: Text(
                                  'Last Name*',
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
                                // group19pco (5:1162)
                                padding: EdgeInsets.fromLTRB(15*fem, 15*fem, 15*fem, 14*fem),
                                width: double.infinity,
                                decoration: BoxDecoration (
                                  border: Border.all(color: Color(0xffd9d9d9)),
                                  borderRadius: BorderRadius.circular(7*fem),
                                ),
                                child: Text(
                                  'Doe',
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 15*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2175*ffem/fem,
                                    color: Color(0xff145063),
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
                    // frame355oDq (5:1166)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 108*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // phonenoSGo (5:1182)
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
                          // autogrouptspwugB (JGjLAsYbE1wXB232ogtSpw)
                          width: double.infinity,
                          height: 48*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // group19FV9 (5:1172)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.11*fem, 0*fem),
                                padding: EdgeInsets.fromLTRB(7*fem, 14*fem, 6.35*fem, 14*fem),
                                width: 92*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  border: Border.all(color: Color(0xffd9d9d9)),
                                  borderRadius: BorderRadius.circular(7*fem),
                                ),
                                child: Container(
                                  // frame5004LmV (5:1174)
                                  padding: EdgeInsets.fromLTRB(0*fem, 1*fem, 4.44*fem, 0*fem),
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // group759043vo (5:1175)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 1*fem),
                                        width: 23.09*fem,
                                        height: 15.88*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/group-75904.png',
                                          width: 23.09*fem,
                                          height: 15.88*fem,
                                        ),
                                      ),
                                      Container(
                                        // gym (5:1179)
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
                                        // phcaretdownfillPdH (5:1180)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.5*fem),
                                        width: 8.85*fem,
                                        height: 5.5*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/ph-caret-down-fill-Esy.png',
                                          width: 8.85*fem,
                                          height: 5.5*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // group18GSB (5:1167)
                                padding: EdgeInsets.fromLTRB(14.63*fem, 14.38*fem, 14.63*fem, 13.63*fem),
                                width: 226.89*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  border: Border.all(color: Color(0xffe63946)),
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(7*fem),
                                ),
                                child: Container(
                                  // frame5001MyR (5:1169)
                                  width: 56*fem,
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // W5d (5:1170)
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
                                        // N7q (5:1171)
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
                    // body5Y3 (5:1183)
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
                    // frame235osM (5:1037)
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