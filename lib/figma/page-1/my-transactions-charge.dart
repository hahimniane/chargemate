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
        // mytransactionschargeLT9 (277:22)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(20*fem),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/page-1/images/frame-33-n39.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupeutswSw (JGjxPFNW9ftk3rAsVcEuts)
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
                    // yataylogo1UrB (277:70)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 19.57*fem),
                    width: 200*fem,
                    height: 36.43*fem,
                    child: Image.asset(
                      'assets/page-1/images/yatay-logo-1-yNo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // autogroupjq1qNRm (JGjxXAJz7GLbR4yNCJJq1q)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 95*fem, 0*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group75913FkT (277:126)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 48*fem, 0*fem),
                          width: 48*fem,
                          height: 48*fem,
                          child: Image.asset(
                            'assets/page-1/images/group-75913-S47.png',
                            width: 48*fem,
                            height: 48*fem,
                          ),
                        ),
                        Container(
                          // mytransactionsMHh (277:125)
                          margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                          child: Text(
                            'My Transactions',
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
              // autogroupx8mdS4F (JGjxfzPcBuYxJqAx3yX8md)
              padding: EdgeInsets.fromLTRB(15*fem, 10*fem, 15*fem, 9*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xfffafafa),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group75919twq (277:130)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                    padding: EdgeInsets.fromLTRB(8*fem, 8*fem, 8*fem, 8*fem),
                    width: double.infinity,
                    height: 54*fem,
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
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group7591785V (277:132)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
                          width: 159*fem,
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
                          child: Center(
                            child: Text(
                              'Charge',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff143463),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // group759186gX (277:136)
                          width: 159*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0x00143463)),
                            color: Color(0x00ffffff),
                            borderRadius: BorderRadius.circular(8*fem),
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
                              'Reservation',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 16*ffem,
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
                  Container(
                    // frame75954KZH (277:72)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 325*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group75923dZy (277:73)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                          padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 19*fem),
                          width: double.infinity,
                          height: 105*fem,
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
                            // frame5012NR5 (277:75)
                            width: double.infinity,
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // group75941sMq (277:76)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                  padding: EdgeInsets.fromLTRB(8*fem, 13*fem, 7*fem, 12.5*fem),
                                  width: 64*fem,
                                  height: 65*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0xff57b78b),
                                    borderRadius: BorderRadius.circular(8*fem),
                                  ),
                                  child: Container(
                                    // frame75953xeB (277:78)
                                    padding: EdgeInsets.fromLTRB(0*fem, 1.69*fem, 0*fem, 0*fem),
                                    width: double.infinity,
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // verifiedsvgrepocom2HRZ (277:79)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6.19*fem),
                                          width: 15.18*fem,
                                          height: 14.62*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/verified-svgrepo-com-2-2G7.png',
                                            width: 15.18*fem,
                                            height: 14.62*fem,
                                          ),
                                        ),
                                        Text(
                                          // successNhu (277:82)
                                          'Success',
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 12*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.3339999517*ffem/fem,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame75946gTh (277:83)
                                  width: 236*fem,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // frame75944cMM (277:84)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 19*fem),
                                        width: double.infinity,
                                        height: 34*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // frame75952XjD (277:85)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 54*fem, 0*fem),
                                              height: double.infinity,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // zesradissonhotelrmV (277:86)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                                    child: Text(
                                                      'ZES-Radisson Hotel',
                                                      style: SafeGoogleFont (
                                                        'Montserrat',
                                                        fontSize: 13*ffem,
                                                        fontWeight: FontWeight.w600,
                                                        height: 1.2175*ffem/fem,
                                                        color: Color(0xff143463),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    // Lgf (277:87)
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
                                            Container(
                                              // frame75917H67 (277:88)
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // evplugtype211no (277:89)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                                    width: 16*fem,
                                                    height: 14*fem,
                                                    child: Image.asset(
                                                      'assets/page-1/images/ev-plug-type2-1-RaF.png',
                                                      width: 16*fem,
                                                      height: 14*fem,
                                                    ),
                                                  ),
                                                  Text(
                                                    // actype2tbh (277:91)
                                                    'AC Type 2',
                                                    style: SafeGoogleFont (
                                                      'Montserrat',
                                                      fontSize: 10*ffem,
                                                      fontWeight: FontWeight.w500,
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
                                      Container(
                                        // frame759512T1 (277:92)
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            RichText(
                                              // h45min9Gj (277:93)
                                              text: TextSpan(
                                                style: SafeGoogleFont (
                                                  'Montserrat',
                                                  fontSize: 10*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2175*ffem/fem,
                                                  color: Color(0xff143463),
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: '1',
                                                    style: SafeGoogleFont (
                                                      'Montserrat',
                                                      fontSize: 10*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.2175*ffem/fem,
                                                      color: Color(0xff143463),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: ' h ',
                                                  ),
                                                  TextSpan(
                                                    text: '45',
                                                    style: SafeGoogleFont (
                                                      'Montserrat',
                                                      fontSize: 10*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.2175*ffem/fem,
                                                      color: Color(0xff143463),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: ' min',
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 19*fem,
                                            ),
                                            SizedBox(
                                              width: 19*fem,
                                            ),
                                            RichText(
                                              // kwdd9 (277:95)
                                              text: TextSpan(
                                                style: SafeGoogleFont (
                                                  'Montserrat',
                                                  fontSize: 10*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2175*ffem/fem,
                                                  color: Color(0xff143463),
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: '34',
                                                    style: SafeGoogleFont (
                                                      'Montserrat',
                                                      fontSize: 10*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.2175*ffem/fem,
                                                      color: Color(0xff143463),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: ' kW',
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 19*fem,
                                            ),
                                            SizedBox(
                                              width: 19*fem,
                                            ),
                                            RichText(
                                              // tlJ71 (277:97)
                                              text: TextSpan(
                                                style: SafeGoogleFont (
                                                  'Montserrat',
                                                  fontSize: 10*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2175*ffem/fem,
                                                  color: Color(0xff143463),
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: '213,50',
                                                    style: SafeGoogleFont (
                                                      'Montserrat',
                                                      fontSize: 10*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.2175*ffem/fem,
                                                      color: Color(0xff143463),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: ' TL',
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
                        Container(
                          // group75925ohy (277:98)
                          padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 19*fem),
                          width: double.infinity,
                          height: 105*fem,
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
                            // frame50124P1 (277:100)
                            width: double.infinity,
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // group75941xzB (277:101)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                  padding: EdgeInsets.fromLTRB(21*fem, 13*fem, 21*fem, 12.5*fem),
                                  width: 64*fem,
                                  height: 65*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0xffe63946),
                                    borderRadius: BorderRadius.circular(8*fem),
                                  ),
                                  child: Container(
                                    // frame75953Xfu (277:103)
                                    padding: EdgeInsets.fromLTRB(0*fem, 2.25*fem, 0*fem, 0*fem),
                                    width: double.infinity,
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // verifiedsvgrepocom2qRh (277:104)
                                          margin: EdgeInsets.fromLTRB(0.18*fem, 0*fem, 0*fem, 5.63*fem),
                                          width: 15.18*fem,
                                          height: 14.62*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/verified-svgrepo-com-2-sbM.png',
                                            width: 15.18*fem,
                                            height: 14.62*fem,
                                          ),
                                        ),
                                        Text(
                                          // fail7u1 (277:107)
                                          'Fail',
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 12*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.3339999517*ffem/fem,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame75946pHd (277:108)
                                  width: 236*fem,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // frame75944xPq (277:109)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 19*fem),
                                        width: double.infinity,
                                        height: 34*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // frame759525DZ (277:110)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 54*fem, 0*fem),
                                              height: double.infinity,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // zesradissonhotelofM (277:111)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                                    child: Text(
                                                      'ZES-Radisson Hotel',
                                                      style: SafeGoogleFont (
                                                        'Montserrat',
                                                        fontSize: 13*ffem,
                                                        fontWeight: FontWeight.w600,
                                                        height: 1.2175*ffem/fem,
                                                        color: Color(0xff143463),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    // tgo (277:112)
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
                                            Container(
                                              // frame759172Y7 (277:113)
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // evplugtype21Nrs (277:114)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                                    width: 16*fem,
                                                    height: 14*fem,
                                                    child: Image.asset(
                                                      'assets/page-1/images/ev-plug-type2-1.png',
                                                      width: 16*fem,
                                                      height: 14*fem,
                                                    ),
                                                  ),
                                                  Text(
                                                    // actype2TdR (277:116)
                                                    'AC Type 2',
                                                    style: SafeGoogleFont (
                                                      'Montserrat',
                                                      fontSize: 10*ffem,
                                                      fontWeight: FontWeight.w500,
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
                                      Container(
                                        // frame75951z7Z (277:117)
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            RichText(
                                              // h0min8Dm (277:118)
                                              text: TextSpan(
                                                style: SafeGoogleFont (
                                                  'Montserrat',
                                                  fontSize: 10*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2175*ffem/fem,
                                                  color: Color(0xff143463),
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: '0',
                                                    style: SafeGoogleFont (
                                                      'Montserrat',
                                                      fontSize: 10*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.2175*ffem/fem,
                                                      color: Color(0xff143463),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: ' h ',
                                                  ),
                                                  TextSpan(
                                                    text: '0',
                                                    style: SafeGoogleFont (
                                                      'Montserrat',
                                                      fontSize: 10*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.2175*ffem/fem,
                                                      color: Color(0xff143463),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: ' min',
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 21.75*fem,
                                            ),
                                            SizedBox(
                                              width: 21.75*fem,
                                            ),
                                            RichText(
                                              // kwzHu (277:120)
                                              text: TextSpan(
                                                style: SafeGoogleFont (
                                                  'Montserrat',
                                                  fontSize: 10*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2175*ffem/fem,
                                                  color: Color(0xff143463),
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: '0',
                                                    style: SafeGoogleFont (
                                                      'Montserrat',
                                                      fontSize: 10*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.2175*ffem/fem,
                                                      color: Color(0xff143463),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: ' kW',
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 21.75*fem,
                                            ),
                                            SizedBox(
                                              width: 21.75*fem,
                                            ),
                                            RichText(
                                              // tljuh (277:122)
                                              text: TextSpan(
                                                style: SafeGoogleFont (
                                                  'Montserrat',
                                                  fontSize: 10*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2175*ffem/fem,
                                                  color: Color(0xff143463),
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: '00,00',
                                                    style: SafeGoogleFont (
                                                      'Montserrat',
                                                      fontSize: 10*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.2175*ffem/fem,
                                                      color: Color(0xff143463),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: ' TL',
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
                  Container(
                    // homeindicatoronlightLeb (277:123)
                    margin: EdgeInsets.fromLTRB(105*fem, 0*fem, 106*fem, 0*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(100*fem),
                    ),
                    child: Center(
                      // homeindicatorQuM (277:124)
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
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}