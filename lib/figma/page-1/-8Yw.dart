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
        // TZR (4:27)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          // borderRadius: BorderRadius.circular(30*fem),
          borderRadius: BorderRadius.only (
            topLeft: Radius.circular(16*fem),
            topRight: Radius.circular(16*fem),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroup1judwjV (JGjDajC1GfKYzs69HJ1JuD)
              width: 564*fem,
              height: 388*fem,
              child: Image.asset(
                'assets/page-1/images/auto-group-1jud.png',
                width: 564*fem,
                height: 388*fem,
              ),
            ),
            Container(
              // otpverificationEyV (4:33)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 10.5*fem),
              child: Text(
                'OTP Verification',
                style: SafeGoogleFont (
                  'Montserrat',
                  fontSize: 24*ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2175*ffem/fem,
                  color: Color(0xff143463),
                ),
              ),
            ),
            Center(
              // tittlexo1 (4:47)
              child: Container(
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                constraints: BoxConstraints (
                  maxWidth: 204*fem,
                ),
                child: Text(
                  'Charge Mate with OTP Verification: Safe & Easy!',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Montserrat',
                    fontSize: 16*ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.2175*ffem/fem,
                    letterSpacing: 0.3000000119*fem,
                    color: Color(0xff143463),
                  ),
                ),
              ),
            ),
            Container(
              // autogrouplqxf1WP (JGjDjiw1vDmH5TBNz4LQxF)
              padding: EdgeInsets.fromLTRB(24*fem, 30.5*fem, 24*fem, 70*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame354hPD (4:34)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 104*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // phoneno2Ab (4:46)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                          width: double.infinity,
                          child: Text(
                            'Enter mobile no.*',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Montserrat',
                              fontSize: 15*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2175*ffem/fem,
                              color: Color(0xff737373),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupqvyhX7M (JGjDvPHvExWf2JB99hqVyh)
                          width: double.infinity,
                          height: 48*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // group19c8o (4:40)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.11*fem, 0*fem),
                                padding: EdgeInsets.fromLTRB(7*fem, 14*fem, 6.35*fem, 14*fem),
                                width: 92*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  border: Border.all(color: Color(0xffd9d9d9)),
                                  borderRadius: BorderRadius.circular(7*fem),
                                ),
                                child: Container(
                                  // frame5004geT (5:146)
                                  padding: EdgeInsets.fromLTRB(0*fem, 1*fem, 4.44*fem, 0*fem),
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // group75904bFd (5:145)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 1*fem),
                                        width: 23.09*fem,
                                        height: 15.88*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/group-75904-dxK.png',
                                          width: 23.09*fem,
                                          height: 15.88*fem,
                                        ),
                                      ),
                                      Container(
                                        // 5gb (4:43)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9.27*fem, 0*fem),
                                        child: Text(
                                          '+90',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 15*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2175*ffem/fem,
                                            color: Color(0xff143463),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // phcaretdownfillMe7 (4:44)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.5*fem),
                                        width: 8.85*fem,
                                        height: 5.5*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/ph-caret-down-fill-e4F.png',
                                          width: 8.85*fem,
                                          height: 5.5*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // group183G3 (4:35)
                                padding: EdgeInsets.fromLTRB(14.63*fem, 14.38*fem, 14.63*fem, 13.63*fem),
                                width: 226.89*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  border: Border.all(color: Color(0xffe63946)),
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(7*fem),
                                ),
                                child: Container(
                                  // frame50016EK (4:37)
                                  width: 56*fem,
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // jHH (4:38)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                                        child: Text(
                                          '01234',
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 15*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2175*ffem/fem,
                                            letterSpacing: 0.9*fem,
                                            color: Color(0xff143463),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // DCT (4:39)
                                        '|',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125*ffem/fem,
                                          letterSpacing: 0.96*fem,
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
                      ],
                    ),
                  ),
                  Center(
                    // bodyJjh (4:48)
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                      constraints: BoxConstraints (
                        maxWidth: 240*fem,
                      ),
                      child: Text(
                        'We will send you a one -time password to this mobile number   ',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Montserrat',
                          fontSize: 14*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5*ffem/fem,
                          color: Color(0xff64748b),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // frame235zMd (4:31)
                    width: double.infinity,
                    height: 58*fem,
                    decoration: BoxDecoration (
                      color: Color(0xff143463),
                      borderRadius: BorderRadius.circular(16*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x23000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 6.5*fem,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'SEND CODE',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Montserrat',
                          fontSize: 15*ffem,
                          fontWeight: FontWeight.w700,
                          height: 2.5333333333*ffem/fem,
                          color: Color(0xffffffff),
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