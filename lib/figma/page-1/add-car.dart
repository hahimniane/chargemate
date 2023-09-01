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
        // addcarD4j (202:834)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(20*fem),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/page-1/images/frame-33-G4f.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroup2cmdSTH (JGjWHLCQH1h1mtkjso2cMD)
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
                    // yataylogo1rG7 (202:887)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 19.57*fem),
                    width: 200*fem,
                    height: 36.43*fem,
                    child: Image.asset(
                      'assets/page-1/images/yatay-logo-1-fQK.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // autogroupwxyy9W7 (JGjWQQpwQ1z3Cz6yM3WXyy)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 130*fem, 0*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group75913U2b (202:883)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 91*fem, 0*fem),
                          width: 48*fem,
                          height: 48*fem,
                          child: Image.asset(
                            'assets/page-1/images/group-75913-ACX.png',
                            width: 48*fem,
                            height: 48*fem,
                          ),
                        ),
                        Container(
                          // addcar9uR (202:882)
                          margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                          child: Text(
                            'Add Car',
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
              // autogroupvf9hUqD (JGjWYuanLpjfj6XFWYVF9H)
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xfffafafa),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupksdmo6o (JGjWtZghK7vmkXcFNxKSDm)
                    padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 149*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame50186Lo (202:891)
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // h5Pqh (202:892)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                child: Text(
                                  'Brand:',
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
                                // customselectUcF (202:893)
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
                                  // selectmrF (202:894)
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Container(
                                    // optionJrB (202:895)
                                    padding: EdgeInsets.fromLTRB(18*fem, 11*fem, 29.01*fem, 11*fem),
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(5*fem),
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // dropdown1Vh (202:896)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 188.99*fem, 0*fem),
                                          child: Text(
                                            'Please Select',
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
                                        Container(
                                          // vectoruLB (202:897)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                          width: 14*fem,
                                          height: 8*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/vector.png',
                                            width: 14*fem,
                                            height: 8*fem,
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
                        SizedBox(
                          height: 20*fem,
                        ),
                        Container(
                          // frame5019A1D (202:908)
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // h5VpB (202:909)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                child: Text(
                                  'Model:',
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
                                // customselecta4w (202:910)
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
                                  // selectGyM (202:911)
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Container(
                                    // optionScw (202:912)
                                    padding: EdgeInsets.fromLTRB(18*fem, 11*fem, 29.01*fem, 11*fem),
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(5*fem),
                                    ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // dropdownJ9M (202:913)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 188.99*fem, 0*fem),
                                          child: Text(
                                            'Please Select',
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
                                        Container(
                                          // vectorsbm (202:914)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                          width: 14*fem,
                                          height: 8*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/vector-qps.png',
                                            width: 14*fem,
                                            height: 8*fem,
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
                        SizedBox(
                          height: 20*fem,
                        ),
                        Container(
                          // frame5020A55 (202:925)
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // h5uYT (202:926)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                child: Text(
                                  'Model Year:',
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
                                // customselectNgw (202:927)
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
                                  // selectUV5 (202:928)
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Container(
                                    // optionpoq (202:929)
                                    padding: EdgeInsets.fromLTRB(18*fem, 11*fem, 18*fem, 11*fem),
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(5*fem),
                                    ),
                                    child: Text(
                                      '2023',
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
                        SizedBox(
                          height: 20*fem,
                        ),
                        Container(
                          // frame5021qD9 (202:941)
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // h5aRd (202:942)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                child: Text(
                                  'Number plate:',
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
                                // customselectewH (202:943)
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
                                  // selectZYT (202:944)
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Container(
                                    // optionvdu (202:945)
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
                    // autogroupqwxu9mZ (JGjWieoYYWiY9Q7vXCqwXu)
                    width: double.infinity,
                    height: 88*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // homeindicatoronlightTXM (202:889)
                          left: 120*fem,
                          top: 74*fem,
                          child: Container(
                            width: 134*fem,
                            height: 5*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(100*fem),
                            ),
                            child: Center(
                              // homeindicatorTvf (202:890)
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
                          // frame83kum (202:957)
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
                              // buttondTm (202:958)
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0xff143463),
                                borderRadius: BorderRadius.circular(8*fem),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    'Save',
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
          );
  }
}