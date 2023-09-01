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
        // reservationdetail1Xm (277:246)
        width: double.infinity,
        height: 1010*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(20*fem),
        ),
        child: Stack(
          children: [
            Positioned(
              // frame33rHV (277:247)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 375*fem,
                  height: 812*fem,
                  child: Image.asset(
                    'assets/page-1/images/frame-33-VkK.png',
                    width: 375*fem,
                    height: 812*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle176Bq (277:293)
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
              // reservationdetailZbD (277:294)
              left: 101*fem,
              top: 100*fem,
              child: Align(
                child: SizedBox(
                  width: 174*fem,
                  height: 22*fem,
                  child: Text(
                    'Reservation Detail',
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
              // group75913nis (277:295)
              left: 15*fem,
              top: 86*fem,
              child: Align(
                child: SizedBox(
                  width: 48*fem,
                  height: 48*fem,
                  child: Image.asset(
                    'assets/page-1/images/group-75913-Jsy.png',
                    width: 48*fem,
                    height: 48*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // yataylogo15CB (277:299)
              left: 87*fem,
              top: 30*fem,
              child: Align(
                child: SizedBox(
                  width: 200*fem,
                  height: 36.43*fem,
                  child: Image.asset(
                    'assets/page-1/images/yatay-logo-1-FuR.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle1303MfV (277:300)
              left: 0*fem,
              top: 159*fem,
              child: Align(
                child: SizedBox(
                  width: 375*fem,
                  height: 851*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0xfffafafa),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // frame75950DBu (277:301)
              left: 15*fem,
              top: 590*fem,
              child: Container(
                width: 345*fem,
                height: 292*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame5018biF (277:302)
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // h5uyq (277:303)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                            child: Text(
                              'Date:',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.5*ffem/fem,
                                letterSpacing: 0.1000000015*fem,
                                color: Color(0xff143463),
                              ),
                            ),
                          ),
                          Container(
                            // customselectQ9u (277:304)
                            width: double.infinity,
                            height: 50*fem,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xff143463)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(8*fem),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x19606470),
                                  offset: Offset(0*fem, 5*fem),
                                  blurRadius: 10*fem,
                                ),
                              ],
                            ),
                            child: Container(
                              // selecth91 (277:305)
                              width: double.infinity,
                              height: double.infinity,
                              child: Container(
                                // optionDt3 (277:306)
                                padding: EdgeInsets.fromLTRB(18*fem, 11*fem, 29.01*fem, 11*fem),
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(5*fem),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // dropdowniK1 (277:307)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 188.99*fem, 0*fem),
                                      child: Text(
                                        'Please Select',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 2*ffem/fem,
                                          letterSpacing: 0.200000003*fem,
                                          color: Color(0xff143463),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // vector13D (277:308)
                                      width: 14*fem,
                                      height: 8*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/vector-tM5.png',
                                        width: 14*fem,
                                        height: 8*fem,
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
                    SizedBox(
                      height: 20*fem,
                    ),
                    Container(
                      // frame75925VDH (277:319)
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // h5e6B (277:320)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                            child: Text(
                              'Start time:',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.5*ffem/fem,
                                letterSpacing: 0.1000000015*fem,
                                color: Color(0xff143463),
                              ),
                            ),
                          ),
                          Container(
                            // customselectA4X (277:321)
                            width: double.infinity,
                            height: 50*fem,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xff143463)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(8*fem),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x19606470),
                                  offset: Offset(0*fem, 5*fem),
                                  blurRadius: 10*fem,
                                ),
                              ],
                            ),
                            child: Container(
                              // selectEq5 (277:322)
                              width: double.infinity,
                              height: double.infinity,
                              child: Container(
                                // optionbvX (277:323)
                                padding: EdgeInsets.fromLTRB(18*fem, 11*fem, 29.01*fem, 11*fem),
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(5*fem),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // dropdownugK (277:324)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 188.99*fem, 0*fem),
                                      child: Text(
                                        'Please Select',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 2*ffem/fem,
                                          letterSpacing: 0.200000003*fem,
                                          color: Color(0xff143463),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // vectorygB (277:325)
                                      width: 14*fem,
                                      height: 8*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/vector-X6P.png',
                                        width: 14*fem,
                                        height: 8*fem,
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
                    SizedBox(
                      height: 20*fem,
                    ),
                    Container(
                      // frame75926EMD (277:336)
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // h5WZd (277:337)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                            child: Text(
                              'End time:',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.5*ffem/fem,
                                letterSpacing: 0.1000000015*fem,
                                color: Color(0xff143463),
                              ),
                            ),
                          ),
                          Container(
                            // customselectaZV (277:338)
                            width: double.infinity,
                            height: 50*fem,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xff143463)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(8*fem),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x19606470),
                                  offset: Offset(0*fem, 5*fem),
                                  blurRadius: 10*fem,
                                ),
                              ],
                            ),
                            child: Container(
                              // selectgsR (277:339)
                              width: double.infinity,
                              height: double.infinity,
                              child: Container(
                                // optionqVR (277:340)
                                padding: EdgeInsets.fromLTRB(18*fem, 11*fem, 29.01*fem, 11*fem),
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(5*fem),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // dropdownWLf (277:341)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 188.99*fem, 0*fem),
                                      child: Text(
                                        'Please Select',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 2*ffem/fem,
                                          letterSpacing: 0.200000003*fem,
                                          color: Color(0xff143463),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // vector12X (277:342)
                                      width: 14*fem,
                                      height: 8*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/vector-LdV.png',
                                        width: 14*fem,
                                        height: 8*fem,
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
                  ],
                ),
              ),
            ),
            Positioned(
              // group75923jUK (277:353)
              left: 15*fem,
              top: 490*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(4*fem, 20*fem, 0*fem, 20*fem),
                width: 345*fem,
                height: 90*fem,
                decoration: BoxDecoration (
                  image: DecorationImage (
                    fit: BoxFit.cover,
                    image: AssetImage (
                      'assets/page-1/images/rectangle-2.png',
                    ),
                  ),
                ),
                child: Container(
                  // frame5012ajq (277:355)
                  width: double.infinity,
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // vecteezyelectricvehiclechargin (277:356)
                        width: 50*fem,
                        height: 50*fem,
                        child: Image.asset(
                          'assets/page-1/images/vecteezyelectric-vehicle-charging-station-vector-icon-illustration19551494-converted-1-orw.png',
                          width: 50*fem,
                          height: 50*fem,
                        ),
                      ),
                      Container(
                        // autogroupusikbew (JGk4ytiFonConUniZGUSiK)
                        padding: EdgeInsets.fromLTRB(15*fem, 0.5*fem, 0*fem, 0.5*fem),
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // frame5009t8F (277:465)
                              margin: EdgeInsets.fromLTRB(0*fem, 6.5*fem, 150*fem, 5.5*fem),
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // actype2oFD (277:466)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                    child: Text(
                                      'AC Type 2',
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 13*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0xff143463),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // kwt1m (277:467)
                                    '22 Kw',
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
                            Container(
                              // frame501767q (277:468)
                              padding: EdgeInsets.fromLTRB(0*fem, 1.25*fem, 0*fem, 0*fem),
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // linecirclelirasvgrepocom1PMq (277:469)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11.25*fem),
                                    width: 21.5*fem,
                                    height: 21.5*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/line-circle-lira-svgrepo-com-1-ozo.png',
                                      width: 21.5*fem,
                                      height: 21.5*fem,
                                    ),
                                  ),
                                  RichText(
                                    // h5UeB (277:472)
                                    text: TextSpan(
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 12*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2175*ffem/fem,
                                        letterSpacing: 0.1000000015*fem,
                                        color: Color(0xff143463),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: '7,5',
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 12*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2175*ffem/fem,
                                            letterSpacing: 0.1000000015*fem,
                                            color: Color(0xff143463),
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' TL/Kw',
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
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // frame5014xSs (277:473)
              left: 15*fem,
              top: 466*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(4*fem, 2.02*fem, 0*fem, 2*fem),
                width: 299*fem,
                height: 24*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // locationpinaltsvgrepocom1Ddh (277:474)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                      width: 16*fem,
                      height: 19.98*fem,
                      child: Image.asset(
                        'assets/page-1/images/location-pin-alt-svgrepo-com-1-Fmq.png',
                        width: 16*fem,
                        height: 19.98*fem,
                      ),
                    ),
                    Container(
                      // h5i4f (277:476)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.98*fem, 0*fem, 0*fem),
                      child: Text(
                        'Beyazıt Mh. Tiyatro Cd. No:25 İstanbul',
                        style: SafeGoogleFont (
                          'Montserrat',
                          fontSize: 14*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2175*ffem/fem,
                          letterSpacing: 0.1000000015*fem,
                          color: Color(0xff143463),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // frame75924yFV (277:477)
              left: 15*fem,
              top: 179*fem,
              child: Container(
                width: 345*fem,
                height: 24*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // zesradissonhotelt7Z (277:478)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 134*fem, 0*fem),
                      child: Text(
                        'ZES-Radisson Hotel',
                        style: SafeGoogleFont (
                          'Montserrat',
                          fontSize: 16*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.5*ffem/fem,
                          letterSpacing: 0.1000000015*fem,
                          color: Color(0xff143463),
                        ),
                      ),
                    ),
                    ClipRect(
                      // frame75923nCw (277:479)
                      child: BackdropFilter(
                        filter: ImageFilter.blur (
                          sigmaX: 7.5*fem,
                          sigmaY: 7.5*fem,
                        ),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 1*fem),
                          width: 45*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(4*fem),
                          ),
                          child: Container(
                            // ratingsFMR (277:480)
                            width: double.infinity,
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // z47 (277:481)
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
                                  // stardcs (277:482)
                                  width: 16*fem,
                                  height: 16*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/star-ya7.png',
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
                  ],
                ),
              ),
            ),
            Positioned(
              // group75937GQw (277:484)
              left: 0*fem,
              top: 922*fem,
              child: Container(
                width: 375*fem,
                height: 88*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // homeindicatoronlightxoZ (277:485)
                      left: 120*fem,
                      top: 74*fem,
                      child: Container(
                        width: 134*fem,
                        height: 5*fem,
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(100*fem),
                        ),
                        child: Center(
                          // homeindicatorsvX (277:486)
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
                      // frame83aK9 (277:487)
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
                          // buttoncFq (277:488)
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xff143463),
                            borderRadius: BorderRadius.circular(8*fem),
                          ),
                          child: Center(
                            child: Center(
                              child: Text(
                                'Reserve',
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
            ),
            Positioned(
              // frame3rw (277:490)
              left: 56.048828125*fem,
              top: 223*fem,
              child: Align(
                child: SizedBox(
                  width: 271.95*fem,
                  height: 202.57*fem,
                  child: Image.asset(
                    'assets/page-1/images/frame-n6B.png',
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