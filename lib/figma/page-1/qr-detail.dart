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
        // qrdetailMGb (251:104)
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
                'assets/page-1/images/frame-33-dWF.png',
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupqwafGns (JGjk1mefirQT9ZXTGcQwaF)
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
                      // yataylogo14Tq (251:157)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 19.57*fem),
                      width: 200*fem,
                      height: 36.43*fem,
                      child: Image.asset(
                        'assets/page-1/images/yatay-logo-1-FUs.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // autogroupbdxmxJK (JGjkDWp6jZ9homoxSLBDXm)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 127*fem, 0*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group759134MM (251:153)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 80*fem, 0*fem),
                            width: 48*fem,
                            height: 48*fem,
                            child: Image.asset(
                              'assets/page-1/images/group-75913-6vB.png',
                              width: 48*fem,
                              height: 48*fem,
                            ),
                          ),
                          Container(
                            // qrdetail8MD (251:152)
                            margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                            child: Text(
                              'QR Detail',
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
                // autogroupbx2fcGP (JGjkNm3hEVSUfbjfujBX2f)
                width: double.infinity,
                decoration: BoxDecoration (
                  color: Color(0xfffafafa),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupguc7Xu9 (JGjkmVtohmPqeJoEwGgUc7)
                      padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 41*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame75924PgT (251:283)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                            width: double.infinity,
                            height: 24*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // zesradissonhotel76f (251:284)
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
                                  // frame75923NoH (251:285)
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
                                        // ratingscxX (251:286)
                                        width: double.infinity,
                                        height: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // koq (251:287)
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
                                              // starpYo (251:288)
                                              width: 16*fem,
                                              height: 16*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/star.png',
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
                          Container(
                            // framesX5 (251:296)
                            margin: EdgeInsets.fromLTRB(9.05*fem, 0*fem, 0*fem, 40.43*fem),
                            width: 271.95*fem,
                            height: 202.57*fem,
                            child: Image.asset(
                              'assets/page-1/images/frame-1hH.png',
                              width: 271.95*fem,
                              height: 202.57*fem,
                            ),
                          ),
                          Container(
                            // frame5014WK9 (251:279)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 46*fem, 20*fem),
                            padding: EdgeInsets.fromLTRB(4*fem, 2.02*fem, 0*fem, 2*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // locationpinaltsvgrepocom1tKh (251:280)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                                  width: 16*fem,
                                  height: 19.98*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/location-pin-alt-svgrepo-com-1-mBu.png',
                                    width: 16*fem,
                                    height: 19.98*fem,
                                  ),
                                ),
                                Container(
                                  // h5k71 (251:282)
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
                          Container(
                            // group759232qD (251:159)
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
                              // frame5012WkP (251:161)
                              width: double.infinity,
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // vecteezyelectricvehiclechargin (251:162)
                                    width: 50*fem,
                                    height: 50*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/vecteezyelectric-vehicle-charging-station-vector-icon-illustration19551494-converted-1-i63.png',
                                      width: 50*fem,
                                      height: 50*fem,
                                    ),
                                  ),
                                  Container(
                                    // autogroupwfgbJAT (JGjm79zig4awfjtEogWfgb)
                                    padding: EdgeInsets.fromLTRB(15*fem, 0.5*fem, 0*fem, 0.5*fem),
                                    height: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // frame5009pPh (251:271)
                                          margin: EdgeInsets.fromLTRB(0*fem, 6.5*fem, 124*fem, 5.5*fem),
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // actype27tb (251:272)
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
                                                // kwnUw (251:273)
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
                                          // frame5017Jy5 (251:274)
                                          padding: EdgeInsets.fromLTRB(0*fem, 1.25*fem, 0*fem, 0*fem),
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // linecirclelirasvgrepocom1zL7 (251:275)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11.25*fem),
                                                width: 21.5*fem,
                                                height: 21.5*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/line-circle-lira-svgrepo-com-1-7B5.png',
                                                  width: 21.5*fem,
                                                  height: 21.5*fem,
                                                ),
                                              ),
                                              RichText(
                                                // h55MZ (251:278)
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
                    Container(
                      // group75937CDD (251:290)
                      width: double.infinity,
                      height: 88*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // homeindicatoronlightKYj (251:291)
                            left: 120*fem,
                            top: 74*fem,
                            child: Container(
                              width: 134*fem,
                              height: 5*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(100*fem),
                              ),
                              child: Center(
                                // homeindicatorQKH (251:292)
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
                            // frame83KBM (251:293)
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
                                // buttonkGf (251:294)
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0xff143463),
                                  borderRadius: BorderRadius.circular(8*fem),
                                ),
                                child: Center(
                                  child: Center(
                                    child: Text(
                                      'Start Charge',
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