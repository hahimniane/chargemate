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
      child: TextButton(
        // chargesummaryFm9 (251:960)
        onPressed: () {},
        style: TextButton.styleFrom (
          padding: EdgeInsets.zero,
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(20*fem),
            image: DecorationImage (
              fit: BoxFit.cover,
              image: AssetImage (
                'assets/page-1/images/frame-33-D1h.png',
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupsosuHC3 (JGjqRCUkZdUEq7cgB7Sosu)
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
                      // yataylogo17B5 (251:1013)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 19.57*fem),
                      width: 200*fem,
                      height: 36.43*fem,
                      child: Image.asset(
                        'assets/page-1/images/yatay-logo-1-Cfq.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // autogroup8jmzQAB (JGjqXrxKGLgrJ9En2e8jmZ)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 90*fem, 0*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group75913JmM (251:1009)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 42*fem, 0*fem),
                            width: 48*fem,
                            height: 48*fem,
                            child: Image.asset(
                              'assets/page-1/images/group-75913-sVq.png',
                              width: 48*fem,
                              height: 48*fem,
                            ),
                          ),
                          Container(
                            // chargesummaryzeB (251:1008)
                            margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                            child: Text(
                              'Charge Summary',
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
                // autogrouptqpbF4K (JGjqgrhKuu8aNjL1jQTqpb)
                width: double.infinity,
                height: 653*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle1303k15 (251:1014)
                      left: 0*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 375*fem,
                          height: 584*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              color: Color(0xfffafafa),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // group1274JB1 (251:1015)
                      left: 15*fem,
                      top: 455*fem,
                      child: Container(
                        width: 345*fem,
                        height: 70*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // group12501LK (251:1016)
                              left: 24.7164306641*fem,
                              top: 0*fem,
                              child: ClipRect(
                                child: BackdropFilter(
                                  filter: ImageFilter.blur (
                                    sigmaX: 10*fem,
                                    sigmaY: 10*fem,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(203.91*fem, 21*fem, 49.37*fem, 21*fem),
                                    width: 320.28*fem,
                                    height: 70*fem,
                                    decoration: BoxDecoration (
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(12*fem),
                                    ),
                                    child: Container(
                                      // group12812WK (251:1018)
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // hoursx95 (251:1019)
                                            left: 10.2984619141*fem,
                                            top: 0*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 48*fem,
                                                height: 15*fem,
                                                child: Text(
                                                  '3 Hours',
                                                  style: SafeGoogleFont (
                                                    'Montserrat',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.2175*ffem/fem,
                                                    color: Color(0xff143463),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // remaining1d9 (251:1020)
                                            left: 0*fem,
                                            top: 13*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 67*fem,
                                                height: 15*fem,
                                                child: Text(
                                                  'Remaining',
                                                  style: SafeGoogleFont (
                                                    'Montserrat',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w300,
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
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // group1251fSo (251:1021)
                              left: 0*fem,
                              top: 0*fem,
                              child: ClipRect(
                                child: BackdropFilter(
                                  filter: ImageFilter.blur (
                                    sigmaX: 10*fem,
                                    sigmaY: 10*fem,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(127*fem, 19.5*fem, 116.96*fem, 19.5*fem),
                                    width: 330*fem,
                                    height: 70*fem,
                                    decoration: BoxDecoration (
                                      border: Border.all(color: Color(0xff38e494)),
                                      borderRadius: BorderRadius.circular(12*fem),
                                      gradient: LinearGradient (
                                        begin: Alignment(-0.916, 0.018),
                                        end: Alignment(0.361, 0.018),
                                        colors: <Color>[Color(0xff4ffeaa), Color(0xff54facf)],
                                        stops: <double>[0, 1],
                                      ),
                                    ),
                                    child: Container(
                                      // group1273DMq (251:1023)
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // vectorA2B (251:1024)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10.3*fem, 0.22*fem),
                                            width: 25.75*fem,
                                            height: 27.78*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-p63.png',
                                              width: 25.75*fem,
                                              height: 27.78*fem,
                                            ),
                                          ),
                                          Text(
                                            // fDq (251:1025)
                                            '95%',
                                            style: SafeGoogleFont (
                                              'Montserrat',
                                              fontSize: 25*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2175*ffem/fem,
                                              color: Color(0xff143463),
                                            ),
                                          ),
                                        ],
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
                      // frame75929AAb (251:1026)
                      left: 15*fem,
                      top: 20*fem,
                      child: Container(
                        width: 345*fem,
                        height: 415*fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // frame759271h1 (251:1027)
                              width: double.infinity,
                              height: 48*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // group75938rhd (251:1028)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                    width: 48*fem,
                                    height: 48*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/group-75938-qXm.png',
                                      width: 48*fem,
                                      height: 48*fem,
                                    ),
                                  ),
                                  Container(
                                    // group75939vhV (251:1032)
                                    padding: EdgeInsets.fromLTRB(10*fem, 17*fem, 10*fem, 16*fem),
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(10*fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x19606470),
                                          offset: Offset(0*fem, 5*fem),
                                          blurRadius: 10*fem,
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // locationC9D (251:1035)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 88*fem, 0*fem),
                                          child: Text(
                                            'Location:',
                                            style: SafeGoogleFont (
                                              'Montserrat',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.2175*ffem/fem,
                                              letterSpacing: 0.1000000015*fem,
                                              color: Color(0xff143463),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          // zesradissonhotelh5y (251:1034)
                                          'ZES-Radisson Hotel',
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 12*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2175*ffem/fem,
                                            letterSpacing: 0.1000000015*fem,
                                            color: Color(0xff143463),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10*fem,
                            ),
                            Container(
                              // frame75931mbd (251:1036)
                              width: double.infinity,
                              height: 67*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // group75938iFy (251:1037)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                    padding: EdgeInsets.fromLTRB(13.64*fem, 23.66*fem, 13.65*fem, 22.63*fem),
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xffffffff),
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
                                      // time651nmd (251:1039)
                                      child: SizedBox(
                                        width: 20.71*fem,
                                        height: 20.71*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/time-65-1.png',
                                          width: 20.71*fem,
                                          height: 20.71*fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // group75939BYs (251:1041)
                                    padding: EdgeInsets.fromLTRB(10*fem, 14*fem, 10*fem, 13*fem),
                                    width: 287*fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(10*fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x19606470),
                                          offset: Offset(0*fem, 5*fem),
                                          blurRadius: 10*fem,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // frame759333LB (251:1043)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 10*fem),
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // beginningYGw (251:1044)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 101*fem, 0*fem),
                                                child: Text(
                                                  'Beginning:',
                                                  style: SafeGoogleFont (
                                                    'Montserrat',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.2175*ffem/fem,
                                                    letterSpacing: 0.1000000015*fem,
                                                    color: Color(0xff143463),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                // FBM (251:1045)
                                                '18.04.2023 13:26',
                                                textAlign: TextAlign.right,
                                                style: SafeGoogleFont (
                                                  'Montserrat',
                                                  fontSize: 12*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2175*ffem/fem,
                                                  letterSpacing: 0.1000000015*fem,
                                                  color: Color(0xff143463),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // frame75934YgF (251:1046)
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // finishASj (251:1047)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 129*fem, 0*fem),
                                                child: Text(
                                                  'Finish:',
                                                  style: SafeGoogleFont (
                                                    'Montserrat',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.2175*ffem/fem,
                                                    letterSpacing: 0.1000000015*fem,
                                                    color: Color(0xff143463),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                // rqM (251:1048)
                                                '18.04.2023 14:26',
                                                textAlign: TextAlign.right,
                                                style: SafeGoogleFont (
                                                  'Montserrat',
                                                  fontSize: 12*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2175*ffem/fem,
                                                  letterSpacing: 0.1000000015*fem,
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
                            SizedBox(
                              height: 10*fem,
                            ),
                            Container(
                              // frame7592893m (251:1049)
                              width: double.infinity,
                              height: 48*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // group75938sVZ (251:1050)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                    width: 48*fem,
                                    height: 48*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/group-75938-AZm.png',
                                      width: 48*fem,
                                      height: 48*fem,
                                    ),
                                  ),
                                  Container(
                                    // group75939aum (251:1058)
                                    padding: EdgeInsets.fromLTRB(10*fem, 17*fem, 10*fem, 16*fem),
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(10*fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x19606470),
                                          offset: Offset(0*fem, 5*fem),
                                          blurRadius: 10*fem,
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // socketGXh (251:1061)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 162*fem, 0*fem),
                                          child: Text(
                                            'Socket:',
                                            style: SafeGoogleFont (
                                              'Montserrat',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.2175*ffem/fem,
                                              letterSpacing: 0.1000000015*fem,
                                              color: Color(0xff143463),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          // actype2YEK (251:1060)
                                          'Ac Type 2',
                                          textAlign: TextAlign.right,
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 12*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2175*ffem/fem,
                                            letterSpacing: 0.1000000015*fem,
                                            color: Color(0xff143463),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10*fem,
                            ),
                            Container(
                              // frame759293gs (251:1062)
                              width: double.infinity,
                              height: 48*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // group75938ZfD (251:1063)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                    width: 48*fem,
                                    height: 48*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/group-75938-AQo.png',
                                      width: 48*fem,
                                      height: 48*fem,
                                    ),
                                  ),
                                  Container(
                                    // group75939UXH (251:1067)
                                    padding: EdgeInsets.fromLTRB(10*fem, 17*fem, 10*fem, 16*fem),
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(10*fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x19606470),
                                          offset: Offset(0*fem, 5*fem),
                                          blurRadius: 10*fem,
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // kwhZHq (251:1070)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 219*fem, 0*fem),
                                          child: Text(
                                            'kWh:',
                                            style: SafeGoogleFont (
                                              'Montserrat',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.2175*ffem/fem,
                                              letterSpacing: 0.1000000015*fem,
                                              color: Color(0xff143463),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          // pzT (251:1069)
                                          '22',
                                          textAlign: TextAlign.right,
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 12*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2175*ffem/fem,
                                            letterSpacing: 0.1000000015*fem,
                                            color: Color(0xff143463),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10*fem,
                            ),
                            Container(
                              // frame75930919 (251:1071)
                              width: double.infinity,
                              height: 48*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // group75938rgF (251:1072)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                    width: 48*fem,
                                    height: 48*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/group-75938-m4K.png',
                                      width: 48*fem,
                                      height: 48*fem,
                                    ),
                                  ),
                                  Container(
                                    // group75939eMD (251:1082)
                                    padding: EdgeInsets.fromLTRB(10*fem, 17*fem, 10*fem, 16*fem),
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(10*fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x19606470),
                                          offset: Offset(0*fem, 5*fem),
                                          blurRadius: 10*fem,
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // totaltimeW8X (251:1085)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 153*fem, 0*fem),
                                          child: Text(
                                            'Total time:',
                                            style: SafeGoogleFont (
                                              'Montserrat',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.2175*ffem/fem,
                                              letterSpacing: 0.1000000015*fem,
                                              color: Color(0xff143463),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          // minaPH (251:1084)
                                          '60 min.',
                                          textAlign: TextAlign.right,
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 12*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2175*ffem/fem,
                                            letterSpacing: 0.1000000015*fem,
                                            color: Color(0xff143463),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10*fem,
                            ),
                            Container(
                              // frame759325qq (251:1086)
                              width: double.infinity,
                              height: 48*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // group75938d6f (251:1087)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                    width: 48*fem,
                                    height: 48*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/group-75938-9od.png',
                                      width: 48*fem,
                                      height: 48*fem,
                                    ),
                                  ),
                                  Container(
                                    // group759397nX (251:1092)
                                    padding: EdgeInsets.fromLTRB(10*fem, 17*fem, 10*fem, 16*fem),
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(10*fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x19606470),
                                          offset: Offset(0*fem, 5*fem),
                                          blurRadius: 10*fem,
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // paymentzrK (251:1095)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 148*fem, 0*fem),
                                          child: Text(
                                            'Payment:',
                                            style: SafeGoogleFont (
                                              'Montserrat',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.2175*ffem/fem,
                                              letterSpacing: 0.1000000015*fem,
                                              color: Color(0xff143463),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          // tlefy (251:1094)
                                          '382,60 TL',
                                          textAlign: TextAlign.right,
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 12*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2175*ffem/fem,
                                            letterSpacing: 0.1000000015*fem,
                                            color: Color(0xff143463),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10*fem,
                            ),
                            Container(
                              // frame7593396w (251:1096)
                              width: double.infinity,
                              height: 48*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // group759385WP (251:1097)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                    width: 48*fem,
                                    height: 48*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/group-75938-fhh.png',
                                      width: 48*fem,
                                      height: 48*fem,
                                    ),
                                  ),
                                  Container(
                                    // group75939AXq (251:1102)
                                    padding: EdgeInsets.fromLTRB(10*fem, 9*fem, 10*fem, 9*fem),
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(10*fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x19606470),
                                          offset: Offset(0*fem, 5*fem),
                                          blurRadius: 10*fem,
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // paymentmethod3rX (251:1105)
                                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 76*fem, 0*fem),
                                          child: Text(
                                            'Payment method:',
                                            style: SafeGoogleFont (
                                              'Montserrat',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.2175*ffem/fem,
                                              letterSpacing: 0.1000000015*fem,
                                              color: Color(0xff143463),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // chargematewalletazs (251:1104)
                                          constraints: BoxConstraints (
                                            maxWidth: 76*fem,
                                          ),
                                          child: Text(
                                            'ChargeMate\n    Wallet',
                                            textAlign: TextAlign.right,
                                            style: SafeGoogleFont (
                                              'Montserrat',
                                              fontSize: 12*ffem,
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // group75937UKZ (251:1106)
                      left: 0*fem,
                      top: 565*fem,
                      child: Container(
                        width: 375*fem,
                        height: 88*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // homeindicatoronlightxkX (251:1107)
                              left: 120*fem,
                              top: 74*fem,
                              child: Container(
                                width: 134*fem,
                                height: 5*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(100*fem),
                                ),
                                child: Center(
                                  // homeindicators6o (251:1108)
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
                              // frame83nzT (251:1109)
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
                                  // buttonSp7 (251:1110)
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    color: Color(0xff143463),
                                    borderRadius: BorderRadius.circular(8*fem),
                                  ),
                                  child: Center(
                                    child: Center(
                                      child: Text(
                                        'Home',
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
          );
  }
}