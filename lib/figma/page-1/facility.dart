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
        // facility3GT (277:2576)
        width: double.infinity,
        height: 875*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(20*fem),
        ),
        child: Stack(
          children: [
            Positioned(
              // frame335iw (277:2577)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 375*fem,
                  height: 812*fem,
                  child: Image.asset(
                    'assets/page-1/images/frame-33-viK.png',
                    width: 375*fem,
                    height: 812*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle17vUf (277:2623)
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
              // zesradissonhotelkib (277:2624)
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
              // group75913TWX (277:2625)
              left: 15*fem,
              top: 86*fem,
              child: Align(
                child: SizedBox(
                  width: 48*fem,
                  height: 48*fem,
                  child: Image.asset(
                    'assets/page-1/images/group-75913-Yhm.png',
                    width: 48*fem,
                    height: 48*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // yataylogo1jiw (277:2629)
              left: 87*fem,
              top: 30*fem,
              child: Align(
                child: SizedBox(
                  width: 200*fem,
                  height: 36.43*fem,
                  child: Image.asset(
                    'assets/page-1/images/yatay-logo-1-ULw.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle1303De7 (277:2630)
              left: 0*fem,
              top: 159*fem,
              child: Align(
                child: SizedBox(
                  width: 375*fem,
                  height: 966*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0xfffafafa),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // frame759438WB (277:2631)
              left: 15*fem,
              top: 563*fem,
              child: Container(
                width: 123*fem,
                height: 164*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame75930QyV (277:2632)
                      width: double.infinity,
                      height: 48*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group759387d1 (277:2633)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                            width: 48*fem,
                            height: 48*fem,
                            child: Image.asset(
                              'assets/page-1/images/group-75938-ZMR.png',
                              width: 48*fem,
                              height: 48*fem,
                            ),
                          ),
                          Container(
                            // group75939Qc7 (277:2640)
                            width: 65*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(10*fem),
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
                                'Cafe',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2175*ffem/fem,
                                  letterSpacing: 0.1000000015*fem,
                                  color: Color(0xff143463),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10*fem,
                    ),
                    Container(
                      // frame75937BmH (277:2643)
                      width: double.infinity,
                      height: 48*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group75938vis (277:2644)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                            width: 48*fem,
                            height: 48*fem,
                            child: Image.asset(
                              'assets/page-1/images/group-75938-uwV.png',
                              width: 48*fem,
                              height: 48*fem,
                            ),
                          ),
                          Container(
                            // group759392G7 (277:2648)
                            width: 65*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(10*fem),
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
                                'Mall',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2175*ffem/fem,
                                  letterSpacing: 0.1000000015*fem,
                                  color: Color(0xff143463),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10*fem,
                    ),
                    Container(
                      // frame75938ujD (277:2651)
                      width: double.infinity,
                      height: 48*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group759381XM (277:2652)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                            width: 48*fem,
                            height: 48*fem,
                            child: Image.asset(
                              'assets/page-1/images/group-75938-y1Z.png',
                              width: 48*fem,
                              height: 48*fem,
                            ),
                          ),
                          Container(
                            // group75939tLF (277:2660)
                            width: 65*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(10*fem),
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
                                'Gym',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2175*ffem/fem,
                                  letterSpacing: 0.1000000015*fem,
                                  color: Color(0xff143463),
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
            ),
            Positioned(
              // frame75942KAf (277:2663)
              left: 179*fem,
              top: 563*fem,
              child: Container(
                width: 181*fem,
                height: 164*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame75939QC7 (277:2664)
                      width: double.infinity,
                      height: 48*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group75938kFy (277:2665)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                            width: 48*fem,
                            height: 48*fem,
                            child: Image.asset(
                              'assets/page-1/images/group-75938-Gdu.png',
                              width: 48*fem,
                              height: 48*fem,
                            ),
                          ),
                          Container(
                            // group75939TgB (277:2670)
                            width: 123*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  // rectangle1302nyM (277:2671)
                                  left: 0*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 65*fem,
                                      height: 48*fem,
                                      child: Container(
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(10*fem),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x19606470),
                                              offset: Offset(0*fem, 5*fem),
                                              blurRadius: 10*fem,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // childrensparkEaT (277:2672)
                                  left: 10*fem,
                                  top: 17*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 113*fem,
                                      height: 18*fem,
                                      child: Text(
                                        'Children\'s Park',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2175*ffem/fem,
                                          letterSpacing: 0.1000000015*fem,
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
                      // autogroupn1ef5b5 (JGk9avhyaxbMz5MiFhN1EF)
                      padding: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 0*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // frame75940Cvb (277:2673)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 31*fem, 10*fem),
                            width: double.infinity,
                            height: 48*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // group75938Xhy (277:2674)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                  width: 48*fem,
                                  height: 48*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-75938-r1V.png',
                                    width: 48*fem,
                                    height: 48*fem,
                                  ),
                                ),
                                Container(
                                  // group75939BnX (277:2679)
                                  width: 92*fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(10*fem),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // rectangle13022HM (277:2680)
                                        left: 0*fem,
                                        top: 0*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 65*fem,
                                            height: 48*fem,
                                            child: Container(
                                              decoration: BoxDecoration (
                                                borderRadius: BorderRadius.circular(10*fem),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color(0x19606470),
                                                    offset: Offset(0*fem, 5*fem),
                                                    blurRadius: 10*fem,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // restaurantT7m (277:2681)
                                        left: 10*fem,
                                        top: 17*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 82*fem,
                                            height: 18*fem,
                                            child: Text(
                                              'Restaurant',
                                              style: SafeGoogleFont (
                                                'Montserrat',
                                                fontSize: 14*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2175*ffem/fem,
                                                letterSpacing: 0.1000000015*fem,
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
                            // frame75941WLw (277:2682)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 58*fem, 0*fem),
                            width: double.infinity,
                            height: 48*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // group759382aB (277:2683)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                  width: 48*fem,
                                  height: 48*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-75938-zEs.png',
                                    width: 48*fem,
                                    height: 48*fem,
                                  ),
                                ),
                                Container(
                                  // group75939v9m (277:2688)
                                  padding: EdgeInsets.fromLTRB(10*fem, 17*fem, 2*fem, 13*fem),
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(10*fem),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x19606470),
                                        offset: Offset(0*fem, 5*fem),
                                        blurRadius: 10*fem,
                                      ),
                                    ],
                                  ),
                                  child: Text(
                                    'Market',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 14*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2175*ffem/fem,
                                      letterSpacing: 0.1000000015*fem,
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
                  ],
                ),
              ),
            ),
            Positioned(
              // frame75936Ywq (277:2692)
              left: 15*fem,
              top: 487*fem,
              child: Container(
                width: 348*fem,
                height: 41*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame5005SGX (277:2693)
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
                      // frame5006H2F (277:2695)
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
                      // frame5007Ji3 (277:2697)
                      width: 63*fem,
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
                          'Facility',
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
                    SizedBox(
                      width: 25*fem,
                    ),
                    Container(
                      // frame5008L8w (277:2699)
                      width: 90*fem,
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
                          'Comments',
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
                  ],
                ),
              ),
            ),
            Positioned(
              // frame75935Fv7 (277:2701)
              left: 154*fem,
              top: 446*fem,
              child: Container(
                width: 68*fem,
                height: 7*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // rectangle13078DD (277:2702)
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
                      // rectangle13083LB (277:2703)
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
                      // rectangle1309NNT (277:2704)
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
                      // rectangle13105Gs (277:2705)
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
                      // rectangle1311QK9 (277:2706)
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
              // frame75924MEP (277:2707)
              left: 15*fem,
              top: 179*fem,
              child: Container(
                width: 345*fem,
                height: 35*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRect(
                      // frame75923qvF (277:2708)
                      child: BackdropFilter(
                        filter: ImageFilter.blur (
                          sigmaX: 7.5*fem,
                          sigmaY: 7.5*fem,
                        ),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 6.5*fem, 134*fem, 6.5*fem),
                          width: 131*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(4*fem),
                          ),
                          child: Container(
                            // ratingsjEw (277:2709)
                            width: 45*fem,
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // gAB (277:2710)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                  child: Text(
                                    '4.5',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.3339999914*ffem/fem,
                                      color: Color(0xdd000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  // starmhR (277:2711)
                                  width: 16*fem,
                                  height: 16*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/star-8ij.png',
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
                    Container(
                      // frame208WQ7 (277:2713)
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
                            // suggestionRmy (277:2714)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                            width: 35*fem,
                            height: 35*fem,
                            child: Image.asset(
                              'assets/page-1/images/suggestion-sbd.png',
                              width: 35*fem,
                              height: 35*fem,
                            ),
                          ),
                          Container(
                            // positionJas (277:2716)
                            width: 35*fem,
                            height: 35*fem,
                            child: Image.asset(
                              'assets/page-1/images/position-ay5.png',
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
              // frameo1q (277:2718)
              left: 56.048828125*fem,
              top: 223*fem,
              child: Align(
                child: SizedBox(
                  width: 271.95*fem,
                  height: 202.57*fem,
                  child: Image.asset(
                    'assets/page-1/images/frame-MY3.png',
                    width: 271.95*fem,
                    height: 202.57*fem,
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