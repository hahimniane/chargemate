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
        // listviewUij (202:123)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(20*fem),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/page-1/images/frame-33.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupxbtvh5h (JGjRSdvmxaQWGbAEn8XbTV)
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
                    // yataylogo1JrB (202:175)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 19.57*fem),
                    width: 200*fem,
                    height: 36.43*fem,
                    child: Image.asset(
                      'assets/page-1/images/yatay-logo-1-GqM.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // autogroup4hmrANb (JGjRbDWpBqmpP7XLsB4hmR)
                    width: double.infinity,
                    height: 48*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group75913QGw (202:171)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                          width: 48*fem,
                          height: 48*fem,
                          child: Image.asset(
                            'assets/page-1/images/group-75913-5EF.png',
                            width: 48*fem,
                            height: 48*fem,
                          ),
                        ),
                        Container(
                          // group20HLj (202:180)
                          padding: EdgeInsets.fromLTRB(8.83*fem, 13*fem, 9*fem, 11*fem),
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
                          child: Container(
                            // group75910KYK (202:182)
                            padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 3*fem, 4*fem),
                            width: double.infinity,
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // shapeEfH (202:184)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.19*fem, 0*fem),
                                  width: 14*fem,
                                  height: 14*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/shape-zYw.png',
                                    width: 14*fem,
                                    height: 14*fem,
                                  ),
                                ),
                                Container(
                                  // searchforstationLCX (202:183)
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
                                  // filters1svgrepocom1Nuu (202:187)
                                  margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                                  width: 18*fem,
                                  height: 16*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/filters-1-svgrepo-com-1-HY3.png',
                                    width: 18*fem,
                                    height: 16*fem,
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
            Container(
              // autogroupq7km53d (JGjRuTVRLLWKKXYJ3LQ7KM)
              padding: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 0*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xfffafafa),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group75919am5 (202:189)
                    margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 15*fem, 15*fem),
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
                          // group75917oNw (202:191)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(23*fem, 7*fem, 24*fem, 7*fem),
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
                            // frame5005TCb (202:193)
                            padding: EdgeInsets.fromLTRB(1.84*fem, 2*fem, 0*fem, 2*fem),
                            width: double.infinity,
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // map1svgrepocomuKV (202:194)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0.01*fem, 9.55*fem, 0*fem),
                                  width: 20.61*fem,
                                  height: 18.23*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/map-1-svgrepo-com.png',
                                    width: 20.61*fem,
                                    height: 18.23*fem,
                                  ),
                                ),
                                Text(
                                  // mapviewgDm (202:199)
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
                          // group75918CT1 (202:200)
                          padding: EdgeInsets.fromLTRB(27*fem, 7*fem, 27*fem, 7*fem),
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
                            // frame5005qF5 (202:202)
                            padding: EdgeInsets.fromLTRB(3.05*fem, 2*fem, 0*fem, 2*fem),
                            width: double.infinity,
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // listcentersvgrepocomkN3 (202:203)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.05*fem, 0*fem),
                                  width: 17.9*fem,
                                  height: 17.9*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/list-center-svgrepo-com-VeX.png',
                                    width: 17.9*fem,
                                    height: 17.9*fem,
                                  ),
                                ),
                                Text(
                                  // listviewEHD (202:206)
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
                    // autogroupapnfwSX (JGjS6NLuWT6k3cNXycaPnf)
                    width: double.infinity,
                    height: 574*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // homeindicatoronlight5Yj (202:177)
                          left: 120*fem,
                          top: 560*fem,
                          child: Container(
                            width: 134*fem,
                            height: 5*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(100*fem),
                            ),
                            child: Center(
                              // homeindicatorP3d (202:178)
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
                          // frame5013GdD (202:207)
                          left: 15*fem,
                          top: 0*fem,
                          child: Container(
                            width: 345*fem,
                            height: 530*fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // group75923NgF (202:208)
                                  padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 20*fem),
                                  width: double.infinity,
                                  height: 90*fem,
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
                                    // frame5012rLX (202:210)
                                    width: double.infinity,
                                    height: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // vecteezyelectricvehiclechargin (202:211)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                          width: 50*fem,
                                          height: 50*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/vecteezyelectric-vehicle-charging-station-vector-icon-illustration19551494-converted-1-fUb.png',
                                            width: 50*fem,
                                            height: 50*fem,
                                          ),
                                        ),
                                        Container(
                                          // frame5009BQj (202:320)
                                          margin: EdgeInsets.fromLTRB(0*fem, 7*fem, 35*fem, 6*fem),
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // istanbulhavaliman6Go (202:321)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                                child: Text(
                                                  'istanbul havalimanı',
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
                                                // ccstype2type2Yeb (202:322)
                                                'Ccs Type 2, Type 2',
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
                                          // frame5011GKh (202:323)
                                          width: 81*fem,
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                // h5zFh (202:324)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                                child: Text(
                                                  '8 Km',
                                                  style: SafeGoogleFont (
                                                    'Montserrat',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.2175*ffem/fem,
                                                    letterSpacing: 0.1000000015*fem,
                                                    color: Color(0xff143463),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // frame5010f6w (202:325)
                                                padding: EdgeInsets.fromLTRB(5.94*fem, 5*fem, 5*fem, 5*fem),
                                                width: double.infinity,
                                                decoration: BoxDecoration (
                                                  color: Color(0xff57b78b),
                                                  borderRadius: BorderRadius.circular(4*fem),
                                                ),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // verifiedsvgrepocom2PSF (202:326)
                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.94*fem, 0*fem),
                                                      width: 10.12*fem,
                                                      height: 9.75*fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/verified-svgrepo-com-2-Tvw.png',
                                                        width: 10.12*fem,
                                                        height: 9.75*fem,
                                                      ),
                                                    ),
                                                    Text(
                                                      // h5fPm (202:329)
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
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20*fem,
                                ),
                                Container(
                                  // group75924Lko (202:330)
                                  padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 20*fem),
                                  width: double.infinity,
                                  height: 90*fem,
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
                                    // frame5012ouH (202:332)
                                    width: double.infinity,
                                    height: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // vecteezyelectricvehiclechargin (202:333)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                          width: 50*fem,
                                          height: 50*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/vecteezyelectric-vehicle-charging-station-vector-icon-illustration19551494-converted-1.png',
                                            width: 50*fem,
                                            height: 50*fem,
                                          ),
                                        ),
                                        Container(
                                          // frame50092fZ (202:442)
                                          margin: EdgeInsets.fromLTRB(0*fem, 7*fem, 35*fem, 6*fem),
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // istanbulhavalimanwXd (202:443)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                                child: Text(
                                                  'istanbul havalimanı',
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
                                                // ccstype2type2EWj (202:444)
                                                'Ccs Type 2, Type 2',
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
                                          // frame5011wR9 (202:445)
                                          width: 81*fem,
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                // h5gNj (202:446)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                                child: Text(
                                                  '8 Km',
                                                  style: SafeGoogleFont (
                                                    'Montserrat',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.2175*ffem/fem,
                                                    letterSpacing: 0.1000000015*fem,
                                                    color: Color(0xff143463),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // frame5010z8X (202:447)
                                                padding: EdgeInsets.fromLTRB(5.94*fem, 5*fem, 5*fem, 5*fem),
                                                width: double.infinity,
                                                decoration: BoxDecoration (
                                                  color: Color(0xff57b78b),
                                                  borderRadius: BorderRadius.circular(4*fem),
                                                ),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // verifiedsvgrepocom2U3h (202:448)
                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.94*fem, 0*fem),
                                                      width: 10.12*fem,
                                                      height: 9.75*fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/verified-svgrepo-com-2-rLP.png',
                                                        width: 10.12*fem,
                                                        height: 9.75*fem,
                                                      ),
                                                    ),
                                                    Text(
                                                      // h5M7V (202:451)
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
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20*fem,
                                ),
                                Container(
                                  // group75925TAX (202:452)
                                  padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 20*fem),
                                  width: double.infinity,
                                  height: 90*fem,
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
                                    // frame50126jH (202:454)
                                    width: double.infinity,
                                    height: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // vecteezyelectricvehiclechargin (202:455)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                          width: 50*fem,
                                          height: 50*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/vecteezyelectric-vehicle-charging-station-vector-icon-illustration19551494-converted-1-LQF.png',
                                            width: 50*fem,
                                            height: 50*fem,
                                          ),
                                        ),
                                        Container(
                                          // frame5009HYs (202:564)
                                          margin: EdgeInsets.fromLTRB(0*fem, 7*fem, 35*fem, 6*fem),
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // istanbulhavaliman5Dq (202:565)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                                child: Text(
                                                  'istanbul havalimanı',
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
                                                // ccstype2type2jpB (202:566)
                                                'Ccs Type 2, Type 2',
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
                                          // frame5011STh (202:567)
                                          width: 81*fem,
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                // h5jhh (202:568)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                                child: Text(
                                                  '8 Km',
                                                  style: SafeGoogleFont (
                                                    'Montserrat',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.2175*ffem/fem,
                                                    letterSpacing: 0.1000000015*fem,
                                                    color: Color(0xff143463),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // frame5010EPZ (202:569)
                                                padding: EdgeInsets.fromLTRB(5.94*fem, 5*fem, 5*fem, 5*fem),
                                                width: double.infinity,
                                                decoration: BoxDecoration (
                                                  color: Color(0xff57b78b),
                                                  borderRadius: BorderRadius.circular(4*fem),
                                                ),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // verifiedsvgrepocom2iZd (202:570)
                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.94*fem, 0*fem),
                                                      width: 10.12*fem,
                                                      height: 9.75*fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/verified-svgrepo-com-2-Gwq.png',
                                                        width: 10.12*fem,
                                                        height: 9.75*fem,
                                                      ),
                                                    ),
                                                    Text(
                                                      // h5QST (202:573)
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
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20*fem,
                                ),
                                Container(
                                  // group75926ftB (202:574)
                                  padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 20*fem),
                                  width: double.infinity,
                                  height: 90*fem,
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
                                    // frame50129HZ (202:576)
                                    width: double.infinity,
                                    height: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // vecteezyelectricvehiclechargin (202:577)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                          width: 50*fem,
                                          height: 50*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/vecteezyelectric-vehicle-charging-station-vector-icon-illustration19551494-converted-1-ZFV.png',
                                            width: 50*fem,
                                            height: 50*fem,
                                          ),
                                        ),
                                        Container(
                                          // frame5009vhd (202:686)
                                          margin: EdgeInsets.fromLTRB(0*fem, 7*fem, 35*fem, 6*fem),
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // istanbulhavalimanDwd (202:687)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                                child: Text(
                                                  'istanbul havalimanı',
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
                                                // ccstype2type2Gf1 (202:688)
                                                'Ccs Type 2, Type 2',
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
                                          // frame50117vX (202:689)
                                          width: 81*fem,
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                // h5pa3 (202:690)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                                child: Text(
                                                  '8 Km',
                                                  style: SafeGoogleFont (
                                                    'Montserrat',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.2175*ffem/fem,
                                                    letterSpacing: 0.1000000015*fem,
                                                    color: Color(0xff143463),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // frame5010v7H (202:691)
                                                padding: EdgeInsets.fromLTRB(5.94*fem, 5*fem, 5*fem, 5*fem),
                                                width: double.infinity,
                                                decoration: BoxDecoration (
                                                  color: Color(0xff57b78b),
                                                  borderRadius: BorderRadius.circular(4*fem),
                                                ),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // verifiedsvgrepocom2Ds5 (202:692)
                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.94*fem, 0*fem),
                                                      width: 10.12*fem,
                                                      height: 9.75*fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/verified-svgrepo-com-2-fhq.png',
                                                        width: 10.12*fem,
                                                        height: 9.75*fem,
                                                      ),
                                                    ),
                                                    Text(
                                                      // h5VJo (202:695)
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
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20*fem,
                                ),
                                Container(
                                  // group75927BxK (202:696)
                                  padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 20*fem),
                                  width: double.infinity,
                                  height: 90*fem,
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
                                    // frame5012UgX (202:698)
                                    width: double.infinity,
                                    height: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // vecteezyelectricvehiclechargin (202:699)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                                          width: 50*fem,
                                          height: 50*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/vecteezyelectric-vehicle-charging-station-vector-icon-illustration19551494-converted-1-kQF.png',
                                            width: 50*fem,
                                            height: 50*fem,
                                          ),
                                        ),
                                        Container(
                                          // frame5009G6b (202:808)
                                          margin: EdgeInsets.fromLTRB(0*fem, 7*fem, 35*fem, 6*fem),
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // istanbulhavalimanasy (202:809)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                                child: Text(
                                                  'istanbul havalimanı',
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
                                                // ccstype2type2esq (202:810)
                                                'Ccs Type 2, Type 2',
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
                                          // frame5011PKd (202:811)
                                          width: 81*fem,
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                // h5j8b (202:812)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                                child: Text(
                                                  '8 Km',
                                                  style: SafeGoogleFont (
                                                    'Montserrat',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.2175*ffem/fem,
                                                    letterSpacing: 0.1000000015*fem,
                                                    color: Color(0xff143463),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // frame5010xGF (202:813)
                                                padding: EdgeInsets.fromLTRB(5.94*fem, 5*fem, 5*fem, 5*fem),
                                                width: double.infinity,
                                                decoration: BoxDecoration (
                                                  color: Color(0xff57b78b),
                                                  borderRadius: BorderRadius.circular(4*fem),
                                                ),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // verifiedsvgrepocom2Beo (202:814)
                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.94*fem, 0*fem),
                                                      width: 10.12*fem,
                                                      height: 9.75*fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/verified-svgrepo-com-2.png',
                                                        width: 10.12*fem,
                                                        height: 9.75*fem,
                                                      ),
                                                    ),
                                                    Text(
                                                      // h5U87 (202:817)
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
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // group75917x3H (202:818)
                          left: 0*fem,
                          top: 459*fem,
                          child: Align(
                            child: SizedBox(
                              width: 375*fem,
                              height: 115*fem,
                              child: Image.asset(
                                'assets/page-1/images/group-75917-cNB.png',
                                width: 375*fem,
                                height: 115*fem,
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
          ],
        ),
      ),
          );
  }
}