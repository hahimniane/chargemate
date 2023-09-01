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
        // scanqrcode6cX (251:22)
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
                'assets/page-1/images/frame-33-t5V.png',
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupscqfups (JGjhJmKworifjLfx5xScQF)
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
                      // yataylogo1mMH (251:75)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 19.57*fem),
                      width: 200*fem,
                      height: 36.43*fem,
                      child: Image.asset(
                        'assets/page-1/images/yatay-logo-1-Exo.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // autogroupx8nbDj5 (JGjhSbSEUzYqW9Xcs6x8Nb)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 106*fem, 0*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group75913pis (251:71)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 58*fem, 0*fem),
                            width: 48*fem,
                            height: 48*fem,
                            child: Image.asset(
                              'assets/page-1/images/group-75913-zqd.png',
                              width: 48*fem,
                              height: 48*fem,
                            ),
                          ),
                          Container(
                            // scanqrcode6wH (251:70)
                            margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                            child: Text(
                              'Scan QR Code',
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
                // autogroup1cyfkW3 (JGjhdLdL6Buu3QUCxJ1cYf)
                width: double.infinity,
                decoration: BoxDecoration (
                  color: Color(0xfffafafa),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogrouph6ydt6T (JGjhoffTH6CYcbgfRmH6yd)
                      padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 30*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // zesradissonhotelBbM (251:77)
                            margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 20*fem),
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
                          Container(
                            // groupEJj (251:79)
                            margin: EdgeInsets.fromLTRB(63*fem, 0*fem, 62*fem, 30*fem),
                            width: double.infinity,
                            height: 220*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Container(
                              // imagedd8bd7320ba4c2cf45ce5205d (251:80)
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(10*fem),
                              ),
                              child: Center(
                                // rectangleUym (251:81)
                                child: SizedBox(
                                  width: 220*fem,
                                  height: 220*fem,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10*fem),
                                    child: Image.asset(
                                      'assets/page-1/images/rectangle.png',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // orCPy (251:78)
                            margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 30*fem),
                            child: Text(
                              'OR',
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
                            // frame50214SB (251:82)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // h5oef (251:83)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                  child: Text(
                                    'Socket Code:',
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
                                  // customselectVGb (251:84)
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
                                    // selectzDM (251:85)
                                    width: double.infinity,
                                    height: double.infinity,
                                    child: Container(
                                      // optionYEs (251:86)
                                      padding: EdgeInsets.fromLTRB(18*fem, 11*fem, 18*fem, 11*fem),
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(5*fem),
                                      ),
                                      child: Text(
                                        '123456789',
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
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // group75937Emu (251:98)
                      width: double.infinity,
                      height: 88*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // homeindicatoronlightxxo (251:99)
                            left: 120*fem,
                            top: 74*fem,
                            child: Container(
                              width: 134*fem,
                              height: 5*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(100*fem),
                              ),
                              child: Center(
                                // homeindicatorGyV (251:100)
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
                            // frame83Q47 (251:101)
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
                                // buttonqQK (251:102)
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0xff143463),
                                  borderRadius: BorderRadius.circular(8*fem),
                                ),
                                child: Center(
                                  child: Center(
                                    child: Text(
                                      'Continue',
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