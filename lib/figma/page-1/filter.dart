import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import '../utils.dart';

class FilterPage extends StatelessWidget {
  @override
  Widget build(context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 5,
        ),
        Center(
          child: Image(
            height: 30,
            fit: BoxFit.cover,
            image: AssetImage(
              'page-1/images/yatay-logo-1-1sd.png',
            ),
          ),
        ),
        SizedBox(
          height: 35,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              // filter1fM (202:1162)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 133 * fem, fem),
              child: Text(
                'Filtreler',
                style: GoogleFonts.montserrat(
                  fontSize: 22 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2175 * ffem / fem,
                  color: Color(0xff143463),
                ),
              ),
            ),
            Container(
              // clearselectiontUF (202:1163)
              margin: EdgeInsets.fromLTRB(0 * fem, 1 * fem, 0 * fem, 0 * fem),
              child: Text(
                'Seçimi Temizle',
                style: SafeGoogleFont(
                  'Montserrat',
                  fontSize: 14 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2175 * ffem / fem,
                  decoration: TextDecoration.underline,
                  color: Color(0xff143463),
                  decorationColor: Color(0xff143463),
                ),
              ),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
              // color: Colors.blue,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.fromLTRB(10, 5, 5, 10),
          margin: EdgeInsets.fromLTRB(15, 30, 15, 5),
          height: size.height * 0.20,
          width: size.width * 0.90,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // listtitlebmy (202:1166)
                  margin:
                      EdgeInsets.fromLTRB(5 * fem, 5 * fem, 0 * fem, 24 * fem),
                  width: 94 * fem,
                  height: 24 * fem,
                  child: Text(
                    'Marka',
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.5 * ffem / fem,
                      letterSpacing: 0.1000000015 * fem,
                      color: Color(0xff143463),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          // h6Ycf (202:1173)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 1 * fem, 213 * fem, 0 * fem),
                          child: Text(
                            'Zes',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2175 * ffem / fem,
                              letterSpacing: 0.200000003 * fem,
                              color: Color(0xff143463),
                            ),
                          ),
                        ),
                        Container(
                          // frame311m9 (202:1174)
                          width: 20 * fem,
                          height: 20 * fem,
                          child: Image.asset(
                            'page-1/images/frame-31.png',
                            width: 20 * fem,
                            height: 20 * fem,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          // h6Ycf (202:1173)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 1 * fem, 213 * fem, 0 * fem),
                          child: Text(
                            'Zes',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2175 * ffem / fem,
                              letterSpacing: 0.200000003 * fem,
                              color: Color(0xff143463),
                            ),
                          ),
                        ),
                        Container(
                          // frame311m9 (202:1174)
                          width: 20 * fem,
                          height: 20 * fem,
                          child: Image.asset(
                            'page-1/images/frame-31.png',
                            width: 20 * fem,
                            height: 20 * fem,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // h6Ycf (202:1173)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 1 * fem, 213 * fem, 0 * fem),
                      child: Text(
                        'Trugo',
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2175 * ffem / fem,
                          letterSpacing: 0.200000003 * fem,
                          color: Color(0xff143463),
                        ),
                      ),
                    ),
                    Container(
                      // frame311m9 (202:1174)
                      width: 20 * fem,
                      height: 20 * fem,
                      child: Image.asset(
                        'page-1/images/frame-31.png',
                        width: 20 * fem,
                        height: 20 * fem,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),

              ],
            ),
          ),
        )
      ],
    ));
  }
  // Widget build(BuildContext context) {
  //   double baseWidth = 375;
  //   double fem = MediaQuery.of(context).size.width / baseWidth;
  //   double ffem = fem * 0.97;
  //   return Container(
  //     width: double.infinity,
  //     child: Container(
  //       // filterg4o (202:1056)
  //       width: double.infinity,
  //       height: 812 * fem,
  //       decoration: BoxDecoration(
  //         color: Color(0xffffffff),
  //         // color: Colors.brown,
  //         borderRadius: BorderRadius.circular(20 * fem),
  //         // image: DecorationImage (
  //         //   fit: BoxFit.cover,
  //         //   image: AssetImage (
  //         //     'page-1/images/frame-33-eXy.png',
  //         //   ),
  //         // ),
  //       ),
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.start,
  //         children: [
  //           Container(
  //             padding:
  //                 EdgeInsets.fromLTRB(15 * fem, 30 * fem, 15 * fem, 30 * fem),
  //             width: 375 * fem,
  //             height: 110 * fem,
  //             decoration: BoxDecoration(
  //               color: Color(0xffffffff),
  //               // color: Colors.blue,
  //               borderRadius: BorderRadius.circular(10 * fem),
  //               boxShadow: [
  //                 BoxShadow(
  //                   color: Color(0x19000000),
  //                   offset: Offset(0 * fem, 0 * fem),
  //                   blurRadius: 2 * fem,
  //                 ),
  //               ],
  //             ),
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Container(
  //                   // yataylogo1mdy (202:1108)
  //                   margin: EdgeInsets.fromLTRB(
  //                       72 * fem, 0 * fem, 0 * fem, 19.57 * fem),
  //                   width: 200 * fem,
  //                   height: 30.43 * fem,
  //                   child: Image.asset(
  //                     'page-1/images/yatay-logo-1-1sd.png',
  //                     fit: BoxFit.cover,
  //                   ),
  //                 ),
  //                 // Container(
  //                 //   // group75913eBy (202:1104)
  //                 //   width: 48*fem,
  //                 //   height: 48*fem,
  //                 //   child: Image.asset(
  //                 //     'page-1/images/group-75913.png',
  //                 //     width: 48*fem,
  //                 //     height: 48*fem,
  //                 //   ),
  //                 // ),
  //               ],
  //             ),
  //           ),
  //           SizedBox(
  //             height: 12,
  //           ),
  //          Column(
  //            mainAxisAlignment: MainAxisAlignment.start,
  //            children: [
  //              Container(
  //                // listtitlebmy (202:1166)
  //                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 24 * fem),
  //                width: 94 * fem,
  //                height: 24 * fem,
  //                child: Text(
  //                  'Availability',
  //                  style: SafeGoogleFont(
  //                    'Montserrat',
  //                    fontSize: 16 * ffem,
  //                    fontWeight: FontWeight.w700,
  //                    height: 1.5 * ffem / fem,
  //                    letterSpacing: 0.1000000015 * fem,
  //                    color: Color(0xff143463),
  //                  ),
  //                ),
  //              ),
  //              Container(
  //                // listTpB (202:1168)
  //                width: double.infinity,
  //                child: Column(
  //                  crossAxisAlignment: CrossAxisAlignment.center,
  //                  children: [
  //                    Container(
  //                      // listitemPhq (202:1169)
  //                      margin: EdgeInsets.fromLTRB(
  //                          0 * fem, 0 * fem, 0 * fem, 20 * fem),
  //                      width: double.infinity,
  //                      height: 20 * fem,
  //                      child: Row(
  //                        crossAxisAlignment: CrossAxisAlignment.center,
  //                        children: [
  //                          Expanded(
  //                            child: Container(
  //                              // h6ik7 (202:1170)
  //                              margin: EdgeInsets.fromLTRB(
  //                                  0 * fem, 1 * fem, 215 * fem, 0 * fem),
  //                              child: Text(
  //                                'Online',
  //                                style: SafeGoogleFont(
  //                                  'Montserrat',
  //                                  fontSize: 14 * ffem,
  //                                  fontWeight: FontWeight.w700,
  //                                  height: 1.2175 * ffem / fem,
  //                                  letterSpacing: 0.200000003 * fem,
  //                                  color: Color(0xff143463),
  //                                ),
  //                              ),
  //                            ),
  //                          ),
  //                          Container(
  //
  //                            // frame31Dgs (202:1171)
  //                            width: 20 * fem,
  //                            height: double.infinity,
  //                            decoration: BoxDecoration(
  //                              border: Border.all(color: Color(0xff143463)),
  //                              color: Color(0xffffffff),
  //                              borderRadius: BorderRadius.circular(5 * fem),
  //                            ),
  //                          ),
  //                        ],
  //                      ),
  //                    ),
  //                    Container(
  //                      // listitemUco (202:1172)
  //                      width: double.infinity,
  //                      child: Row(
  //                        crossAxisAlignment: CrossAxisAlignment.center,
  //                        children: [
  //                          Container(
  //                            // h6Ycf (202:1173)
  //                            margin: EdgeInsets.fromLTRB(
  //                                0 * fem, 1 * fem, 213 * fem, 0 * fem),
  //                            child: Text(
  //                              'Offline',
  //                              style: SafeGoogleFont(
  //                                'Montserrat',
  //                                fontSize: 14 * ffem,
  //                                fontWeight: FontWeight.w700,
  //                                height: 1.2175 * ffem / fem,
  //                                letterSpacing: 0.200000003 * fem,
  //                                color: Color(0xff143463),
  //                              ),
  //                            ),
  //                          ),
  //                          Container(
  //                            // frame311m9 (202:1174)
  //                            width: 20 * fem,
  //                            height: 20 * fem,
  //                            child: Image.asset(
  //                              'page-1/images/frame-31.png',
  //                              width: 20 * fem,
  //                              height: 20 * fem,
  //                            ),
  //                          ),
  //                        ],
  //                      ),
  //                    ),
  //
  //                  ],
  //                ),
  //              ),
  //            ],
  //          )
  //         ],
  //
  //         // Positioned(
  //         //   // autogrouprukfAAK (JGjddTHi4f9RE2otqUrUkf)
  //         //   left: 0*fem,
  //         //   top: 159*fem,
  //         //   child: Container(
  //         //     padding: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 0*fem),
  //         //     width: 375*fem,
  //         //     height: 653*fem,
  //         //     child: Column(
  //         //       crossAxisAlignment: CrossAxisAlignment.center,
  //         //       children: [
  //         //         Container(
  //         //           // group75919ebH (202:1109)
  //         //           margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 15*fem, 474*fem),
  //         //           padding: EdgeInsets.fromLTRB(8*fem, 8*fem, 8*fem, 8*fem),
  //         //           width: double.infinity,
  //         //           height: 54*fem,
  //         //           decoration: BoxDecoration (
  //         //             color: Color(0xfffafafa),
  //         //             borderRadius: BorderRadius.circular(16*fem),
  //         //             boxShadow: [
  //         //               BoxShadow(
  //         //                 color: Color(0x19606470),
  //         //                 offset: Offset(0*fem, 5*fem),
  //         //                 blurRadius: 10*fem,
  //         //               ),
  //         //             ],
  //         //           ),
  //         //           child: Row(
  //         //             crossAxisAlignment: CrossAxisAlignment.center,
  //         //             children: [
  //         //               Container(
  //         //                 // group75917ezb (202:1111)
  //         //                 margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
  //         //                 padding: EdgeInsets.fromLTRB(23*fem, 7*fem, 24*fem, 7*fem),
  //         //                 width: 159*fem,
  //         //                 height: double.infinity,
  //         //                 decoration: BoxDecoration (
  //         //                   border: Border.all(color: Color(0xff143463)),
  //         //                   color: Color(0xffffffff),
  //         //                   borderRadius: BorderRadius.circular(8*fem),
  //         //                   boxShadow: [
  //         //                     BoxShadow(
  //         //                       color: Color(0x19606470),
  //         //                       offset: Offset(0*fem, 5*fem),
  //         //                       blurRadius: 10*fem,
  //         //                     ),
  //         //                   ],
  //         //                 ),
  //         //                 child: Container(
  //         //                   // frame5005hT5 (202:1113)
  //         //                   padding: EdgeInsets.fromLTRB(1.84*fem, 2*fem, 0*fem, 2*fem),
  //         //                   width: double.infinity,
  //         //                   height: double.infinity,
  //         //                   child: Row(
  //         //                     crossAxisAlignment: CrossAxisAlignment.center,
  //         //                     children: [
  //         //                       Container(
  //         //                         // map1svgrepocomnDd (202:1114)
  //         //                         margin: EdgeInsets.fromLTRB(0*fem, 0.01*fem, 9.55*fem, 0*fem),
  //         //                         width: 20.61*fem,
  //         //                         height: 18.23*fem,
  //         //                         child: Image.asset(
  //         //                           'page-1/images/map-1-svgrepo-com-4yu.png',
  //         //                           width: 20.61*fem,
  //         //                           height: 18.23*fem,
  //         //                         ),
  //         //                       ),
  //         //                       Text(
  //         //                         // mapviewCYF (202:1119)
  //         //                         'Map View',
  //         //                         style: SafeGoogleFont (
  //         //                           'Montserrat',
  //         //                           fontSize: 16*ffem,
  //         //                           fontWeight: FontWeight.w500,
  //         //                           height: 1.2175*ffem/fem,
  //         //                           color: Color(0xff143463),
  //         //                         ),
  //         //                       ),
  //         //                     ],
  //         //                   ),
  //         //                 ),
  //         //               ),
  //         //               Container(
  //         //                 // group75918FmR (202:1120)
  //         //                 padding: EdgeInsets.fromLTRB(27*fem, 7*fem, 27*fem, 7*fem),
  //         //                 width: 159*fem,
  //         //                 height: double.infinity,
  //         //                 decoration: BoxDecoration (
  //         //                   border: Border.all(color: Color(0x00143463)),
  //         //                   color: Color(0x00ffffff),
  //         //                   borderRadius: BorderRadius.circular(8*fem),
  //         //                   boxShadow: [
  //         //                     BoxShadow(
  //         //                       color: Color(0x19606470),
  //         //                       offset: Offset(0*fem, 5*fem),
  //         //                       blurRadius: 10*fem,
  //         //                     ),
  //         //                   ],
  //         //                 ),
  //         //                 child: Container(
  //         //                   // frame50052vb (202:1122)
  //         //                   padding: EdgeInsets.fromLTRB(3.05*fem, 2*fem, 0*fem, 2*fem),
  //         //                   width: double.infinity,
  //         //                   height: double.infinity,
  //         //                   child: Row(
  //         //                     crossAxisAlignment: CrossAxisAlignment.center,
  //         //                     children: [
  //         //                       Container(
  //         //                         // listcentersvgrepocomwnf (202:1123)
  //         //                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.05*fem, 0*fem),
  //         //                         width: 17.9*fem,
  //         //                         height: 17.9*fem,
  //         //                         child: Image.asset(
  //         //                           'page-1/images/list-center-svgrepo-com-uAw.png',
  //         //                           width: 17.9*fem,
  //         //                           height: 17.9*fem,
  //         //                         ),
  //         //                       ),
  //         //                       Text(
  //         //                         // listviewcto (202:1126)
  //         //                         'List View',
  //         //                         style: SafeGoogleFont (
  //         //                           'Montserrat',
  //         //                           fontSize: 16*ffem,
  //         //                           fontWeight: FontWeight.w500,
  //         //                           height: 1.2175*ffem/fem,
  //         //                           color: Color(0xff143463),
  //         //                         ),
  //         //                       ),
  //         //                     ],
  //         //                   ),
  //         //                 ),
  //         //               ),
  //         //             ],
  //         //           ),
  //         //         ),
  //         //         Container(
  //         //           // group75917v8o (202:1127)
  //         //           width: 375*fem,
  //         //           height: 115*fem,
  //         //           child: Image.asset(
  //         //             'page-1/images/group-75917.png',
  //         //             width: 375*fem,
  //         //             height: 115*fem,
  //         //           ),
  //         //         ),
  //         //       ],
  //         //     ),
  //         //   ),
  //         // ),
  //         // Positioned(
  //         //   // homeindicatoronlightdou (202:1143)
  //         //   left: 120*fem,
  //         //   top: 798*fem,
  //         //   child: Container(
  //         //     width: 134*fem,
  //         //     height: 5*fem,
  //         //     decoration: BoxDecoration (
  //         //       borderRadius: BorderRadius.circular(100*fem),
  //         //     ),
  //         //     child: Center(
  //         //       // homeindicatorjc3 (202:1144)
  //         //       child: SizedBox(
  //         //         width: double.infinity,
  //         //         height: 5*fem,
  //         //         child: Container(
  //         //           decoration: BoxDecoration (
  //         //             borderRadius: BorderRadius.circular(100*fem),
  //         //             color: Color(0x0c333333),
  //         //           ),
  //         //         ),
  //         //       ),
  //         //     ),
  //         //   ),
  //         // ),
  //         // Positioned(
  //         //   // group20dSX (202:1146)
  //         //   left: 73*fem,
  //         //   top: 86*fem,
  //         //   child: Container(
  //         //     padding: EdgeInsets.fromLTRB(8.83*fem, 13*fem, 9*fem, 11*fem),
  //         //     width: 287*fem,
  //         //     height: 48*fem,
  //         //     decoration: BoxDecoration (
  //         //       color: Color(0xffffffff),
  //         //       borderRadius: BorderRadius.circular(10*fem),
  //         //       boxShadow: [
  //         //         BoxShadow(
  //         //           color: Color(0x19606470),
  //         //           offset: Offset(0*fem, 5*fem),
  //         //           blurRadius: 10*fem,
  //         //         ),
  //         //       ],
  //         //     ),
  //         //     child: Container(
  //         //       // group7591065D (202:1148)
  //         //       padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 3*fem, 4*fem),
  //         //       width: double.infinity,
  //         //       height: double.infinity,
  //         //       child: Row(
  //         //         crossAxisAlignment: CrossAxisAlignment.center,
  //         //         children: [
  //         //           // Container(
  //         //           //   // shape1hy (202:1150)
  //         //           //   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.19*fem, 0*fem),
  //         //           //   width: 14*fem,
  //         //           //   height: 14*fem,
  //         //           //   child: Image.asset(
  //         //           //     'page-1/images/shape.png',
  //         //           //     width: 14*fem,
  //         //           //     height: 14*fem,
  //         //           //   ),
  //         //           // ),
  //         //           // Container(
  //         //           //   // searchforstationHvP (202:1149)
  //         //           //   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 88.98*fem, 0*fem),
  //         //           //   child: Text(
  //         //           //     'Search for station...',
  //         //           //     style: SafeGoogleFont (
  //         //           //       'Montserrat',
  //         //           //       fontSize: 14*ffem,
  //         //           //       fontWeight: FontWeight.w600,
  //         //           //       height: 1.2175*ffem/fem,
  //         //           //       color: Color(0xff143463),
  //         //           //     ),
  //         //           //   ),
  //         //           // ),
  //         //           Container(
  //         //             // filters1svgrepocom1zZu (202:1153)
  //         //             margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
  //         //             width: 18*fem,
  //         //             height: 16*fem,
  //         //             child: Text('Filters')
  //         //           ),
  //         //         ],
  //         //       ),
  //         //     ),
  //         //   ),
  //         // ),
  //         // Positioned(
  //         //   // rectangle1303ghd (202:1155)
  //         //   left: 0*fem,
  //         //   top: 0*fem,
  //         //   child: Align(
  //         //     child: SizedBox(
  //         //       width: 375*fem,
  //         //       height: 812*fem,
  //         //       child: Opacity(
  //         //         opacity: 0.3,
  //         //         child: Container(
  //         //           decoration: BoxDecoration (
  //         //             color: Color(0x4c000000),
  //         //           ),
  //         //         ),
  //         //       ),
  //         //     ),
  //         //   ),
  //         // ),
  //         // Positioned(
  //         //   // group75921Dqy (202:1156)
  //         //   left: 0*fem,
  //         //   top: 79*fem,
  //         //   child: Container(
  //         //     padding: EdgeInsets.fromLTRB(15*fem, 10*fem, 15*fem, 107*fem),
  //         //     width: 375*fem,
  //         //     height: 733*fem,
  //         //     decoration: BoxDecoration (
  //         //       color: Color(0xffffffff),
  //         //       borderRadius: BorderRadius.only (
  //         //         topLeft: Radius.circular(20*fem),
  //         //         topRight: Radius.circular(20*fem),
  //         //       ),
  //         //       boxShadow: [
  //         //         BoxShadow(
  //         //           color: Color(0x29000000),
  //         //           offset: Offset(0*fem, 3*fem),
  //         //           blurRadius: 15*fem,
  //         //         ),
  //         //       ],
  //         //     ),
  //         //     child: Column(
  //         //       crossAxisAlignment: CrossAxisAlignment.center,
  //         //       children: [
  //         //         Container(
  //         //           // color: Colors.pink,
  //         //           // frame5007p55 (202:1159)
  //         //           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 15*fem),
  //         //           padding: EdgeInsets.fromLTRB(2.5*fem, 0*fem, 0*fem, 0*fem),
  //         //           child: Row(
  //         //             crossAxisAlignment: CrossAxisAlignment.center,
  //         //             children: [
  //         //               Container(
  //         //                 // filters1svgrepocom1Wib (202:1160)
  //         //                 margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.5*fem, 0*fem),
  //         //                 width: 15*fem,
  //         //                 height: 13.33*fem,
  //         //                 child: Image.asset(
  //         //                   'page-1/images/filters-1-svgrepo-com-1-BBu.png',
  //         //                   width: 15*fem,
  //         //                   height: 13.33*fem,
  //         //                 ),
  //         //               ),
  //         //               Container(
  //         //                 // filter1fM (202:1162)
  //         //                 margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 133*fem, fem),
  //         //                 child: Text(
  //         //                   'Filte',
  //         //                   style: GoogleFonts.montserrat (
  //         //
  //         //                     fontSize: 22*ffem,
  //         //                     fontWeight: FontWeight.w700,
  //         //                     height: 1.2175*ffem/fem,
  //         //                     color: Color(0xff143463),
  //         //                   ),
  //         //                 ),
  //         //               ),
  //         //               Container(
  //         //                 // clearselectiontUF (202:1163)
  //         //                 margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
  //         //                 child: Text(
  //         //                   'Clear Selection',
  //         //                   style: SafeGoogleFont (
  //         //                     'Montserrat',
  //         //                     fontSize: 14*ffem,
  //         //                     fontWeight: FontWeight.w700,
  //         //                     height: 1.2175*ffem/fem,
  //         //                     decoration: TextDecoration.underline,
  //         //                     color: Color(0xff143463),
  //         //                     decorationColor: Color(0xff143463),
  //         //                   ),
  //         //                 ),
  //         //               ),
  //         //             ],
  //         //           ),
  //         //         ),
  //         //         Container(
  //         //           // color: Colors.blue,
  //         //           // frame5008BiF (202:1164)
  //         //           width: double.infinity,
  //         //           child: Column(
  //         //             crossAxisAlignment: CrossAxisAlignment.center,
  //         //             children: [
  //         //               Container(
  //         //                 // menuwidgetJns (202:1165)
  //         //                 padding: EdgeInsets.fromLTRB(30*fem, 30*fem, 30*fem, 30*fem),
  //         //                 width: double.infinity,
  //         //                 decoration: BoxDecoration (
  //         //                   border: Border.all(color: Color(0xffe8e8e8)),
  //         //                   borderRadius: BorderRadius.circular(10*fem),
  //         //                 ),
  //         //                 child: Column(
  //         //                   crossAxisAlignment: CrossAxisAlignment.start,
  //         //                   children: [
  //         //
  //         //                     Container(
  //         //                       // listTpB (202:1168)
  //         //                       width: double.infinity,
  //         //                       child: Column(
  //         //                         crossAxisAlignment: CrossAxisAlignment.center,
  //         //                         children: [
  //         //                           Container(
  //         //                             // listitemPhq (202:1169)
  //         //                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
  //         //                             width: double.infinity,
  //         //                             height: 20*fem,
  //         //                             child: Row(
  //         //                               crossAxisAlignment: CrossAxisAlignment.center,
  //         //                               children: [
  //         //                                 Expanded(
  //         //                                   child: Container(
  //         //                                     // h6ik7 (202:1170)
  //         //                                     margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 215*fem, 0*fem),
  //         //                                     child: Text(
  //         //                                       'Online',
  //         //                                       style: SafeGoogleFont (
  //         //                                         'Montserrat',
  //         //                                         fontSize: 14*ffem,
  //         //                                         fontWeight: FontWeight.w700,
  //         //                                         height: 1.2175*ffem/fem,
  //         //                                         letterSpacing: 0.200000003*fem,
  //         //                                         color: Color(0xff143463),
  //         //                                       ),
  //         //                                     ),
  //         //                                   ),
  //         //                                 ),
  //         //                                 Container(
  //         //                                   // frame31Dgs (202:1171)
  //         //                                   width: 20*fem,
  //         //                                   height: double.infinity,
  //         //                                   decoration: BoxDecoration (
  //         //                                     border: Border.all(color: Color(0xff143463)),
  //         //                                     color: Color(0xffffffff),
  //         //                                     borderRadius: BorderRadius.circular(5*fem),
  //         //                                   ),
  //         //                                 ),
  //         //                               ],
  //         //                             ),
  //         //                           ),
  //         //                           Container(
  //         //                             // listitemUco (202:1172)
  //         //                             width: double.infinity,
  //         //                             child: Row(
  //         //                               crossAxisAlignment: CrossAxisAlignment.center,
  //         //                               children: [
  //         //                                 Container(
  //         //                                   // h6Ycf (202:1173)
  //         //                                   margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 213*fem, 0*fem),
  //         //                                   child: Text(
  //         //                                     'Offline',
  //         //                                     style: SafeGoogleFont (
  //         //                                       'Montserrat',
  //         //                                       fontSize: 14*ffem,
  //         //                                       fontWeight: FontWeight.w700,
  //         //                                       height: 1.2175*ffem/fem,
  //         //                                       letterSpacing: 0.200000003*fem,
  //         //                                       color: Color(0xff143463),
  //         //                                     ),
  //         //                                   ),
  //         //                                 ),
  //         //                                 Container(
  //         //                                   // frame311m9 (202:1174)
  //         //                                   width: 20*fem,
  //         //                                   height: 20*fem,
  //         //                                   child: Image.asset(
  //         //                                     'page-1/images/frame-31.png',
  //         //                                     width: 20*fem,
  //         //                                     height: 20*fem,
  //         //                                   ),
  //         //                                 ),
  //         //                               ],
  //         //                             ),
  //         //                           ),
  //         //                         ],
  //         //                       ),
  //         //                     ),
  //         //                   ],
  //         //                 ),
  //         //               ),
  //         //               SizedBox(
  //         //                 height: 20*fem,
  //         //               ),
  //         //               Container(
  //         //                 // menuwidgeth8B (202:1178)
  //         //                 padding: EdgeInsets.fromLTRB(30*fem, 30*fem, 30*fem, 30*fem),
  //         //                 width: double.infinity,
  //         //                 decoration: BoxDecoration (
  //         //                   border: Border.all(color: Color(0xffe8e8e8)),
  //         //                   borderRadius: BorderRadius.circular(10*fem),
  //         //                 ),
  //         //                 child: Column(
  //         //                   crossAxisAlignment: CrossAxisAlignment.start,
  //         //                   children: [
  //         //                     Container(
  //         //                       // listtitlebzF (202:1179)
  //         //                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24*fem),
  //         //                       width: 94*fem,
  //         //                       height: 24*fem,
  //         //                       child: Center(
  //         //                         child: Text(
  //         //                           'Availability',
  //         //                           style: SafeGoogleFont (
  //         //                             'Montserrat',
  //         //                             fontSize: 16*ffem,
  //         //                             fontWeight: FontWeight.w700,
  //         //                             height: 1.5*ffem/fem,
  //         //                             letterSpacing: 0.1000000015*fem,
  //         //                             color: Color(0xff143463),
  //         //                           ),
  //         //                         ),
  //         //                       ),
  //         //                     ),
  //         //                     Container(
  //         //                       // listgF1 (202:1181)
  //         //                       width: double.infinity,
  //         //                       child: Column(
  //         //                         crossAxisAlignment: CrossAxisAlignment.center,
  //         //                         children: [
  //         //                           Container(
  //         //                             // listitemoqR (202:1182)
  //         //                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
  //         //                             width: double.infinity,
  //         //                             height: 20*fem,
  //         //                             child: Row(
  //         //                               crossAxisAlignment: CrossAxisAlignment.center,
  //         //                               children: [
  //         //                                 Expanded(
  //         //                                   child: Container(
  //         //                                     // h6qn7 (202:1183)
  //         //                                     margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 215*fem, 0*fem),
  //         //                                     child: Text(
  //         //                                       'Online',
  //         //                                       style: SafeGoogleFont (
  //         //                                         'Montserrat',
  //         //                                         fontSize: 14*ffem,
  //         //                                         fontWeight: FontWeight.w700,
  //         //                                         height: 1.2175*ffem/fem,
  //         //                                         letterSpacing: 0.200000003*fem,
  //         //                                         color: Color(0xff143463),
  //         //                                       ),
  //         //                                     ),
  //         //                                   ),
  //         //                                 ),
  //         //                                 Container(
  //         //                                   // frame31k8P (202:1184)
  //         //                                   width: 20*fem,
  //         //                                   height: double.infinity,
  //         //                                   decoration: BoxDecoration (
  //         //                                     border: Border.all(color: Color(0xff143463)),
  //         //                                     color: Color(0xffffffff),
  //         //                                     borderRadius: BorderRadius.circular(5*fem),
  //         //                                   ),
  //         //                                 ),
  //         //                               ],
  //         //                             ),
  //         //                           ),
  //         //                           Container(
  //         //                             // listitem4Py (202:1185)
  //         //                             width: double.infinity,
  //         //                             child: Row(
  //         //                               crossAxisAlignment: CrossAxisAlignment.center,
  //         //                               children: [
  //         //                                 Container(
  //         //                                   // h61q1 (202:1186)
  //         //                                   margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 213*fem, 0*fem),
  //         //                                   child: Text(
  //         //                                     'Offline',
  //         //                                     style: SafeGoogleFont (
  //         //                                       'Montserrat',
  //         //                                       fontSize: 14*ffem,
  //         //                                       fontWeight: FontWeight.w700,
  //         //                                       height: 1.2175*ffem/fem,
  //         //                                       letterSpacing: 0.200000003*fem,
  //         //                                       color: Color(0xff143463),
  //         //                                     ),
  //         //                                   ),
  //         //                                 ),
  //         //                                 Container(
  //         //                                   // frame31jW7 (202:1187)
  //         //                                   width: 20*fem,
  //         //                                   height: 20*fem,
  //         //                                   child: Image.asset(
  //         //                                     'page-1/images/frame-31-sy9.png',
  //         //                                     width: 20*fem,
  //         //                                     height: 20*fem,
  //         //                                   ),
  //         //                                 ),
  //         //                               ],
  //         //                             ),
  //         //                           ),
  //         //                         ],
  //         //                       ),
  //         //                     ),
  //         //                   ],
  //         //                 ),
  //         //               ),
  //         //               SizedBox(
  //         //                 height: 20*fem,
  //         //               ),
  //         //               Container(
  //         //                 // menuwidgetpnT (202:1191)
  //         //                 padding: EdgeInsets.fromLTRB(30*fem, 30*fem, 30*fem, 30*fem),
  //         //                 width: double.infinity,
  //         //                 decoration: BoxDecoration (
  //         //                   border: Border.all(color: Color(0xffe8e8e8)),
  //         //                   borderRadius: BorderRadius.circular(10*fem),
  //         //                 ),
  //         //                 child: Column(
  //         //                   crossAxisAlignment: CrossAxisAlignment.start,
  //         //                   children: [
  //         //                     Container(
  //         //                       // listtitleLF1 (202:1192)
  //         //                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
  //         //                       width: 94*fem,
  //         //                       height: 28*fem,
  //         //                       child: Center(
  //         //                         child: Text(
  //         //                           'Availability',
  //         //                           style: SafeGoogleFont (
  //         //                             'Montserrat',
  //         //                             fontSize: 16*ffem,
  //         //                             fontWeight: FontWeight.w700,
  //         //                             height: 1.5*ffem/fem,
  //         //                             letterSpacing: 0.1000000015*fem,
  //         //                             color: Color(0xff143463),
  //         //                           ),
  //         //                         ),
  //         //                       ),
  //         //                     ),
  //         //                     Container(
  //         //                       // listGns (202:1194)
  //         //                       width: double.infinity,
  //         //                       child: Column(
  //         //                         crossAxisAlignment: CrossAxisAlignment.center,
  //         //                         children: [
  //         //                           Container(
  //         //                             // listitemPcb (202:1195)
  //         //                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
  //         //                             width: double.infinity,
  //         //                             height: 20*fem,
  //         //                             child: Row(
  //         //                               crossAxisAlignment: CrossAxisAlignment.center,
  //         //                               children: [
  //         //                                 Expanded(
  //         //                                   child: Container(
  //         //                                     // h6h7V (202:1196)
  //         //                                     margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 200*fem, 0*fem),
  //         //                                     child: Text(
  //         //                                       'Online',
  //         //                                       style: SafeGoogleFont (
  //         //                                         'Montserrat',
  //         //                                         fontSize: 14*ffem,
  //         //                                         fontWeight: FontWeight.w700,
  //         //                                         height: 1.2175*ffem/fem,
  //         //                                         letterSpacing: 0.200000003*fem,
  //         //                                         color: Color(0xff143463),
  //         //                                       ),
  //         //                                     ),
  //         //                                   ),
  //         //                                 ),
  //         //                                 Container(
  //         //                                   // frame31zMV (202:1197)
  //         //                                   width: 20*fem,
  //         //                                   height: double.infinity,
  //         //                                   decoration: BoxDecoration (
  //         //                                     border: Border.all(color: Color(0xff143463)),
  //         //                                     color: Color(0xffffffff),
  //         //                                     borderRadius: BorderRadius.circular(5*fem),
  //         //                                   ),
  //         //                                 ),
  //         //                               ],
  //         //                             ),
  //         //                           ),
  //         //                           Container(
  //         //                             // listitemJNB (202:1198)
  //         //                             width: double.infinity,
  //         //                             child: Row(
  //         //                               crossAxisAlignment: CrossAxisAlignment.center,
  //         //                               children: [
  //         //                                 Container(
  //         //                                   // h6r8o (202:1199)
  //         //                                   margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 213*fem, 0*fem),
  //         //                                   child: Text(
  //         //                                     'Offline',
  //         //                                     style: SafeGoogleFont (
  //         //                                       'Montserrat',
  //         //                                       fontSize: 14*ffem,
  //         //                                       fontWeight: FontWeight.w700,
  //         //                                       height: 1.2175*ffem/fem,
  //         //                                       letterSpacing: 0.200000003*fem,
  //         //                                       color: Color(0xff143463),
  //         //                                     ),
  //         //                                   ),
  //         //                                 ),
  //         //                                 Container(
  //         //                                   // frame31iwh (202:1200)
  //         //                                   width: 20*fem,
  //         //                                   height: 20*fem,
  //         //                                   child: Image.asset(
  //         //                                     'page-1/images/frame-31-XGs.png',
  //         //                                     width: 20*fem,
  //         //                                     height: 20*fem,
  //         //                                   ),
  //         //                                 ),
  //         //                               ],
  //         //                             ),
  //         //                           ),
  //         //                         ],
  //         //                       ),
  //         //                     ),
  //         //                   ],
  //         //                 ),
  //         //               ),
  //         //             ],
  //         //           ),
  //         //         ),
  //         //       ],
  //         //     ),
  //         //   ),
  //         // ),
  //         // Positioned(
  //         //   // frame83FAw (202:1204)
  //         //   left: 0*fem,
  //         //   top: 724*fem,
  //         //   child: Container(
  //         //     padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 20*fem),
  //         //     width: 375*fem,
  //         //     height: 88*fem,
  //         //     decoration: BoxDecoration (
  //         //       color: Color(0xffffffff),
  //         //       borderRadius: BorderRadius.circular(16*fem),
  //         //       boxShadow: [
  //         //         BoxShadow(
  //         //           color: Color(0x21000000),
  //         //           offset: Offset(0*fem, -3*fem),
  //         //           blurRadius: 5.5*fem,
  //         //         ),
  //         //       ],
  //         //     ),
  //         //     child: Row(
  //         //       crossAxisAlignment: CrossAxisAlignment.center,
  //         //       children: [
  //         //         Container(
  //         //           // button4eB (202:1205)
  //         //           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
  //         //           width: 165*fem,
  //         //           height: double.infinity,
  //         //           decoration: BoxDecoration (
  //         //             color: Color(0xff143463),
  //         //             borderRadius: BorderRadius.circular(8*fem),
  //         //           ),
  //         //           child: Center(
  //         //             child: Center(
  //         //               child: Text(
  //         //                 'Apply Filter',
  //         //                 textAlign: TextAlign.center,
  //         //                 style: SafeGoogleFont (
  //         //                   'Montserrat',
  //         //                   fontSize: 16*ffem,
  //         //                   fontWeight: FontWeight.w600,
  //         //                   height: 1.125*ffem/fem,
  //         //                   letterSpacing: -0.0099999998*fem,
  //         //                   color: Color(0xffffffff),
  //         //                 ),
  //         //               ),
  //         //             ),
  //         //           ),
  //         //         ),
  //         //         Container(
  //         //           // buttonWWB (202:1207)
  //         //           width: 165*fem,
  //         //           height: double.infinity,
  //         //           decoration: BoxDecoration (
  //         //             border: Border.all(color: Color(0xff143463)),
  //         //             color: Color(0xffffffff),
  //         //             borderRadius: BorderRadius.circular(8*fem),
  //         //           ),
  //         //           child: Center(
  //         //             child: Center(
  //         //               child: Text(
  //         //                 'Cancel',
  //         //                 textAlign: TextAlign.center,
  //         //                 style: SafeGoogleFont (
  //         //                   'Montserrat',
  //         //                   fontSize: 16*ffem,
  //         //                   fontWeight: FontWeight.w400,
  //         //                   height: 1.125*ffem/fem,
  //         //                   letterSpacing: -0.0099999998*fem,
  //         //                   color: Color(0xff143463),
  //         //                 ),
  //         //               ),
  //         //             ),
  //         //           ),
  //         //         ),
  //         //       ],
  //         //     ),
  //         //   ),
  //         // ),
  //       ),
  //     ),
  //   );
  // }
}
