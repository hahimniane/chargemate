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
        // chargemomentV6F (251:830)
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
                'assets/page-1/images/frame-33-fSX.png',
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupbhx3s6o (JGjnfXZoZx6cRgWjT3bhx3)
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
                      // yataylogo1fHZ (251:883)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 19.57*fem),
                      width: 200*fem,
                      height: 36.43*fem,
                      child: Image.asset(
                        'assets/page-1/images/yatay-logo-1-Jt7.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      // autogroup43fd56P (JGjnmrib8prVX4MXcQ43FD)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 96*fem, 0*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group75913kTR (251:879)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 48*fem, 0*fem),
                            width: 48*fem,
                            height: 48*fem,
                            child: Image.asset(
                              'assets/page-1/images/group-75913-YhD.png',
                              width: 48*fem,
                              height: 48*fem,
                            ),
                          ),
                          Container(
                            // chargemoment3xK (251:878)
                            margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                            child: Text(
                              'Charge Moment',
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
                // autogroup2kqxKew (JGjnvMUS5dc83Amomu2kQX)
                width: double.infinity,
                decoration: BoxDecoration (
                  color: Color(0xfffafafa),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupdtpjDVR (JGjo4S5Jc9HLbDTxKgDTpj)
                      padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 34*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame75926KHZ (251:943)
                            margin: EdgeInsets.fromLTRB(85*fem, 0*fem, 85*fem, 29*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // chargingpilesvgrepocom13DZ (251:944)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                  width: 24*fem,
                                  height: 24*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/charging-pile-svgrepo-com-1.png',
                                    width: 24*fem,
                                    height: 24*fem,
                                  ),
                                ),
                                Text(
                                  // chargingstarted7DR (251:951)
                                  'Charging Started',
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.5*ffem/fem,
                                    letterSpacing: 0.1000000015*fem,
                                    color: Color(0xff143463),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // frame75929QTR (251:896)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // frame75927WmM (251:897)
                                  width: double.infinity,
                                  height: 48*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // group75938DQs (251:898)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                        width: 48*fem,
                                        height: 48*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/group-75938-Vbd.png',
                                          width: 48*fem,
                                          height: 48*fem,
                                        ),
                                      ),
                                      Container(
                                        // group75939XRZ (251:902)
                                        padding: EdgeInsets.fromLTRB(10*fem, 17*fem, 11*fem, 16*fem),
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
                                              // locationgSs (251:905)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 87*fem, 0*fem),
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
                                            Text(
                                              // zesradissonhoteljAF (251:904)
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
                                  // frame75928dFd (251:906)
                                  width: double.infinity,
                                  height: 48*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // group75938aAs (251:907)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                        width: 48*fem,
                                        height: 48*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/group-75938-Lj1.png',
                                          width: 48*fem,
                                          height: 48*fem,
                                        ),
                                      ),
                                      Container(
                                        // group75939FXu (251:915)
                                        padding: EdgeInsets.fromLTRB(10*fem, 17*fem, 11*fem, 16*fem),
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
                                              // socket85u (251:918)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 161*fem, 0*fem),
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
                                              // actype2bkB (251:917)
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
                                  // frame75929iK1 (251:919)
                                  width: double.infinity,
                                  height: 48*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // group75938fEF (251:920)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                        width: 48*fem,
                                        height: 48*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/group-75938.png',
                                          width: 48*fem,
                                          height: 48*fem,
                                        ),
                                      ),
                                      Container(
                                        // group759399v7 (251:924)
                                        padding: EdgeInsets.fromLTRB(10*fem, 17*fem, 11*fem, 16*fem),
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
                                              // kwh3Eo (251:927)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 218*fem, 0*fem),
                                              child: Text(
                                                'kWh:',
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
                                              // vJb (251:926)
                                              '22',
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
                                  // frame75930atw (251:928)
                                  width: double.infinity,
                                  height: 48*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // group75938HHZ (251:929)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                        width: 48*fem,
                                        height: 48*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/group-75938-F51.png',
                                          width: 48*fem,
                                          height: 48*fem,
                                        ),
                                      ),
                                      Container(
                                        // group75939fou (251:939)
                                        padding: EdgeInsets.fromLTRB(10*fem, 17*fem, 11*fem, 16*fem),
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
                                              // passingtimej35 (251:942)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 138*fem, 0*fem),
                                              child: Text(
                                                'Passing time:',
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
                                              // minL2s (251:941)
                                              '15 min.',
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
                          Container(
                            // group12742gP (251:885)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                            width: double.infinity,
                            height: 70*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // group1250MTm (251:886)
                                  left: 24.7163085938*fem,
                                  top: 0*fem,
                                  child: ClipRect(
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur (
                                        sigmaX: 10*fem,
                                        sigmaY: 10*fem,
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.fromLTRB(203.91*fem, 21*fem, 49.37*fem, 21*fem),
                                        width: 320.28*fem,
                                        height: 70*fem,
                                        decoration: BoxDecoration (
                                          color: Color(0xffffffff),
                                          borderRadius: BorderRadius.circular(12*fem),
                                        ),
                                        child: Container(
                                          // group1281yEF (251:888)
                                          width: double.infinity,
                                          height: double.infinity,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                // hoursvQP (251:889)
                                                left: 10.2984619141*fem,
                                                top: 0*fem,
                                                child: Align(
                                                  child: SizedBox(
                                                    width: 48*fem,
                                                    height: 15*fem,
                                                    child: Text(
                                                      '3 Hours',
                                                      style: SafeGoogleFont (
                                                        'Montserrat',
                                                        fontSize: 12*ffem,
                                                        fontWeight: FontWeight.w700,
                                                        height: 1.2175*ffem/fem,
                                                        color: Color(0xff143463),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // remaining1Aw (251:890)
                                                left: 0*fem,
                                                top: 13*fem,
                                                child: Align(
                                                  child: SizedBox(
                                                    width: 67*fem,
                                                    height: 15*fem,
                                                    child: Text(
                                                      'Remaining',
                                                      style: SafeGoogleFont (
                                                        'Montserrat',
                                                        fontSize: 12*ffem,
                                                        fontWeight: FontWeight.w300,
                                                        height: 1.2175*ffem/fem,
                                                        color: Color(0xff143463),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // group1251UaK (251:891)
                                  left: 0*fem,
                                  top: 0*fem,
                                  child: ClipRect(
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur (
                                        sigmaX: 10*fem,
                                        sigmaY: 10*fem,
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.fromLTRB(49.43*fem, 19.5*fem, 53.01*fem, 19.5*fem),
                                        width: 189.49*fem,
                                        height: 70*fem,
                                        decoration: BoxDecoration (
                                          border: Border.all(color: Color(0xff38e494)),
                                          borderRadius: BorderRadius.circular(12*fem),
                                          gradient: LinearGradient (
                                            begin: Alignment(-0.916, 0.018),
                                            end: Alignment(0.361, 0.018),
                                            colors: <Color>[Color(0xff4ffeaa), Color(0xff54facf)],
                                            stops: <double>[0, 1],
                                          ),
                                        ),
                                        child: Container(
                                          // group1273mxj (251:893)
                                          width: double.infinity,
                                          height: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // vectorELX (251:894)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10.3*fem, 0.22*fem),
                                                width: 25.75*fem,
                                                height: 27.78*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/vector-jFm.png',
                                                  width: 25.75*fem,
                                                  height: 27.78*fem,
                                                ),
                                              ),
                                              Text(
                                                // vUF (251:895)
                                                '58%',
                                                style: SafeGoogleFont (
                                                  'Montserrat',
                                                  fontSize: 25*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2175*ffem/fem,
                                                  color: Color(0xff143463),
                                                ),
                                              ),
                                            ],
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
                    Container(
                      // group75937Dy9 (251:952)
                      width: double.infinity,
                      height: 151*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // homeindicatoronlightNb9 (251:953)
                            left: 120*fem,
                            top: 137*fem,
                            child: Container(
                              width: 134*fem,
                              height: 5*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(100*fem),
                              ),
                              child: Center(
                                // homeindicatort3h (251:954)
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
                            // frame8318K (251:955)
                            left: 0*fem,
                            top: 0*fem,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(15*fem, 20*fem, 15*fem, 20*fem),
                              width: 375*fem,
                              height: 151*fem,
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // buttonEmm (251:956)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                                    width: double.infinity,
                                    height: 48*fem,
                                    decoration: BoxDecoration (
                                      color: Color(0xffe63946),
                                      borderRadius: BorderRadius.circular(8*fem),
                                    ),
                                    child: Center(
                                      child: Center(
                                        child: Text(
                                          'Stop Charging',
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
                                    // buttonFwm (251:958)
                                    width: double.infinity,
                                    height: 48*fem,
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
            ],
          ),
        ),
      ),
          );
  }
}