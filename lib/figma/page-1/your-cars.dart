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
        // yourcarsD1q (202:960)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(20*fem),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/page-1/images/frame-33-rA3.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupzzxuPaX (JGjbYr61ACJx6E3U5bzZXu)
              padding: EdgeInsets.fromLTRB(15*fem, 30*fem, 15*fem, 25*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    offset: Offset(0*fem, 4*fem),
                    blurRadius: 7*fem,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // yataylogo1dzf (202:1013)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 19.57*fem),
                    width: 200*fem,
                    height: 36.43*fem,
                    child: Image.asset(
                      'assets/page-1/images/yatay-logo-1-X5h.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // autogroupgvrzhjd (JGjbfWZZruXZZFfZw8gVRZ)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 122*fem, 0*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group75913p3Z (202:1009)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 85*fem, 0*fem),
                          width: 48*fem,
                          height: 48*fem,
                          child: Image.asset(
                            'assets/page-1/images/group-75913-LCX.png',
                            width: 48*fem,
                            height: 48*fem,
                          ),
                        ),
                        Container(
                          // yourcars7HZ (202:1008)
                          margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                          child: Text(
                            'Your Cars',
                            style: SafeGoogleFont (
                              'Montserrat',
                              fontSize: 18*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2175*ffem/fem,
                              color: Color(0xff143463),
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
              // autogrouplq2jNDV (JGjbpFozf68ErbvKsGLQ2j)
              padding: EdgeInsets.fromLTRB(0*fem, 20*fem, 0*fem, 0*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xfffafafa),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame5013fTV (202:1020)
                    margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 15*fem, 15*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group759233yq (202:1021)
                          padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 20*fem),
                          width: double.infinity,
                          height: 90*fem,
                          decoration: BoxDecoration (
                            color: Color(0xfffafafa),
                            borderRadius: BorderRadius.circular(16*fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x19606470),
                                offset: Offset(0*fem, 5*fem),
                                blurRadius: 10*fem,
                              ),
                            ],
                          ),
                          child: Container(
                            // frame5012H7V (202:1023)
                            width: 199*fem,
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // rectangle1304DG3 (202:1024)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                                  width: 50*fem,
                                  height: 50*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(10*fem),
                                    color: Color(0xffd9d9d9),
                                    image: DecorationImage (
                                      fit: BoxFit.cover,
                                      image: AssetImage (
                                        'assets/page-1/images/rectangle-1304-bg-P9q.png',
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame5009td5 (202:1025)
                                  margin: EdgeInsets.fromLTRB(0*fem, 1.5*fem, 0*fem, 0.5*fem),
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // teslamodelynyM (202:1026)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                        child: Text(
                                          'Tesla Model Y',
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 18*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2175*ffem/fem,
                                            color: Color(0xff143463),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // U5V (202:1027)
                                        '123 456 789',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xff143463),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20*fem,
                        ),
                        Container(
                          // group75924PCT (202:1028)
                          padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 20*fem),
                          width: double.infinity,
                          height: 90*fem,
                          decoration: BoxDecoration (
                            color: Color(0xfffafafa),
                            borderRadius: BorderRadius.circular(16*fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x19606470),
                                offset: Offset(0*fem, 5*fem),
                                blurRadius: 10*fem,
                              ),
                            ],
                          ),
                          child: Container(
                            // frame50123Xu (202:1030)
                            width: 199*fem,
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // rectangle1304B8K (202:1031)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                                  width: 50*fem,
                                  height: 50*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(10*fem),
                                    color: Color(0xffd9d9d9),
                                    image: DecorationImage (
                                      fit: BoxFit.cover,
                                      image: AssetImage (
                                        'assets/page-1/images/rectangle-1304-bg-W8o.png',
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame5009FP5 (202:1032)
                                  margin: EdgeInsets.fromLTRB(0*fem, 1.5*fem, 0*fem, 0.5*fem),
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // teslamodelyMh1 (202:1033)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                        child: Text(
                                          'Tesla Model Y',
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 18*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2175*ffem/fem,
                                            color: Color(0xff143463),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // ew1 (202:1034)
                                        '123 456 789',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xff143463),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20*fem,
                        ),
                        Container(
                          // group75925jxT (202:1035)
                          padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 20*fem),
                          width: double.infinity,
                          height: 90*fem,
                          decoration: BoxDecoration (
                            color: Color(0xfffafafa),
                            borderRadius: BorderRadius.circular(16*fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x19606470),
                                offset: Offset(0*fem, 5*fem),
                                blurRadius: 10*fem,
                              ),
                            ],
                          ),
                          child: Container(
                            // frame50126Rd (202:1037)
                            width: 199*fem,
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // rectangle13042q5 (202:1038)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                                  width: 50*fem,
                                  height: 50*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(10*fem),
                                    color: Color(0xffd9d9d9),
                                    image: DecorationImage (
                                      fit: BoxFit.cover,
                                      image: AssetImage (
                                        'assets/page-1/images/rectangle-1304-bg.png',
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame5009vfZ (202:1039)
                                  margin: EdgeInsets.fromLTRB(0*fem, 1.5*fem, 0*fem, 0.5*fem),
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // teslamodelyRMR (202:1040)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                        child: Text(
                                          'Tesla Model Y',
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 18*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2175*ffem/fem,
                                            color: Color(0xff143463),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // Kxb (202:1041)
                                        '123 456 789',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xff143463),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20*fem,
                        ),
                        Container(
                          // group75926zYw (202:1042)
                          padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 20*fem),
                          width: double.infinity,
                          height: 90*fem,
                          decoration: BoxDecoration (
                            color: Color(0xfffafafa),
                            borderRadius: BorderRadius.circular(16*fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x19606470),
                                offset: Offset(0*fem, 5*fem),
                                blurRadius: 10*fem,
                              ),
                            ],
                          ),
                          child: Container(
                            // frame50125aP (202:1044)
                            width: 199*fem,
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // rectangle1304cqD (202:1045)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                                  width: 50*fem,
                                  height: 50*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(10*fem),
                                    color: Color(0xffd9d9d9),
                                    image: DecorationImage (
                                      fit: BoxFit.cover,
                                      image: AssetImage (
                                        'assets/page-1/images/rectangle-1304-bg-imu.png',
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame5009u3d (202:1046)
                                  margin: EdgeInsets.fromLTRB(0*fem, 1.5*fem, 0*fem, 0.5*fem),
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // teslamodelyRGs (202:1047)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                        child: Text(
                                          'Tesla Model Y',
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 18*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2175*ffem/fem,
                                            color: Color(0xff143463),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // vUX (202:1048)
                                        '123 456 789',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xff143463),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20*fem,
                        ),
                        Container(
                          // group7592721m (202:1049)
                          padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 20*fem),
                          width: double.infinity,
                          height: 90*fem,
                          decoration: BoxDecoration (
                            color: Color(0xfffafafa),
                            borderRadius: BorderRadius.circular(16*fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x19606470),
                                offset: Offset(0*fem, 5*fem),
                                blurRadius: 10*fem,
                              ),
                            ],
                          ),
                          child: Container(
                            // frame5012WxX (202:1051)
                            width: 199*fem,
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // rectangle1304Tsm (202:1052)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                                  width: 50*fem,
                                  height: 50*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(10*fem),
                                    color: Color(0xffd9d9d9),
                                    image: DecorationImage (
                                      fit: BoxFit.cover,
                                      image: AssetImage (
                                        'assets/page-1/images/rectangle-1304-bg-XMy.png',
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame50091no (202:1053)
                                  margin: EdgeInsets.fromLTRB(0*fem, 1.5*fem, 0*fem, 0.5*fem),
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // teslamodelyv95 (202:1054)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                        child: Text(
                                          'Tesla Model Y',
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 18*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2175*ffem/fem,
                                            color: Color(0xff143463),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // pkF (202:1055)
                                        '123 456 789',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xff143463),
                                        ),
                                      ),
                                    ],
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
                    // autogrouprlwyLTh (JGjbuFffgd3CTNduFurLwy)
                    width: double.infinity,
                    height: 88*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // homeindicatoronlightUZu (202:1015)
                          left: 120*fem,
                          top: 74*fem,
                          child: Container(
                            width: 134*fem,
                            height: 5*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(100*fem),
                            ),
                            child: Center(
                              // homeindicatorBjD (202:1016)
                              child: SizedBox(
                                width: double.infinity,
                                height: 5*fem,
                                child: Container(
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(100*fem),
                                    color: Color(0x0c333333),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // frame83tNj (202:1017)
                          left: 0*fem,
                          top: 0*fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 20*fem),
                            width: 375*fem,
                            height: 88*fem,
                            decoration: BoxDecoration (
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(16*fem),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x21000000),
                                  offset: Offset(0*fem, -3*fem),
                                  blurRadius: 5.5*fem,
                                ),
                              ],
                            ),
                            child: Container(
                              // buttonxdV (202:1018)
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0xff143463),
                                borderRadius: BorderRadius.circular(8*fem),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    'Add New Car',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.125*ffem/fem,
                                      letterSpacing: -0.0099999998*fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
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