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
        // reservationsummaryCWb (277:4041)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(20*fem),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/page-1/images/frame-33-nas.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroup92lwxPH (JGkDme4tW9Law7uSPF92Lw)
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
                    // yataylogo19yZ (277:4094)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 19.57*fem),
                    width: 200*fem,
                    height: 36.43*fem,
                    child: Image.asset(
                      'assets/page-1/images/yatay-logo-1-UrK.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // autogroup7jwfDTd (JGkDv8pjSx6DTEKiYk7jWF)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 67*fem, 0*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group75913t3y (277:4090)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                          width: 48*fem,
                          height: 48*fem,
                          child: Image.asset(
                            'assets/page-1/images/group-75913-DU3.png',
                            width: 48*fem,
                            height: 48*fem,
                          ),
                        ),
                        Container(
                          // reservationsummaryjqH (277:4089)
                          margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                          child: Text(
                            'Reservation Summary',
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
              // autogroup2q3vNdM (JGkE5xsgw6gmTwsDUx2q3V)
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xfffafafa),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupujpmGyd (JGkEF8H69aMrjMr72oUjPm)
                    padding: EdgeInsets.fromLTRB(15*fem, 10*fem, 15*fem, 30*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame5010LyV (277:4110)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                          width: double.infinity,
                          height: 100*fem,
                          decoration: BoxDecoration (
                            color: Color(0xff57b78b),
                            borderRadius: BorderRadius.circular(4*fem),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                // verifiedsvgrepocom2mou (277:4111)
                                left: 154.7900390625*fem,
                                top: 13.9423828125*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 35.42*fem,
                                    height: 34.12*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/verified-svgrepo-com-2-Rvf.png',
                                      width: 35.42*fem,
                                      height: 34.12*fem,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // h5CeK (277:4114)
                                left: 76.5*fem,
                                top: 56*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 192*fem,
                                    height: 35*fem,
                                    child: Text(
                                      'Your Reservation Has Been Created Successfully',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 14*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2175*ffem/fem,
                                        letterSpacing: 0.1000000015*fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // frame75930DJX (277:4115)
                                left: 0*fem,
                                top: 0*fem,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(76.5*fem, 13.94*fem, 76.5*fem, 9*fem),
                                  width: 345*fem,
                                  height: 100*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0xff57b78b),
                                    borderRadius: BorderRadius.circular(4*fem),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // verifiedsvgrepocom22vB (277:4116)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7.94*fem),
                                        width: 35.42*fem,
                                        height: 34.12*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/verified-svgrepo-com-2-XgK.png',
                                          width: 35.42*fem,
                                          height: 34.12*fem,
                                        ),
                                      ),
                                      Container(
                                        // h5reK (277:4119)
                                        constraints: BoxConstraints (
                                          maxWidth: 192*fem,
                                        ),
                                        child: Text(
                                          'Your Reservation Has Been Created Successfully',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2175*ffem/fem,
                                            letterSpacing: 0.1000000015*fem,
                                            color: Color(0xffffffff),
                                          ),
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
                          // frame759297KM (277:4120)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 30*fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // frame75927PGs (277:4121)
                                width: double.infinity,
                                height: 48*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // group75940hHZ (277:4122)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                      width: 48*fem,
                                      height: 48*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/group-75940-gz3.png',
                                        width: 48*fem,
                                        height: 48*fem,
                                      ),
                                    ),
                                    Container(
                                      // group75939ZKm (277:4126)
                                      padding: EdgeInsets.fromLTRB(10*fem, 17*fem, 10*fem, 16*fem),
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
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // stationMWX (277:4129)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 97*fem, 0*fem),
                                            child: Text(
                                              'Station:',
                                              style: SafeGoogleFont (
                                                'Montserrat',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2175*ffem/fem,
                                                letterSpacing: 0.1000000015*fem,
                                                color: Color(0xff143463),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            // zesradissonhotelDHq (277:4128)
                                            'ZES-Radisson Hotel',
                                            style: SafeGoogleFont (
                                              'Montserrat',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2175*ffem/fem,
                                              letterSpacing: 0.1000000015*fem,
                                              color: Color(0xff143463),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10*fem,
                              ),
                              Container(
                                // frame759325qq (277:4130)
                                height: 48*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // group75938Bts (277:4131)
                                      width: 48*fem,
                                      height: 48*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/group-75938-nrK.png',
                                        width: 48*fem,
                                        height: 48*fem,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10*fem,
                                    ),
                                    Container(
                                      // group759393RH (277:4135)
                                      padding: EdgeInsets.fromLTRB(7.91*fem, 9*fem, 14*fem, 9*fem),
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
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // locationrNj (277:4138)
                                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 28.09*fem, 0*fem),
                                            child: Text(
                                              'Location:',
                                              style: SafeGoogleFont (
                                                'Montserrat',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2175*ffem/fem,
                                                letterSpacing: 0.1000000015*fem,
                                                color: Color(0xff143463),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // beyaztmhtiyatrocdno25istanbuli (277:4137)
                                            constraints: BoxConstraints (
                                              maxWidth: 118*fem,
                                            ),
                                            child: Text(
                                              'Beyazıt Mh. Tiyatro Cd. No:25 İstanbul',
                                              style: SafeGoogleFont (
                                                'Montserrat',
                                                fontSize: 12*ffem,
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
                                    SizedBox(
                                      width: 10*fem,
                                    ),
                                    Container(
                                      // group75940vX1 (277:4139)
                                      width: 48*fem,
                                      height: 48*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/group-75940-Eqm.png',
                                        width: 48*fem,
                                        height: 48*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10*fem,
                              ),
                              Container(
                                // frame75928mXd (277:4145)
                                width: double.infinity,
                                height: 48*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // group75938US3 (277:4146)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                      width: 48*fem,
                                      height: 48*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/group-75938-m7m.png',
                                        width: 48*fem,
                                        height: 48*fem,
                                      ),
                                    ),
                                    Container(
                                      // group759398mV (277:4154)
                                      padding: EdgeInsets.fromLTRB(10*fem, 17*fem, 10*fem, 16*fem),
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
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // socketvqm (277:4157)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 162*fem, 0*fem),
                                            child: Text(
                                              'Socket:',
                                              style: SafeGoogleFont (
                                                'Montserrat',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2175*ffem/fem,
                                                letterSpacing: 0.1000000015*fem,
                                                color: Color(0xff143463),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            // actype2nsy (277:4156)
                                            'Ac Type 2',
                                            textAlign: TextAlign.right,
                                            style: SafeGoogleFont (
                                              'Montserrat',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2175*ffem/fem,
                                              letterSpacing: 0.1000000015*fem,
                                              color: Color(0xff143463),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10*fem,
                              ),
                              Container(
                                // frame75931FmZ (277:4158)
                                width: double.infinity,
                                height: 67*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // group75938mV1 (277:4159)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                      padding: EdgeInsets.fromLTRB(13.64*fem, 23.66*fem, 13.65*fem, 22.63*fem),
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
                                      child: Center(
                                        // time651axF (277:4161)
                                        child: SizedBox(
                                          width: 20.71*fem,
                                          height: 20.71*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/time-65-1-hRZ.png',
                                            width: 20.71*fem,
                                            height: 20.71*fem,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // group75939sAf (277:4163)
                                      padding: EdgeInsets.fromLTRB(10*fem, 14*fem, 10*fem, 13*fem),
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
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // frame759334kw (277:4165)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 10*fem),
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // beginningMV9 (277:4166)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 101*fem, 0*fem),
                                                  child: Text(
                                                    'Beginning:',
                                                    style: SafeGoogleFont (
                                                      'Montserrat',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.2175*ffem/fem,
                                                      letterSpacing: 0.1000000015*fem,
                                                      color: Color(0xff143463),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // p7q (277:4167)
                                                  '18.04.2023 13:26',
                                                  textAlign: TextAlign.right,
                                                  style: SafeGoogleFont (
                                                    'Montserrat',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2175*ffem/fem,
                                                    letterSpacing: 0.1000000015*fem,
                                                    color: Color(0xff143463),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // frame75934KKV (277:4168)
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // finishSf1 (277:4169)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 129*fem, 0*fem),
                                                  child: Text(
                                                    'Finish:',
                                                    style: SafeGoogleFont (
                                                      'Montserrat',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.2175*ffem/fem,
                                                      letterSpacing: 0.1000000015*fem,
                                                      color: Color(0xff143463),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // hL3 (277:4170)
                                                  '18.04.2023 14:26',
                                                  textAlign: TextAlign.right,
                                                  style: SafeGoogleFont (
                                                    'Montserrat',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2175*ffem/fem,
                                                    letterSpacing: 0.1000000015*fem,
                                                    color: Color(0xff143463),
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
                            ],
                          ),
                        ),
                        Container(
                          // frame75933bRR (277:4096)
                          width: double.infinity,
                          height: 60*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // group759396sy (277:4097)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                padding: EdgeInsets.fromLTRB(10*fem, 15*fem, 10*fem, 15*fem),
                                width: 287*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0xffe63946),
                                  borderRadius: BorderRadius.circular(10*fem),
                                ),
                                child: Container(
                                  // frame75934xfH (277:4099)
                                  padding: EdgeInsets.fromLTRB(2.16*fem, 0*fem, 0*fem, 0*fem),
                                  width: 249*fem,
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // warning2svgrepocom1pSb (277:4100)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.17*fem, 0*fem),
                                        width: 19.67*fem,
                                        height: 21.5*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/warning-2-svgrepo-com-1.png',
                                          width: 19.67*fem,
                                          height: 21.5*fem,
                                        ),
                                      ),
                                      Container(
                                        // ifyoudonotuseyourreservationpe (277:4104)
                                        constraints: BoxConstraints (
                                          maxWidth: 215*fem,
                                        ),
                                        child: Text(
                                          'If you do not use your reservation\npenalty will be applied.',
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 12*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2175*ffem/fem,
                                            letterSpacing: 0.1000000015*fem,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // group75938VBM (277:4105)
                                padding: EdgeInsets.fromLTRB(13.02*fem, 16.9*fem, 13.02*fem, 16.9*fem),
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
                                child: Center(
                                  // calendarplussvgrepocom1vXZ (277:4107)
                                  child: SizedBox(
                                    width: 21.96*fem,
                                    height: 26.21*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/calendar-plus-svgrepo-com-1.png',
                                      width: 21.96*fem,
                                      height: 26.21*fem,
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
                    // group75937BTV (277:4171)
                    width: double.infinity,
                    height: 88*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // homeindicatoronlightHQ3 (277:4172)
                          left: 120*fem,
                          top: 74*fem,
                          child: Container(
                            width: 134*fem,
                            height: 5*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(100*fem),
                            ),
                            child: Center(
                              // homeindicatorMPu (277:4173)
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
                          // frame832kw (277:4174)
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
                              // buttoncDM (277:4175)
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0xff143463),
                                borderRadius: BorderRadius.circular(8*fem),
                              ),
                              child: Center(
                                child: Center(
                                  child: Text(
                                    'Home',
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