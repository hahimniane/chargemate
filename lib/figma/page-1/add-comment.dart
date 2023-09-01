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
        // addcomment7PD (277:3914)
        width: double.infinity,
        height: 1038*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(20*fem),
        ),
        child: Stack(
          children: [
            Positioned(
              // frame33jQb (277:3915)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 375*fem,
                  height: 812*fem,
                  child: Image.asset(
                    'assets/page-1/images/frame-33-swV.png',
                    width: 375*fem,
                    height: 812*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle17bxb (277:3961)
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
              // zesradissonhotelRRq (277:3962)
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
              // group75913sHq (277:3963)
              left: 15*fem,
              top: 86*fem,
              child: Align(
                child: SizedBox(
                  width: 48*fem,
                  height: 48*fem,
                  child: Image.asset(
                    'assets/page-1/images/group-75913-Vdq.png',
                    width: 48*fem,
                    height: 48*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // yataylogo1vmu (277:3967)
              left: 87*fem,
              top: 30*fem,
              child: Align(
                child: SizedBox(
                  width: 200*fem,
                  height: 36.43*fem,
                  child: Image.asset(
                    'assets/page-1/images/yatay-logo-1-VRh.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle1303PfV (277:3968)
              left: 0*fem,
              top: 159*fem,
              child: Align(
                child: SizedBox(
                  width: 375*fem,
                  height: 879*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0xfffafafa),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // frame75920zfH (277:3969)
              left: 0*fem,
              top: 875*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(20*fem, 20*fem, 10*fem, 20*fem),
                width: 375*fem,
                height: 163*fem,
                decoration: BoxDecoration (
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(16*fem),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame75949REo (277:3970)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 15*fem),
                      width: double.infinity,
                      height: 68*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // button89D (277:3971)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                            padding: EdgeInsets.fromLTRB(15*fem, 19*fem, 15*fem, 31*fem),
                            width: 260*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xff143463)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(8*fem),
                            ),
                            child: Center(
                              child: Text(
                                'Start Writing...',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5*ffem/fem,
                                  letterSpacing: -0.0099999998*fem,
                                  color: Color(0xff143463),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // buttonuZH (277:3973)
                            width: 65*fem,
                            height: 68*fem,
                            child: Image.asset(
                              'assets/page-1/images/button.png',
                              width: 65*fem,
                              height: 68*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // buttondEP (277:3976)
                      width: double.infinity,
                      height: 40*fem,
                      decoration: BoxDecoration (
                        color: Color(0xff143463),
                        borderRadius: BorderRadius.circular(8*fem),
                      ),
                      child: Center(
                        child: Center(
                          child: Text(
                            'Sent',
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
                  ],
                ),
              ),
            ),
            Positioned(
              // menuwidget4ab (277:3978)
              left: 15*fem,
              top: 770*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 20*fem, 0*fem, 20*fem),
                width: 345*fem,
                height: 107*fem,
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.circular(10*fem),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // listtitlejRq (277:3979)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 50*fem, 19*fem),
                      width: 295*fem,
                      height: 24*fem,
                      child: Center(
                        child: Text(
                          'How Do You Evaluate This Station?',
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
                    ),
                    Container(
                      // ratingsB2w (277:3981)
                      margin: EdgeInsets.fromLTRB(92.5*fem, 0*fem, 92.5*fem, 0*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // starHrf (277:3982)
                            width: 24*fem,
                            height: 24*fem,
                            child: Image.asset(
                              'assets/page-1/images/star-kpw.png',
                              width: 24*fem,
                              height: 24*fem,
                            ),
                          ),
                          SizedBox(
                            width: 10*fem,
                          ),
                          Container(
                            // starmWw (277:3984)
                            width: 24*fem,
                            height: 24*fem,
                            child: Image.asset(
                              'assets/page-1/images/star-hvX.png',
                              width: 24*fem,
                              height: 24*fem,
                            ),
                          ),
                          SizedBox(
                            width: 10*fem,
                          ),
                          Container(
                            // starx5d (277:3986)
                            width: 24*fem,
                            height: 24*fem,
                            child: Image.asset(
                              'assets/page-1/images/star-GxX.png',
                              width: 24*fem,
                              height: 24*fem,
                            ),
                          ),
                          SizedBox(
                            width: 10*fem,
                          ),
                          Container(
                            // starej9 (277:3988)
                            width: 24*fem,
                            height: 24*fem,
                            child: Image.asset(
                              'assets/page-1/images/star-88P.png',
                              width: 24*fem,
                              height: 24*fem,
                            ),
                          ),
                          SizedBox(
                            width: 10*fem,
                          ),
                          Container(
                            // starxE3 (277:3990)
                            width: 24*fem,
                            height: 24*fem,
                            child: Image.asset(
                              'assets/page-1/images/star-g5m.png',
                              width: 24*fem,
                              height: 24*fem,
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
              // frame75919UiB (277:3992)
              left: 15*fem,
              top: 649*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(44*fem, 0*fem, 44*fem, 0*fem),
                width: 345*fem,
                height: 101*fem,
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.circular(16*fem),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupe96oy99 (JGkCcFqVvudKw8AzY4E96o)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 23*fem),
                      width: double.infinity,
                      height: 39*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // button4RV (277:3993)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23*fem, 0*fem),
                            width: 117*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xff143463)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(4*fem),
                            ),
                            child: Center(
                              child: Center(
                                child: Text(
                                  'Station Faulty',
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
                          Container(
                            // buttonuS7 (277:3995)
                            width: 117*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xff143463)),
                              color: Color(0xff143463),
                              borderRadius: BorderRadius.circular(4*fem),
                            ),
                            child: Center(
                              child: Center(
                                child: Text(
                                  'Station Faulty',
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
                        ],
                      ),
                    ),
                    Container(
                      // autogroup1gx7M3D (JGkCiLVheQYAFGBJvn1Gx7)
                      width: double.infinity,
                      height: 39*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // buttontYw (277:3997)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23*fem, 0*fem),
                            width: 117*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xff143463)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(4*fem),
                            ),
                            child: Center(
                              child: Center(
                                child: Text(
                                  'Station Faulty',
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
                          Container(
                            // buttonuyq (277:3999)
                            width: 117*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xff143463)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(4*fem),
                            ),
                            child: Center(
                              child: Center(
                                child: Text(
                                  'Station Faulty',
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // menuwidgetwfd (277:4001)
              left: 15*fem,
              top: 377*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 20*fem, 0*fem, 20*fem),
                width: 345*fem,
                height: 108*fem,
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.circular(10*fem),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // listtitleAYP (277:4002)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24*fem),
                      width: 163*fem,
                      height: 24*fem,
                      child: Center(
                        child: Text(
                          'Transaction Status:',
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
                    ),
                    Container(
                      // listvfy (277:4004)
                      width: double.infinity,
                      height: 20*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // listitemGE3 (277:4005)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 102*fem, 0*fem),
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // frame31bn7 (277:4006)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                  width: 20*fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: Color(0xff143463)),
                                    color: Color(0xffffffff),
                                    borderRadius: BorderRadius.circular(15*fem),
                                  ),
                                ),
                                Container(
                                  // h66D5 (277:4007)
                                  margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                  child: Text(
                                    'Charged',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 14*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2175*ffem/fem,
                                      letterSpacing: 0.200000003*fem,
                                      color: Color(0xff143463),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // listitemC1D (277:4008)
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // frame31kHd (277:4009)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                  width: 20*fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    border: Border.all(color: Color(0xff143463)),
                                    color: Color(0xffffffff),
                                    borderRadius: BorderRadius.circular(15*fem),
                                  ),
                                ),
                                Container(
                                  // h6Sw9 (277:4010)
                                  margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                  child: Text(
                                    'Failed to Charge',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 14*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2175*ffem/fem,
                                      letterSpacing: 0.200000003*fem,
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
              // menuwidgetxeb (277:4011)
              left: 15*fem,
              top: 485*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 20*fem, 0*fem, 24*fem),
                width: 345*fem,
                height: 164*fem,
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.circular(10*fem),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // listtitleqTV (277:4012)
                      width: 130*fem,
                      height: 24*fem,
                      child: Center(
                        child: Text(
                          'Charging Time:',
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
                    ),
                    SizedBox(
                      height: 24*fem,
                    ),
                    Container(
                      // listtitleUmM (277:4014)
                      width: 71*fem,
                      height: 24*fem,
                      child: Center(
                        child: Text(
                          'Max Kw:',
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
                    ),
                    SizedBox(
                      height: 24*fem,
                    ),
                    Container(
                      // listtitle8qu (277:4016)
                      width: 74*fem,
                      height: 24*fem,
                      child: Center(
                        child: Text(
                          'Amount:',
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
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // frame75918d1y (277:4018)
              left: 15*fem,
              top: 257*fem,
              child: Container(
                width: 345*fem,
                height: 100*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // group75918W5m (277:4019)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25*fem, 0*fem),
                      padding: EdgeInsets.fromLTRB(57*fem, 17*fem, 56*fem, 16*fem),
                      width: 160*fem,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        border: Border.all(color: Color(0xff143463)),
                        color: Color(0xff143463),
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
                        // frame75917FBm (277:4021)
                        padding: EdgeInsets.fromLTRB(0*fem, 3.67*fem, 0*fem, 0*fem),
                        width: double.infinity,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // evplugccs21ZTM (277:4022)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9.83*fem),
                              width: 29.33*fem,
                              height: 38.5*fem,
                              child: Image.asset(
                                'assets/page-1/images/ev-plug-ccs2-1.png',
                                width: 29.33*fem,
                                height: 38.5*fem,
                              ),
                            ),
                            Text(
                              // dcccsG6s (277:4024)
                              'DC CCS',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 12*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2175*ffem/fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // group75931mpK (277:4025)
                      padding: EdgeInsets.fromLTRB(50*fem, 17*fem, 49*fem, 16*fem),
                      width: 160*fem,
                      height: double.infinity,
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
                        // frame75917SQf (277:4027)
                        padding: EdgeInsets.fromLTRB(0*fem, 9.17*fem, 0*fem, 0*fem),
                        width: double.infinity,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // evplugtype21NJK (277:4028)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17.17*fem),
                              width: 29.33*fem,
                              height: 25.67*fem,
                              child: Image.asset(
                                'assets/page-1/images/ev-plug-type2-1-t2s.png',
                                width: 29.33*fem,
                                height: 25.67*fem,
                              ),
                            ),
                            Text(
                              // actype2ErK (277:4030)
                              'AC Type 2',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 12*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff143463),
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
              // frame83yJ7 (277:4031)
              left: 0*fem,
              top: 159*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 20*fem),
                width: 375*fem,
                height: 98*fem,
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.circular(16*fem),
                ),
                child: Container(
                  // buttonfwd (277:4032)
                  padding: EdgeInsets.fromLTRB(15*fem, 15*fem, 20*fem, 15*fem),
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration (
                    border: Border.all(color: Color(0xff143463)),
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(8*fem),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // frame75948Lns (277:4033)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 133*fem, 0*fem),
                        padding: EdgeInsets.fromLTRB(0.67*fem, 5*fem, 0*fem, 5*fem),
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // carcar1pxw (277:4034)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15.67*fem, 0*fem),
                              width: 26.65*fem,
                              height: 8.78*fem,
                              child: Image.asset(
                                'assets/page-1/images/car-car-1.png',
                                width: 26.65*fem,
                                height: 8.78*fem,
                              ),
                            ),
                            Center(
                              // mercedeseqegkF (277:4038)
                              child: Text(
                                'Mercedes EQE',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.125*ffem/fem,
                                  letterSpacing: -0.0099999998*fem,
                                  color: Color(0xff143463),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // icroundplus5nP (277:4039)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                        width: 14*fem,
                        height: 14*fem,
                        child: Image.asset(
                          'assets/page-1/images/ic-round-plus-ZnF.png',
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