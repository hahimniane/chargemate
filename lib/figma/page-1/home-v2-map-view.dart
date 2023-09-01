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
        // homev2mapviewFuh (202:24)
        width: double.infinity,
        height: 812*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(20*fem),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/page-1/images/frame-33-hew.png',
            ),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              // autogrouporatd9Z (JGjQNW3eGFTFebyr6DoraT)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(15*fem, 30*fem, 15*fem, 25*fem),
                width: 375*fem,
                height: 159*fem,
                decoration: BoxDecoration (
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(20*fem),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      offset: Offset(0*fem, 4*fem),
                      blurRadius: 7*fem,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // yataylogo1Pnw (202:76)
                      margin: EdgeInsets.fromLTRB(72*fem, 0*fem, 0*fem, 19.57*fem),
                      width: 200*fem,
                      height: 36.43*fem,
                      child: Image.asset(
                        'assets/page-1/images/yatay-logo-1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // group75913tjh (202:72)
                      width: 48*fem,
                      height: 48*fem,
                      child: Image.asset(
                        'assets/page-1/images/group-75913-UQF.png',
                        width: 48*fem,
                        height: 48*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogroupeab9orf (JGjQWuyHvbbCaJTJLBEAb9)
              left: 0*fem,
              top: 159*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 0*fem),
                width: 375*fem,
                height: 653*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // group7591953V (202:77)
                      margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 15*fem, 474*fem),
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
                            // group759177Vy (202:79)
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
                              // frame5005viK (202:81)
                              padding: EdgeInsets.fromLTRB(1.84*fem, 2*fem, 0*fem, 2*fem),
                              width: double.infinity,
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // map1svgrepocomEU7 (202:82)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0.01*fem, 9.55*fem, 0*fem),
                                    width: 20.61*fem,
                                    height: 18.23*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/map-1-svgrepo-com-hFM.png',
                                      width: 20.61*fem,
                                      height: 18.23*fem,
                                    ),
                                  ),
                                  Text(
                                    // mapviewKVZ (202:87)
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
                            // group75918C3Z (202:88)
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
                              // frame50058bR (202:90)
                              padding: EdgeInsets.fromLTRB(3.05*fem, 2*fem, 0*fem, 2*fem),
                              width: double.infinity,
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // listcentersvgrepocomr1d (202:91)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.05*fem, 0*fem),
                                    width: 17.9*fem,
                                    height: 17.9*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/list-center-svgrepo-com.png',
                                      width: 17.9*fem,
                                      height: 17.9*fem,
                                    ),
                                  ),
                                  Text(
                                    // listviewgmM (202:94)
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
                    Container(
                      // group75917oqy (202:95)
                      width: 375*fem,
                      height: 115*fem,
                      child: Image.asset(
                        'assets/page-1/images/group-75917-uao.png',
                        width: 375*fem,
                        height: 115*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // homeindicatoronlightKJX (202:111)
              left: 120*fem,
              top: 798*fem,
              child: Container(
                width: 134*fem,
                height: 5*fem,
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.circular(100*fem),
                ),
                child: Center(
                  // homeindicatorCdD (202:112)
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
              // group20vZD (202:114)
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
                  // group75910ACf (202:116)
                  padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 3*fem, 4*fem),
                  width: double.infinity,
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // shapegRu (202:118)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.19*fem, 0*fem),
                        width: 14*fem,
                        height: 14*fem,
                        child: Image.asset(
                          'assets/page-1/images/shape-FNF.png',
                          width: 14*fem,
                          height: 14*fem,
                        ),
                      ),
                      Container(
                        // searchforstationoFd (202:117)
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
                        // filters1svgrepocom1Ucf (202:121)
                        margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                        width: 18*fem,
                        height: 16*fem,
                        child: Image.asset(
                          'assets/page-1/images/filters-1-svgrepo-com-1.png',
                          width: 18*fem,
                          height: 16*fem,
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