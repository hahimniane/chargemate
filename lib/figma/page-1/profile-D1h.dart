import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';

import '../utils.dart';


class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: TextButton(
        // profilecQP (251:1227)
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
                'page-1/images/frame-33-dQK.png',
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogrouppwr1vJb (JGjuRVyM1TK8cZ17uePwR1)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
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
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // group75913wzP (251:1276)
                      margin: EdgeInsets.fromLTRB(0*fem, 56*fem, 24*fem, 0*fem),
                      width: 48*fem,
                      height: 48*fem,
                      child: Image.asset(
                        'page-1/images/group-75913-Y9m.png',
                        width: 48*fem,
                        height: 48*fem,
                      ),
                    ),
                    Container(
                      // autogrouphscfBtj (JGjuaaYYwUNYHZ3BXxHScf)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25*fem, 12*fem),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // yataylogo1D4j (251:1284)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 33.57*fem),
                            width: 200*fem,
                            height: 36.43*fem,
                            child: Image.asset(
                              'page-1/images/yatay-logo-1-K5R.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // profilehEo (251:1275)
                            margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 0*fem),
                            child: Text(
                              'Profile',
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
                    Container(
                      // group75936PNX (251:1280)
                      margin: EdgeInsets.fromLTRB(0*fem, 56*fem, 0*fem, 0*fem),
                      width: 48*fem,
                      height: 48*fem,
                      child: Image.asset(
                        'page-1/images/group-75936.png',
                        width: 48*fem,
                        height: 48*fem,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroup8vxq4jZ (JGjumjtcxxp1nshuEs8vXq)
                padding: EdgeInsets.fromLTRB(15*fem, 19*fem, 15*fem, 164*fem),
                width: double.infinity,
                height: 774*fem,
                decoration: BoxDecoration (
                  color: Color(0xfffafafa),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // rectangle5XNF (251:1344)
                      margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 10*fem),
                      width: 120*fem,
                      height: 120*fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(85*fem),
                        child: Image.asset(
                          'assets/page-1/images/rectangle-5-5ks.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      // johndoeo4s (251:1318)
                      margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 20*fem),
                      child: Text(
                        'John Doe',
                        style: SafeGoogleFont (
                          'Montserrat',
                          fontSize: 16*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2175*ffem/fem,
                          color: Color(0xff1d3557),
                        ),
                      ),
                    ),
                    Container(
                      // vector9JXR (251:1317)
                      margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 20*fem),
                      width: 228*fem,
                      height: 1*fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-9.png',
                        width: 228*fem,
                        height: 1*fem,
                      ),
                    ),
                    Container(
                      // frame75918bWX (251:1286)
                      margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 20*fem),
                      height: 122*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group75918siw (251:1287)
                            padding: EdgeInsets.fromLTRB(27.5*fem, 21.5*fem, 27.5*fem, 20.5*fem),
                            width: 100*fem,
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
                              // frame5005Kaw (251:1289)
                              width: double.infinity,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // frame75917TSF (251:1290)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                    padding: EdgeInsets.fromLTRB(0*fem, 1.69*fem, 0*fem, 0*fem),
                                    width: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // slowcharge1wMR (251:1291)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6.69*fem),
                                          width: 31.61*fem,
                                          height: 31.61*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/slow-charge-1.png',
                                            width: 31.61*fem,
                                            height: 31.61*fem,
                                          ),
                                        ),
                                        Text(
                                          // chargehzo (251:1293)
                                          'Charge',
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 12*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2175*ffem/fem,
                                            color: Color(0xff143463),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    // EE3 (251:1294)
                                    '6',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xff143463),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 22*fem,
                          ),
                          Container(
                            // group75929XD9 (251:1295)
                            padding: EdgeInsets.fromLTRB(8*fem, 13.5*fem, 7*fem, 13.5*fem),
                            width: 100*fem,
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
                              // frame5005zsR (251:1297)
                              width: double.infinity,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // frame759179EX (251:1298)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                    padding: EdgeInsets.fromLTRB(0*fem, 2.96*fem, 0*fem, 0*fem),
                                    width: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // energyconsumptiondata1qNF (251:1299)
                                          margin: EdgeInsets.fromLTRB(1.34*fem, 0*fem, 0*fem, 7.96*fem),
                                          width: 26.26*fem,
                                          height: 29.08*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/energy-consumption-data-1.png',
                                            width: 26.26*fem,
                                            height: 29.08*fem,
                                          ),
                                        ),
                                        Container(
                                          // totalconsumption8MM (251:1303)
                                          constraints: BoxConstraints (
                                            maxWidth: 85*fem,
                                          ),
                                          child: Text(
                                            'Total Consumption',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Montserrat',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2175*ffem/fem,
                                              color: Color(0xff143463),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    // kw2Bq (251:1304)
                                    '258 Kw',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xff143463),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 22*fem,
                          ),
                          Container(
                            // group75930WMu (251:1305)
                            padding: EdgeInsets.fromLTRB(7*fem, 21.5*fem, 7*fem, 20.5*fem),
                            width: 100*fem,
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
                              // frame5005z2B (251:1307)
                              width: double.infinity,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // frame75917J2s (251:1308)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                    width: double.infinity,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // nounlegacyco244762671Dfd (251:1309)
                                          margin: EdgeInsets.fromLTRB(1.05*fem, 0*fem, 0*fem, 5*fem),
                                          width: 33.95*fem,
                                          height: 35*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/noun-legacy-co2-4476267-1.png',
                                            width: 33.95*fem,
                                            height: 35*fem,
                                          ),
                                        ),
                                        Text(
                                          // co2recoveryhqh (251:1315)
                                          'CO2 Recovery',
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 12*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2175*ffem/fem,
                                            color: Color(0xff143463),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    // kgDp3 (251:1316)
                                    '2.6 Kg',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w400,
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
                      // autogroup8o5qpoq (JGjuypNq7W1zpjmi6m8o5q)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                      padding: EdgeInsets.fromLTRB(10*fem, 15*fem, 38*fem, 15*fem),
                      width: double.infinity,
                      height: 79*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame75922Vuy (251:1336)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 143*fem, 0*fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // sexQn3 (251:1337)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                                  child: Text(
                                    'Sex:',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 15*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xff1d3557),
                                    ),
                                  ),
                                ),
                                Text(
                                  // manUX1 (251:1338)
                                  'Man',
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 13*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2175*ffem/fem,
                                    letterSpacing: 0.78*fem,
                                    color: Color(0xff1d3557),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // frame75919Cxo (251:1341)
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // tcidentityMao (251:1342)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                                  child: Text(
                                    'T.C Identity:',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 15*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xff1d3557),
                                    ),
                                  ),
                                ),
                                Text(
                                  // 3Td (251:1343)
                                  '012340123401234',
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 13*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2175*ffem/fem,
                                    letterSpacing: 0.78*fem,
                                    color: Color(0xff1d3557),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroup1sphAo9 (JGjvEZTGLiupqp5xW51SPh)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 25*fem),
                      padding: EdgeInsets.fromLTRB(10*fem, 15*fem, 43*fem, 15*fem),
                      width: double.infinity,
                      height: 79*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame75920rfy (251:1321)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 49*fem, 0*fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // mobilenumberAgf (251:1322)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                                  child: Text(
                                    'Mobile Number:',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 15*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xff1d3557),
                                    ),
                                  ),
                                ),
                                Text(
                                  // GUo (251:1323)
                                  '012340123401234',
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 13*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2175*ffem/fem,
                                    letterSpacing: 0.78*fem,
                                    color: Color(0xff1d3557),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // frame75921bmy (251:1331)
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // emailaddresswaw (251:1332)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                                  child: Text(
                                    'Email Address:',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 15*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xff1d3557),
                                    ),
                                  ),
                                ),
                                Text(
                                  // johnemailcomqRR (251:1333)
                                  'John@email.com',
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 13*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2175*ffem/fem,
                                    color: Color(0xff1d3557),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // frame75920ZsD (251:1326)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 102*fem, 0*fem),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // fulladdressrrK (251:1327)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                            child: Text(
                              'Full Address:',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 15*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff1d3557),
                              ),
                            ),
                          ),
                          Container(
                            // hisarmahkyiicadpaaskno3beykozi (251:1328)
                            constraints: BoxConstraints (
                              maxWidth: 223*fem,
                            ),
                            child: Text(
                              'Hisar Mah. Köyiçi Cad. Paşa Sk.\nNo:3 Beykoz İstanbul',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 13*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2175*ffem/fem,
                                letterSpacing: 0.78*fem,
                                color: Color(0xff1d3557),
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