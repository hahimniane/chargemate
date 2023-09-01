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
        // commentsMhH (277:3252)
        width: double.infinity,
        height: 908*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(20*fem),
        ),
        child: Stack(
          children: [
            Positioned(
              // frame33Jkw (277:3253)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 375*fem,
                  height: 812*fem,
                  child: Image.asset(
                    'assets/page-1/images/frame-33-wJ7.png',
                    width: 375*fem,
                    height: 812*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle17J8f (277:3299)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 375*fem,
                  height: 159*fem,
                  child: Container(
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
                  ),
                ),
              ),
            ),
            Positioned(
              // zesradissonhoteliiB (277:3300)
              left: 95*fem,
              top: 100*fem,
              child: Align(
                child: SizedBox(
                  width: 185*fem,
                  height: 22*fem,
                  child: Text(
                    'ZES-Radisson Hotel',
                    style: SafeGoogleFont (
                      'Montserrat',
                      fontSize: 18*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2175*ffem/fem,
                      color: Color(0xff143463),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group75913Zyh (277:3301)
              left: 15*fem,
              top: 86*fem,
              child: Align(
                child: SizedBox(
                  width: 48*fem,
                  height: 48*fem,
                  child: Image.asset(
                    'assets/page-1/images/group-75913-opb.png',
                    width: 48*fem,
                    height: 48*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // yataylogo1qAX (277:3305)
              left: 87*fem,
              top: 30*fem,
              child: Align(
                child: SizedBox(
                  width: 200*fem,
                  height: 36.43*fem,
                  child: Image.asset(
                    'assets/page-1/images/yatay-logo-1-7r7.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle1303XZ9 (277:3306)
              left: 0*fem,
              top: 159*fem,
              child: Align(
                child: SizedBox(
                  width: 375*fem,
                  height: 749*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0xfffafafa),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group75923QN3 (277:3307)
              left: 15*fem,
              top: 626*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 19*fem),
                width: 345*fem,
                height: 122*fem,
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
                  // frame5012eGP (277:3309)
                  width: double.infinity,
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // group75941yZZ (277:3310)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                        padding: EdgeInsets.fromLTRB(6*fem, 17.5*fem, 5*fem, 16.5*fem),
                        width: 64*fem,
                        height: 82*fem,
                        decoration: BoxDecoration (
                          color: Color(0xff57b78b),
                          borderRadius: BorderRadius.circular(8*fem),
                        ),
                        child: Container(
                          // frame75947csR (277:3312)
                          width: double.infinity,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // chargedjh9 (277:3313)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                child: Text(
                                  'Charged',
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 12*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.3339999517*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Container(
                                // ratings8DV (277:3314)
                                margin: EdgeInsets.fromLTRB(12.5*fem, 0*fem, 12.5*fem, 0*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // CDM (277:3315)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                                      child: Text(
                                        '5',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.3339999914*ffem/fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // starVTM (277:3316)
                                      width: 16*fem,
                                      height: 16*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/star-qom.png',
                                        width: 16*fem,
                                        height: 16*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // frame75946oiw (277:3318)
                        width: 236*fem,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // frame75944LD5 (277:3319)
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // melikearSK (277:3320)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 101*fem, 0*fem),
                                    child: Text(
                                      'Melike A.',
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 13*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0xff143463),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // mercedeseqekXh (277:3321)
                                    margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                    child: Text(
                                      'Mercedes EQE',
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 10*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0xff143463),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12*fem,
                            ),
                            Container(
                              // thelocationofthestationisfinei (277:3323)
                              constraints: BoxConstraints (
                                maxWidth: 201*fem,
                              ),
                              child: Text(
                                'The location of the station is fine.\nI didn\'t have any trouble',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2175*ffem/fem,
                                  color: Color(0xff143463),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12*fem,
                            ),
                            Container(
                              // frame75945fYB (277:3324)
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // actype2R1Z (277:3325)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 107*fem, 0*fem),
                                    child: Text(
                                      'AC Type 2',
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 10*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0xff143463),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // hjm (277:3326)
                                    '03.12.2022 09:34',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 10*ffem,
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
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // group75924Ejh (277:3327)
              left: 15*fem,
              top: 768*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 19*fem),
                width: 345*fem,
                height: 122*fem,
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
                  // frame5012grb (277:3329)
                  width: double.infinity,
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // group75941xJK (277:3330)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                        padding: EdgeInsets.fromLTRB(6.5*fem, 9.5*fem, 5.5*fem, 8.5*fem),
                        width: 64*fem,
                        height: 82*fem,
                        decoration: BoxDecoration (
                          color: Color(0xffe63946),
                          borderRadius: BorderRadius.circular(8*fem),
                        ),
                        child: Container(
                          // frame75947M5Z (277:3332)
                          width: double.infinity,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                // failedtochargegNj (277:3333)
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                  constraints: BoxConstraints (
                                    maxWidth: 52*fem,
                                  ),
                                  child: Text(
                                    'Failed to Charge',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.3339999517*ffem/fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // ratingsjro (277:3334)
                                margin: EdgeInsets.fromLTRB(13.5*fem, 0*fem, 13.5*fem, 0*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // si7 (277:3335)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                                      child: Text(
                                        '1',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.3339999914*ffem/fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // startNK (277:3336)
                                      width: 16*fem,
                                      height: 16*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/star-BxK.png',
                                        width: 16*fem,
                                        height: 16*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // frame75946oVH (277:3338)
                        width: 236*fem,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // frame7594481m (277:3339)
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // melikeafnP (277:3340)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 101*fem, 0*fem),
                                    child: Text(
                                      'Melike A.',
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 13*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0xff143463),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // mercedeseqexWb (277:3341)
                                    margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                    child: Text(
                                      'Mercedes EQE',
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 10*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0xff143463),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12*fem,
                            ),
                            Container(
                              // thelocationofthestationisfinei (277:3343)
                              constraints: BoxConstraints (
                                maxWidth: 201*fem,
                              ),
                              child: Text(
                                'The location of the station is fine.\nI didn\'t have any trouble',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2175*ffem/fem,
                                  color: Color(0xff143463),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12*fem,
                            ),
                            Container(
                              // frame75945WRd (277:3344)
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // actype2s1H (277:3345)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 107*fem, 0*fem),
                                    child: Text(
                                      'AC Type 2',
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 10*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0xff143463),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // Am5 (277:3346)
                                    '03.12.2022 09:34',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 10*ffem,
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
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // frame7593622b (277:3348)
              left: 15*fem,
              top: 487*fem,
              child: Container(
                width: 347*fem,
                height: 41*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame50053yH (277:3349)
                      width: 61*fem,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19606470),
                            offset: Offset(0*fem, 5*fem),
                            blurRadius: 10*fem,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Station',
                          style: SafeGoogleFont (
                            'Montserrat',
                            fontSize: 14*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2175*ffem/fem,
                            color: Color(0xff143463),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25*fem,
                    ),
                    Container(
                      // frame5006U31 (277:3351)
                      width: 59*fem,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19606470),
                            offset: Offset(0*fem, 5*fem),
                            blurRadius: 10*fem,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Socket',
                          style: SafeGoogleFont (
                            'Montserrat',
                            fontSize: 14*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2175*ffem/fem,
                            color: Color(0xff143463),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25*fem,
                    ),
                    Container(
                      // frame500787Z (277:3353)
                      width: 61*fem,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19606470),
                            offset: Offset(0*fem, 5*fem),
                            blurRadius: 10*fem,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Facility',
                          style: SafeGoogleFont (
                            'Montserrat',
                            fontSize: 14*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2175*ffem/fem,
                            color: Color(0xff143463),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25*fem,
                    ),
                    Container(
                      // frame5008B5q (277:3355)
                      width: 91*fem,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        border: Border.all(color: Color(0xff143463)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19606470),
                            offset: Offset(0*fem, 5*fem),
                            blurRadius: 10*fem,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Comments',
                          style: SafeGoogleFont (
                            'Montserrat',
                            fontSize: 14*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2175*ffem/fem,
                            color: Color(0xff143463),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // frame75935peb (277:3357)
              left: 154*fem,
              top: 446*fem,
              child: Container(
                width: 68*fem,
                height: 7*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // rectangle1307KLT (277:3358)
                      width: 20*fem,
                      height: 7*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(19*fem),
                        color: Color(0xff242b52),
                      ),
                    ),
                    SizedBox(
                      width: 5*fem,
                    ),
                    Container(
                      // rectangle1308SR5 (277:3359)
                      width: 7*fem,
                      height: 7*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(6*fem),
                        color: Color(0x66242b52),
                      ),
                    ),
                    SizedBox(
                      width: 5*fem,
                    ),
                    Container(
                      // rectangle1309jf5 (277:3360)
                      width: 7*fem,
                      height: 7*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(6*fem),
                        color: Color(0x66242b52),
                      ),
                    ),
                    SizedBox(
                      width: 5*fem,
                    ),
                    Container(
                      // rectangle1310fYj (277:3361)
                      width: 7*fem,
                      height: 7*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(6*fem),
                        color: Color(0x66242b52),
                      ),
                    ),
                    SizedBox(
                      width: 5*fem,
                    ),
                    Container(
                      // rectangle1311CHm (277:3362)
                      width: 7*fem,
                      height: 7*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(6*fem),
                        color: Color(0x66242b52),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // frame75924uxs (277:3363)
              left: 15*fem,
              top: 179*fem,
              child: Container(
                width: 350*fem,
                height: 35*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupvietN5m (JGkBgXt1tvp2EqU466viET)
                      padding: EdgeInsets.fromLTRB(0*fem, 6.5*fem, 134*fem, 6.5*fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRect(
                            // frame75923oB5 (277:3364)
                            child: BackdropFilter(
                              filter: ImageFilter.blur (
                                sigmaX: 7.5*fem,
                                sigmaY: 7.5*fem,
                              ),
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 88*fem, 0*fem),
                                width: 47*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(4*fem),
                                ),
                                child: Container(
                                  // ratingsFYs (277:3365)
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // bcj (277:3366)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                        child: Text(
                                          '4.5',
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.3339999914*ffem/fem,
                                            color: Color(0xdd000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // starGis (277:3367)
                                        width: 16*fem,
                                        height: 16*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/star-HUT.png',
                                          width: 16*fem,
                                          height: 16*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          ClipRect(
                            // frame75924zum (277:3369)
                            child: BackdropFilter(
                              filter: ImageFilter.blur (
                                sigmaX: 7.5*fem,
                                sigmaY: 7.5*fem,
                              ),
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 0*fem, 0.5*fem),
                                width: 1*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(4*fem),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // frame208hJP (277:3370)
                      height: double.infinity,
                      decoration: BoxDecoration (
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x26000000),
                            offset: Offset(0*fem, 2*fem),
                            blurRadius: 5.5*fem,
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // suggestionBjM (277:3371)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                            width: 35*fem,
                            height: 35*fem,
                            child: Image.asset(
                              'assets/page-1/images/suggestion-3BV.png',
                              width: 35*fem,
                              height: 35*fem,
                            ),
                          ),
                          Container(
                            // positionHnP (277:3373)
                            width: 35*fem,
                            height: 35*fem,
                            child: Image.asset(
                              'assets/page-1/images/position-J9m.png',
                              width: 35*fem,
                              height: 35*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // framepGX (277:3375)
              left: 56.048828125*fem,
              top: 223*fem,
              child: Align(
                child: SizedBox(
                  width: 271.95*fem,
                  height: 202.57*fem,
                  child: Image.asset(
                    'assets/page-1/images/frame-qZH.png',
                    width: 271.95*fem,
                    height: 202.57*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // frame83Hfu (277:3909)
              left: 0*fem,
              top: 538*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 20*fem),
                width: 375*fem,
                height: 88*fem,
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.circular(16*fem),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x21000000),
                      offset: Offset(0*fem, 0*fem),
                      blurRadius: 5.5*fem,
                    ),
                  ],
                ),
                child: Container(
                  // buttonMvf (277:3910)
                  padding: EdgeInsets.fromLTRB(94.5*fem, 15*fem, 99.5*fem, 15*fem),
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration (
                    color: Color(0xff143463),
                    borderRadius: BorderRadius.circular(8*fem),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        // addcommentePy (277:3911)
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                          child: Text(
                            'Add Comment',
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
                      Container(
                        // icroundplussGj (277:3912)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                        width: 14*fem,
                        height: 14*fem,
                        child: Image.asset(
                          'assets/page-1/images/ic-round-plus.png',
                          width: 14*fem,
                          height: 14*fem,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}