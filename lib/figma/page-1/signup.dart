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
        // signupF8b (5:1191)
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
              // autogroupjnrkgUo (JGjNso37rZ1czpwi4oJNrK)
              width: 555*fem,
              height: 225.5*fem,
              child: Stack(
                children: [
                  Positioned(
                    // vector5ea3 (5:1195)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 456.5*fem,
                        height: 225.5*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-5-m43.png',
                          width: 456.5*fem,
                          height: 225.5*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle17vXZ (5:1196)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 375*fem,
                        height: 100*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            color: Color(0xff02e4ce),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group75907o5Z (5:1197)
                    left: 28.2083740234*fem,
                    top: 52*fem,
                    child: Container(
                      width: 196.79*fem,
                      height: 19*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group34205JY7 (5:1199)
                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 106.21*fem, 0*fem),
                            width: 15.58*fem,
                            height: 15.17*fem,
                            child: Image.asset(
                              'assets/page-1/images/group-34205-GsH.png',
                              width: 15.58*fem,
                              height: 15.17*fem,
                            ),
                          ),
                          Text(
                            // signupCNb (5:1198)
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
              // autogroupt4z3UL7 (JGjP3xQrUY4uPCGWhBT4z3)
              padding: EdgeInsets.fromLTRB(24*fem, 0.5*fem, 24*fem, 70*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group75902yXm (5:1204)
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
                          // group75894gSB (5:1205)
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
                                // firstnamekwq (5:1209)
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
                                // group18rV5 (5:1206)
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
                          // group75895tgf (5:1210)
                          width: 158*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(7*fem),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // lastnamenGF (5:1214)
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
                                // group19bDh (5:1211)
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
                    // frame355RiX (5:1215)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 300*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // phoneno9uR (5:1231)
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
                          // autogrouptfyqER5 (JGjPNSt3UQeT6r7wdyTfyq)
                          width: double.infinity,
                          height: 48*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // group19Xf5 (5:1221)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.11*fem, 0*fem),
                                padding: EdgeInsets.fromLTRB(7*fem, 14*fem, 6.35*fem, 14*fem),
                                width: 92*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  border: Border.all(color: Color(0xffd9d9d9)),
                                  borderRadius: BorderRadius.circular(7*fem),
                                ),
                                child: Container(
                                  // frame5004cwR (5:1223)
                                  padding: EdgeInsets.fromLTRB(0*fem, 1*fem, 4.44*fem, 0*fem),
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // group75904jFM (5:1224)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 1*fem),
                                        width: 23.09*fem,
                                        height: 15.88*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/group-75904-jAo.png',
                                          width: 23.09*fem,
                                          height: 15.88*fem,
                                        ),
                                      ),
                                      Container(
                                        // Cej (5:1228)
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
                                        // phcaretdownfillJSs (5:1229)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.5*fem),
                                        width: 8.85*fem,
                                        height: 5.5*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/ph-caret-down-fill.png',
                                          width: 8.85*fem,
                                          height: 5.5*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // group18QF1 (5:1216)
                                padding: EdgeInsets.fromLTRB(14.63*fem, 14.38*fem, 14.63*fem, 13.63*fem),
                                width: 226.89*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  border: Border.all(color: Color(0xffe63946)),
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(7*fem),
                                ),
                                child: Container(
                                  // frame5001gCX (5:1218)
                                  width: 56*fem,
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // 21V (5:1219)
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
                                        // 5Ef (5:1220)
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
                    // bodygkF (5:1232)
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
                    // frame235ZZ9 (5:1193)
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