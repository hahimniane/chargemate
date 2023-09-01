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
        // homestationpreviewnvb (202:1209)
        width: double.infinity,
        height: 812*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(20*fem),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/page-1/images/frame-33-Ve7.png',
            ),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle17BC3 (202:1256)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 375*fem,
                  height: 159*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(20*fem),
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
              // group75913WtX (202:1257)
              left: 15*fem,
              top: 86*fem,
              child: Align(
                child: SizedBox(
                  width: 48*fem,
                  height: 48*fem,
                  child: Image.asset(
                    'assets/page-1/images/group-75913-dJX.png',
                    width: 48*fem,
                    height: 48*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // yataylogo1o6w (202:1261)
              left: 87*fem,
              top: 30*fem,
              child: Align(
                child: SizedBox(
                  width: 200*fem,
                  height: 36.43*fem,
                  child: Image.asset(
                    'assets/page-1/images/yatay-logo-1-xSB.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // group75919f99 (202:1262)
              left: 15*fem,
              top: 169*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(8*fem, 8*fem, 8*fem, 8*fem),
                width: 345*fem,
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
                      // group759175Tm (202:1264)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
                      padding: EdgeInsets.fromLTRB(23*fem, 7*fem, 24*fem, 7*fem),
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
                      child: Container(
                        // frame5005hk3 (202:1266)
                        padding: EdgeInsets.fromLTRB(1.84*fem, 2*fem, 0*fem, 2*fem),
                        width: double.infinity,
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // map1svgrepocompJs (202:1267)
                              margin: EdgeInsets.fromLTRB(0*fem, 0.01*fem, 9.55*fem, 0*fem),
                              width: 20.61*fem,
                              height: 18.23*fem,
                              child: Image.asset(
                                'assets/page-1/images/map-1-svgrepo-com-zy5.png',
                                width: 20.61*fem,
                                height: 18.23*fem,
                              ),
                            ),
                            Text(
                              // mapviewHy9 (202:1272)
                              'Map View',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff143463),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // group75918ahM (202:1273)
                      padding: EdgeInsets.fromLTRB(27*fem, 7*fem, 27*fem, 7*fem),
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
                      child: Container(
                        // frame5005res (202:1275)
                        padding: EdgeInsets.fromLTRB(3.05*fem, 2*fem, 0*fem, 2*fem),
                        width: double.infinity,
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // listcentersvgrepocomLa3 (202:1276)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.05*fem, 0*fem),
                              width: 17.9*fem,
                              height: 17.9*fem,
                              child: Image.asset(
                                'assets/page-1/images/list-center-svgrepo-com-eX1.png',
                                width: 17.9*fem,
                                height: 17.9*fem,
                              ),
                            ),
                            Text(
                              // listviewJ9V (202:1279)
                              'List View',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w500,
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
              // group75917CEs (202:1280)
              left: 0*fem,
              top: 697*fem,
              child: Align(
                child: SizedBox(
                  width: 375*fem,
                  height: 115*fem,
                  child: Image.asset(
                    'assets/page-1/images/group-75917-nY7.png',
                    width: 375*fem,
                    height: 115*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // homeindicatoronlightTRh (202:1296)
              left: 120*fem,
              top: 798*fem,
              child: Container(
                width: 134*fem,
                height: 5*fem,
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.circular(100*fem),
                ),
                child: Center(
                  // homeindicator5T5 (202:1297)
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
              // group20bwD (202:1299)
              left: 73*fem,
              top: 86*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(8.83*fem, 13*fem, 9*fem, 11*fem),
                width: 287*fem,
                height: 48*fem,
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
                child: Container(
                  // group75910RvF (202:1301)
                  padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 3*fem, 4*fem),
                  width: double.infinity,
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // shapekxX (202:1303)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.19*fem, 0*fem),
                        width: 14*fem,
                        height: 14*fem,
                        child: Image.asset(
                          'assets/page-1/images/shape-Cmu.png',
                          width: 14*fem,
                          height: 14*fem,
                        ),
                      ),
                      Container(
                        // searchforstationUNj (202:1302)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 88.98*fem, 0*fem),
                        child: Text(
                          'Search for station...',
                          style: SafeGoogleFont (
                            'Montserrat',
                            fontSize: 14*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2175*ffem/fem,
                            color: Color(0xff143463),
                          ),
                        ),
                      ),
                      Container(
                        // filters1svgrepocom1jZZ (202:1306)
                        margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                        width: 18*fem,
                        height: 16*fem,
                        child: Image.asset(
                          'assets/page-1/images/filters-1-svgrepo-com-1-f51.png',
                          width: 18*fem,
                          height: 16*fem,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle1303EWK (202:1308)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 375*fem,
                  height: 812*fem,
                  child: Opacity(
                    opacity: 0.3,
                    child: Container(
                      decoration: BoxDecoration (
                        color: Color(0x4c000000),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group75921gt7 (202:1309)
              left: 0*fem,
              top: 556*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                width: 375*fem,
                height: 256*fem,
                decoration: BoxDecoration (
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only (
                    topLeft: Radius.circular(20*fem),
                    topRight: Radius.circular(20*fem),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x29000000),
                      offset: Offset(0*fem, 3*fem),
                      blurRadius: 15*fem,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogrouprvfmykj (JGjftJhLsZerLcqx9HRVFm)
                      padding: EdgeInsets.fromLTRB(15*fem, 10*fem, 15*fem, 8*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20*fem,
                          ),
                          Container(
                            // frame5007TR1 (202:1328)
                            width: double.infinity,
                            height: 40*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // vecteezyelectricvehiclechargin (202:1329)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                  width: 40*fem,
                                  height: 40*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vecteezyelectric-vehicle-charging-station-vector-icon-illustration19551494-converted-1-9cK.png',
                                    width: 40*fem,
                                    height: 40*fem,
                                  ),
                                ),
                                Container(
                                  // istanbulhavalimanbvX (202:1438)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 49*fem, 0*fem),
                                  child: Text(
                                    'istanbul havalimanı',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xff143463),
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame501043R (202:1439)
                                  margin: EdgeInsets.fromLTRB(0*fem, 7.5*fem, 0*fem, 7.5*fem),
                                  padding: EdgeInsets.fromLTRB(5.94*fem, 5*fem, 5*fem, 5*fem),
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    color: Color(0xff57b78b),
                                    borderRadius: BorderRadius.circular(4*fem),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // verifiedsvgrepocom2iNs (202:1440)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.94*fem, 0*fem),
                                        width: 10.12*fem,
                                        height: 9.75*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/verified-svgrepo-com-2-eyu.png',
                                          width: 10.12*fem,
                                          height: 9.75*fem,
                                        ),
                                      ),
                                      Text(
                                        // h5oQK (202:1443)
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
                          SizedBox(
                            height: 20*fem,
                          ),
                          Container(
                            // frame5017sf5 (202:1311)
                            margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 1*fem, 0*fem),
                            width: double.infinity,
                            height: 60*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // frame5015PdR (202:1312)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // h5XzX (202:1313)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                                        child: Text(
                                          'AC',
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 24*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2175*ffem/fem,
                                            letterSpacing: 0.1000000015*fem,
                                            color: Color(0xff143463),
                                          ),
                                        ),
                                      ),
                                      RichText(
                                        // h5nQf (202:1314)
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
                                              text: '5',
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
                                              text: ' available',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 40*fem,
                                ),
                                Container(
                                  // frame5016Tod (202:1315)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // h5ijZ (202:1316)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                                        child: Text(
                                          'DC',
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 24*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2175*ffem/fem,
                                            letterSpacing: 0.1000000015*fem,
                                            color: Color(0xff143463),
                                          ),
                                        ),
                                      ),
                                      RichText(
                                        // h5Q6b (202:1317)
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
                                              text: '3',
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
                                              text: ' available',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 40*fem,
                                ),
                                Container(
                                  // frame5014j2P (202:1318)
                                  padding: EdgeInsets.fromLTRB(1*fem, 2.94*fem, 1*fem, 0*fem),
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // locationpinaltsvgrepocom13Ys (202:1319)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12.92*fem),
                                        width: 23.33*fem,
                                        height: 29.14*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/location-pin-alt-svgrepo-com-1.png',
                                          width: 23.33*fem,
                                          height: 29.14*fem,
                                        ),
                                      ),
                                      RichText(
                                        // h5jwV (202:1321)
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
                                              text: '8',
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
                                              text: ' Km',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 40*fem,
                                ),
                                Container(
                                  // frame5017q7M (202:1322)
                                  padding: EdgeInsets.fromLTRB(0*fem, 1.82*fem, 0*fem, 0*fem),
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // linecirclelirasvgrepocom1ro9 (202:1323)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11.82*fem),
                                        width: 31.35*fem,
                                        height: 31.35*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/line-circle-lira-svgrepo-com-1.png',
                                          width: 31.35*fem,
                                          height: 31.35*fem,
                                        ),
                                      ),
                                      RichText(
                                        // h59GT (202:1326)
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
                    Container(
                      // frame83JYf (202:1444)
                      padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 20*fem),
                      width: double.infinity,
                      height: 88*fem,
                      decoration: BoxDecoration (
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(16*fem),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // buttonmx3 (202:1445)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                            width: 165*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: Color(0xff143463),
                              borderRadius: BorderRadius.circular(8*fem),
                            ),
                            child: Center(
                              child: Center(
                                child: Text(
                                  'Start Charging',
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
                          Container(
                            // buttonR11 (202:1447)
                            width: 165*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xff143463)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(8*fem),
                            ),
                            child: Center(
                              child: Center(
                                child: Text(
                                  'Reservation',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.125*ffem/fem,
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
          ],
        ),
      ),
          );
  }
}