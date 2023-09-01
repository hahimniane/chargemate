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
        // socketfrP (277:1700)
        width: double.infinity,
        height: 875*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(20*fem),
        ),
        child: Stack(
          children: [
            Positioned(
              // frame33eTR (277:1701)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 375*fem,
                  height: 812*fem,
                  child: Image.asset(
                    'assets/page-1/images/frame-33-dzf.png',
                    width: 375*fem,
                    height: 812*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle17iCP (277:1747)
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
              // zesradissonhotelk95 (277:1748)
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
              // group75913Pxj (277:1749)
              left: 15*fem,
              top: 86*fem,
              child: Align(
                child: SizedBox(
                  width: 48*fem,
                  height: 48*fem,
                  child: Image.asset(
                    'assets/page-1/images/group-75913-qV9.png',
                    width: 48*fem,
                    height: 48*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // yataylogo1TSo (277:1753)
              left: 87*fem,
              top: 30*fem,
              child: Align(
                child: SizedBox(
                  width: 200*fem,
                  height: 36.43*fem,
                  child: Image.asset(
                    'assets/page-1/images/yatay-logo-1-oZy.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle13039qR (277:1754)
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
              // group75923cj1 (277:1755)
              left: 15*fem,
              top: 558*fem,
              child: Container(
                width: 346*fem,
                height: 141*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle2X5H (277:1756)
                      left: 0*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 345*fem,
                          height: 141*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(16*fem),
                              color: Color(0xfffafafa),
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
                      // frame83r15 (277:1757)
                      left: 1*fem,
                      top: 70*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(24.5*fem, 20*fem, 24.5*fem, 20*fem),
                        width: 345*fem,
                        height: 71*fem,
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(16*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // buttonV43 (277:1758)
                              width: 111*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0xff143463),
                                borderRadius: BorderRadius.circular(4*fem),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    'Start Charging',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175*ffem/fem,
                                      letterSpacing: -0.0099999998*fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12*fem,
                            ),
                            Container(
                              // buttongPR (277:1760)
                              width: 70*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff143463)),
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(4*fem),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    'Reserve',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175*ffem/fem,
                                      letterSpacing: -0.0099999998*fem,
                                      color: Color(0xff143463),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12*fem,
                            ),
                            Container(
                              // frame50106xw (277:1762)
                              padding: EdgeInsets.fromLTRB(10.94*fem, 8*fem, 10*fem, 8*fem),
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0xff57b78b),
                                borderRadius: BorderRadius.circular(4*fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // verifiedsvgrepocom2nqm (277:1763)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.94*fem, 0*fem),
                                    width: 10.12*fem,
                                    height: 9.75*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/verified-svgrepo-com-2-zBR.png',
                                      width: 10.12*fem,
                                      height: 9.75*fem,
                                    ),
                                  ),
                                  Text(
                                    // h55K5 (277:1766)
                                    'Available',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2175*ffem/fem,
                                      letterSpacing: 0.1000000015*fem,
                                      color: Color(0xffffffff),
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
                      // frame5012mSo (277:1767)
                      left: 15*fem,
                      top: 20*fem,
                      child: Container(
                        width: 315*fem,
                        height: 50*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // vecteezyelectricvehiclechargin (277:1768)
                              width: 50*fem,
                              height: 50*fem,
                              child: Image.asset(
                                'assets/page-1/images/vecteezyelectric-vehicle-charging-station-vector-icon-illustration19551494-converted-1-WET.png',
                                width: 50*fem,
                                height: 50*fem,
                              ),
                            ),
                            Container(
                              // autogroup8xj5MA7 (JGk7SEnjn1cSn3GoGA8Xj5)
                              padding: EdgeInsets.fromLTRB(15*fem, 0.5*fem, 0*fem, 0.5*fem),
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // frame5009Dy1 (277:1877)
                                    margin: EdgeInsets.fromLTRB(0*fem, 6.5*fem, 124*fem, 5.5*fem),
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // actype2WSK (277:1878)
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
                                          // kwhFu (277:1879)
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
                                    // frame5017QAK (277:1880)
                                    padding: EdgeInsets.fromLTRB(0*fem, 1.25*fem, 0*fem, 0*fem),
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // linecirclelirasvgrepocom1XEw (277:1881)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11.25*fem),
                                          width: 21.5*fem,
                                          height: 21.5*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/line-circle-lira-svgrepo-com-1-qXm.png',
                                            width: 21.5*fem,
                                            height: 21.5*fem,
                                          ),
                                        ),
                                        RichText(
                                          // h5oiF (277:1884)
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
                  ],
                ),
              ),
            ),
            Positioned(
              // group75924gfZ (277:1885)
              left: 15*fem,
              top: 719*fem,
              child: Container(
                width: 346*fem,
                height: 141*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle2A4w (277:1886)
                      left: 0*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 345*fem,
                          height: 141*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(16*fem),
                              color: Color(0xfffafafa),
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
                      // frame83bg3 (277:1887)
                      left: 1*fem,
                      top: 70*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(37*fem, 20*fem, 37*fem, 20*fem),
                        width: 345*fem,
                        height: 71*fem,
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(16*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // buttoneeK (277:1888)
                              width: 111*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0xff143463),
                                borderRadius: BorderRadius.circular(4*fem),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    'Start Charging',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175*ffem/fem,
                                      letterSpacing: -0.0099999998*fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12*fem,
                            ),
                            Container(
                              // buttonFu1 (277:1890)
                              width: 70*fem,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff143463)),
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(4*fem),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    'Reserve',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175*ffem/fem,
                                      letterSpacing: -0.0099999998*fem,
                                      color: Color(0xff143463),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12*fem,
                            ),
                            Container(
                              // frame5010mF5 (277:1892)
                              padding: EdgeInsets.fromLTRB(11*fem, 8*fem, 10*fem, 8*fem),
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0xffe63946),
                                borderRadius: BorderRadius.circular(4*fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // verifiedsvgrepocom2FAF (277:1893)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0.75*fem, 4.88*fem, 0*fem),
                                    width: 10.12*fem,
                                    height: 9.75*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/verified-svgrepo-com-2-CAb.png',
                                      width: 10.12*fem,
                                      height: 9.75*fem,
                                    ),
                                  ),
                                  Text(
                                    // h5LBh (277:1896)
                                    'Busy',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2175*ffem/fem,
                                      letterSpacing: 0.1000000015*fem,
                                      color: Color(0xffffffff),
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
                      // frame5012TGK (277:1897)
                      left: 15*fem,
                      top: 20*fem,
                      child: Container(
                        width: 315*fem,
                        height: 50*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // vecteezyelectricvehiclechargin (277:1898)
                              width: 50*fem,
                              height: 50*fem,
                              child: Image.asset(
                                'assets/page-1/images/vecteezyelectric-vehicle-charging-station-vector-icon-illustration19551494-converted-1-CVM.png',
                                width: 50*fem,
                                height: 50*fem,
                              ),
                            ),
                            Container(
                              // autogroupy2jtoDh (JGk7w98FFF6KfJHWbxy2JT)
                              padding: EdgeInsets.fromLTRB(15*fem, 0.5*fem, 0*fem, 0.5*fem),
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // frame5009KC3 (277:2007)
                                    margin: EdgeInsets.fromLTRB(0*fem, 6.5*fem, 139*fem, 5.5*fem),
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // dcccsp8o (277:2008)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                          child: Text(
                                            'DC CCS',
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
                                          // kw7tb (277:2009)
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
                                    // frame5017439 (277:2010)
                                    padding: EdgeInsets.fromLTRB(0*fem, 1.25*fem, 0*fem, 0*fem),
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // linecirclelirasvgrepocom1zBh (277:2011)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11.25*fem),
                                          width: 21.5*fem,
                                          height: 21.5*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/line-circle-lira-svgrepo-com-1-GVD.png',
                                            width: 21.5*fem,
                                            height: 21.5*fem,
                                          ),
                                        ),
                                        RichText(
                                          // h5fHq (277:2014)
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
                  ],
                ),
              ),
            ),
            Positioned(
              // frame75936SLX (277:2016)
              left: 15*fem,
              top: 487*fem,
              child: Container(
                width: 348*fem,
                height: 41*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame5005jKd (277:2017)
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
                      // frame5006vuu (277:2019)
                      width: 61*fem,
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
                          'Socket',
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
                      // frame5007ZCB (277:2021)
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
                      // frame5008RVH (277:2023)
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
              // frame75935UyM (277:2025)
              left: 154*fem,
              top: 446*fem,
              child: Container(
                width: 68*fem,
                height: 7*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // rectangle1307zRu (277:2026)
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
                      // rectangle1308VNf (277:2027)
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
                      // rectangle1309D3m (277:2028)
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
                      // rectangle1310wVZ (277:2029)
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
                      // rectangle1311zTq (277:2030)
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
              // frame759242vK (277:2031)
              left: 15*fem,
              top: 179*fem,
              child: Container(
                width: 345*fem,
                height: 35*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRect(
                      // frame75923JN3 (277:2032)
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
                            // ratingskzj (277:2033)
                            width: 45*fem,
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // Hzf (277:2034)
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
                                  // starVL3 (277:2035)
                                  width: 16*fem,
                                  height: 16*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/star-8d5.png',
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
                      // frame208Qhu (277:2037)
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
                            // suggestionJYP (277:2038)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                            width: 35*fem,
                            height: 35*fem,
                            child: Image.asset(
                              'assets/page-1/images/suggestion-Ysq.png',
                              width: 35*fem,
                              height: 35*fem,
                            ),
                          ),
                          Container(
                            // positionyuR (277:2040)
                            width: 35*fem,
                            height: 35*fem,
                            child: Image.asset(
                              'assets/page-1/images/position-J4F.png',
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
              // frame6z3 (277:2042)
              left: 56.048828125*fem,
              top: 223*fem,
              child: Align(
                child: SizedBox(
                  width: 271.95*fem,
                  height: 202.57*fem,
                  child: Image.asset(
                    'assets/page-1/images/frame-zg7.png',
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