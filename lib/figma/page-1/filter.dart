import 'package:chargemate/constants/constants.dart';
import 'package:chargemate/providers/filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';

import '../utils.dart';

class FilterPage extends StatefulWidget {
  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  void initState() {
    // List.generate(
    //     listOfBrands.length, (index) => listOfCheckBoxValues[index] = true);
    super.initState();
  }

  @override
  Widget build(context) {
    double screenWidth = MediaQuery.of(context).size.width;
    EdgeInsets padding = MediaQuery.of(context).padding;
    double availableHeight =
        MediaQuery.of(context).size.height - padding.top - padding.bottom;
    var setterProvider = Provider.of<Filter>(context, listen: false);
    var getterProvider = Provider.of<Filter>(context, listen: true);
    double baseWidth = MediaQuery.of(context).size.width;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.04,
                          top: availableHeight * 0.01174),
                      // color: Colors.brown,
                      height: availableHeight * 0.0462,
                      width: screenWidth * 0.118,
                      child: Material(
                        elevation: 0.3,
                        borderRadius: BorderRadius.circular(4),
                        child: Icon(
                          Icons.arrow_back_outlined,
                          color: appColor,
                          // size: MediaQuery.of(context).size.width * 0.064,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 15,
                  child: Image(
                    height: 30,
                    fit: BoxFit.contain,
                    image: AssetImage(
                      'page-1/images/yatay-logo-1-1sd.png',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    // filter1fM (202:1162)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 133 * fem, fem),
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
                  GestureDetector(
                    onTap: () {
                      setterProvider.clearAllFilters();
                    },
                    child: Container(
                      // clearselectiontUF (202:1163)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 1 * fem, 0 * fem, 0 * fem),
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
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    // color: Colors.blue,
                    border: Border.all(color: appColor),
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.fromLTRB(10, 5, 5, 10),
                margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
                height: size.height * 0.12,
                width: size.width * 0.90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // color: Colors.yellow,
                      margin: EdgeInsets.fromLTRB(
                          5 * fem, 5 * fem, 0 * fem, 10 * fem),
                      width: 94 * fem,
                      height: 20 * fem,
                      child: Text(
                        'Soket',
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
                    Container(
                      // color: Colors.purple,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          // h6Ycf (202:1173)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              1 * fem, 5 * fem, 0 * fem),
                                          child: Text(
                                            Provider.of<Filter>(context)
                                                .listOfSocket[0],
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
                                            child: Consumer(
                                              builder: (BuildContext context,
                                                  value, Widget? child) {
                                                return Checkbox(
                                                  activeColor: appColor,
                                                  value: getterProvider
                                                      .listOfSocketsCheckBoxes[0],
                                                  onChanged: (bool? value) {
                                                    print(
                                                        'the value of the toggle is $value');
                                                    setterProvider
                                                        .toggleSocketCheckBox(
                                                            0, value!);
                                                  },
                                                );
                                              },
                                            )),
                                      ],
                                    ),
                                  ),

                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          // h6Ycf (202:1173)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              1 * fem, 5 * fem, 0 * fem),
                                          child: Text(
                                            setterProvider.listOfSocket[1],
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
                                            child: Consumer(
                                              builder: (BuildContext context,
                                                  value, Widget? child) {
                                                return Checkbox(
                                                  activeColor: appColor,
                                                  value: getterProvider
                                                      .listOfSocketsCheckBoxes[1],
                                                  onChanged: (bool? value) {
                                                    print(
                                                        'the value of the toggle is $value');
                                                    setterProvider
                                                        .toggleSocketCheckBox(
                                                            1, value!);
                                                  },
                                                );
                                              },
                                            )),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          // h6Ycf (202:1173)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              1 * fem, 5 * fem, 0 * fem),
                                          child: Text(
                                            Provider.of<Filter>(context)
                                                .listOfSocket[2],
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
                                            child: Consumer(
                                              builder: (BuildContext context,
                                                  value, Widget? child) {
                                                return Checkbox(
                                                  activeColor: appColor,
                                                  value: getterProvider
                                                      .listOfSocketsCheckBoxes[2],
                                                  onChanged: (bool? value) {
                                                    print(
                                                        'the value of the toggle is $value');
                                                    setterProvider
                                                        .toggleSocketCheckBox(
                                                            2, value!);
                                                  },
                                                );
                                              },
                                            )),
                                      ],
                                    ),
                                  ),
                                  // SizedBox(
                                  //   width: 30,
                                  // ),
                                ],
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.only(bottom: 10),
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.start,
                            //     crossAxisAlignment: CrossAxisAlignment.center,
                            //     children: [
                            //       Expanded(
                            //         child: Row(
                            //           mainAxisAlignment:
                            //               MainAxisAlignment.spaceBetween,
                            //           children: [
                            //             Container(
                            //               // h6Ycf (202:1173)
                            //               margin: EdgeInsets.fromLTRB(
                            //                   0 * fem, 1 * fem, 0 * fem, 0 * fem),
                            //               child: Text(
                            //                 setterProvider.listOfSocket[2],
                            //                 style: SafeGoogleFont(
                            //                   'Montserrat',
                            //                   fontSize: 14 * ffem,
                            //                   fontWeight: FontWeight.w700,
                            //                   height: 1.2175 * ffem / fem,
                            //                   letterSpacing: 0.200000003 * fem,
                            //                   color: Color(0xff143463),
                            //                 ),
                            //               ),
                            //             ),
                            //             Container(
                            //                 // frame311m9 (202:1174)
                            //                 width: 20 * fem,
                            //                 height: 20 * fem,
                            //                 child: Consumer(
                            //                   builder: (BuildContext context, value,
                            //                       Widget? child) {
                            //                     return Checkbox(
                            //                       activeColor: appColor,
                            //                       value: getterProvider
                            //                           .listOfSocketsCheckBoxes[2],
                            //                       onChanged: (bool? value) {
                            //                         print(
                            //                             'the value of the toggle is $value');
                            //                         setterProvider
                            //                             .toggleSocketCheckBox(
                            //                                 2, value!);
                            //                       },
                            //                     );
                            //                   },
                            //                 )),
                            //           ],
                            //         ),
                            //       ),
                            //       SizedBox(
                            //         width: 30,
                            //       ),
                            //       // Expanded(
                            //       //   child: Row(
                            //       //     mainAxisAlignment:
                            //       //         MainAxisAlignment.spaceBetween,
                            //       //     children: [
                            //       //       Container(
                            //       //         // h6Ycf (202:1173)
                            //       //         margin: EdgeInsets.fromLTRB(
                            //       //             0 * fem, 1 * fem, 0 * fem, 0 * fem),
                            //       //         child: Text(
                            //       //           setterProvider.listOfBrands[3],
                            //       //           style: SafeGoogleFont(
                            //       //             'Montserrat',
                            //       //             fontSize: 14 * ffem,
                            //       //             fontWeight: FontWeight.w700,
                            //       //             height: 1.2175 * ffem / fem,
                            //       //             letterSpacing: 0.200000003 * fem,
                            //       //             color: Color(0xff143463),
                            //       //           ),
                            //       //         ),
                            //       //       ),
                            //       //       Container(
                            //       //           // frame311m9 (202:1174)
                            //       //           width: 20 * fem,
                            //       //           height: 20 * fem,
                            //       //           child: Consumer(
                            //       //             builder: (BuildContext context, value,
                            //       //                 Widget? child) {
                            //       //               return Checkbox(
                            //       //                 activeColor: appColor,
                            //       //                 value: getterProvider
                            //       //                     .listOfCheckBoxValues[3],
                            //       //                 onChanged: (bool? value) {
                            //       //                   print(
                            //       //                       'the value of the toggle is $value');
                            //       //                   setterProvider.toggleCheckBox(
                            //       //                       3, value!);
                            //       //                 },
                            //       //               );
                            //       //             },
                            //       //           )),
                            //       //     ],
                            //       //   ),
                            //       // )
                            //     ],
                            //   ),
                            // ),

                            // GestureDetector(
                            //   child: Text(
                            //     'Tümünü göster',
                            //     style: SafeGoogleFont('Montserrat',
                            //         fontSize: 16 * ffem,
                            //         fontWeight: FontWeight.w700,
                            //         height: 1.5 * ffem / fem,
                            //         letterSpacing: 0.1000000015 * fem,
                            //         color: Color(0xff143463),
                            //         decoration: TextDecoration.underline),
                            //   ),
                            //   onTap: () {
                            //     // _showPopup();
                            //     // _showSocketPopup();
                            //     // for (bool icon in listOfCheckBoxValues) {
                            //     //   print(icon);
                            //     // }
                            //   },
                            // )
                          ]),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    // color: Colors.blue,
                    border: Border.all(color: appColor),
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.fromLTRB(10, 5, 5, 10),
                margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
                height: size.height * 0.16,
                width: size.width * 0.90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // color: Colors.yellow,
                      margin: EdgeInsets.fromLTRB(
                          5 * fem, 5 * fem, 0 * fem, 10 * fem),
                      // width: 94 * fem,
                      height: 20 * fem,
                      child: Text(
                        'Tesis Imkani',
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
                    Expanded(
                      child: Container(
                        // color: Colors.purple,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              // color: Colors.blue,
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  1 * fem,
                                                  5 * fem,
                                                  0 * fem),
                                              child: Text(
                                                Provider.of<Filter>(context)
                                                    .listOfAmenities[0],
                                                style: SafeGoogleFont(
                                                  'Montserrat',
                                                  fontSize: 14 * ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.2175 * ffem / fem,
                                                  letterSpacing:
                                                      0.200000003 * fem,
                                                  color: Color(0xff143463),
                                                ),
                                              ),
                                            ),
                                            Container(
                                                // color: Colors.green,
                                                // frame311m9 (202:1174)
                                                width: 20 * fem,
                                                height: 20 * fem,
                                                child: Consumer(
                                                  builder:
                                                      (BuildContext context,
                                                          value,
                                                          Widget? child) {
                                                    return Checkbox(
                                                      activeColor: appColor,
                                                      value: getterProvider
                                                          .listOfAmenitiesCheckBoxes[0],
                                                      onChanged: (bool? value) {
                                                        print(
                                                            'the value of the toggle is $value');
                                                        setterProvider
                                                            .toggleAmenitiesCheckBox(
                                                                0, value!);
                                                      },
                                                    );
                                                  },
                                                )),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              // color: Colors.orange,
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  1 * fem,
                                                  5 * fem,
                                                  0 * fem),
                                              child: Text(
                                                setterProvider
                                                    .listOfAmenities[1],
                                                style: SafeGoogleFont(
                                                  'Montserrat',
                                                  fontSize: 14 * ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.2175 * ffem / fem,
                                                  letterSpacing:
                                                      0.200000003 * fem,
                                                  color: Color(0xff143463),
                                                ),
                                              ),
                                            ),
                                            Container(
                                                // frame311m9 (202:1174)
                                                width: 20 * fem,
                                                height: 20 * fem,
                                                child: Consumer(
                                                  builder:
                                                      (BuildContext context,
                                                          value,
                                                          Widget? child) {
                                                    return Checkbox(
                                                      activeColor: appColor,
                                                      value: getterProvider
                                                          .listOfAmenitiesCheckBoxes[1],
                                                      onChanged: (bool? value) {
                                                        print(
                                                            'the value of the toggle is $value');
                                                        setterProvider
                                                            .toggleAmenitiesCheckBox(
                                                                1, value!);
                                                      },
                                                    );
                                                  },
                                                )),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              // h6Ycf (202:1173)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  1 * fem,
                                                  5 * fem,
                                                  0 * fem),
                                              child: Text(
                                                Provider.of<Filter>(context)
                                                    .listOfAmenities[2],
                                                style: SafeGoogleFont(
                                                  'Montserrat',
                                                  fontSize: 14 * ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.2175 * ffem / fem,
                                                  letterSpacing:
                                                      0.200000003 * fem,
                                                  color: Color(0xff143463),
                                                ),
                                              ),
                                            ),
                                            Container(
                                                // frame311m9 (202:1174)
                                                width: 20 * fem,
                                                height: 20 * fem,
                                                child: Consumer(
                                                  builder:
                                                      (BuildContext context,
                                                          value,
                                                          Widget? child) {
                                                    return Checkbox(
                                                      activeColor: appColor,
                                                      value: getterProvider
                                                          .listOfAmenitiesCheckBoxes[2],
                                                      onChanged: (bool? value) {
                                                        print(
                                                            'the value of the toggle is $value');
                                                        setterProvider
                                                            .toggleAmenitiesCheckBox(
                                                                2, value!);
                                                      },
                                                    );
                                                  },
                                                )),
                                          ],
                                        ),
                                      ),
                                      // SizedBox(
                                      //   width: 30,
                                      // ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            // h6Ycf (202:1173)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                1 * fem, 5 * fem, 0 * fem),
                                            child: Text(
                                              Provider.of<Filter>(context)
                                                  .listOfAmenities[3],
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 14 * ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2175 * ffem / fem,
                                                letterSpacing:
                                                    0.200000003 * fem,
                                                color: Color(0xff143463),
                                              ),
                                            ),
                                          ),
                                          Container(
                                              // frame311m9 (202:1174)
                                              width: 20 * fem,
                                              height: 20 * fem,
                                              child: Consumer(
                                                builder: (BuildContext context,
                                                    value, Widget? child) {
                                                  return Checkbox(
                                                    activeColor: appColor,
                                                    value: getterProvider
                                                        .listOfAmenitiesCheckBoxes[3],
                                                    onChanged: (bool? value) {
                                                      print(
                                                          'the value of the toggle is $value');
                                                      setterProvider
                                                          .toggleAmenitiesCheckBox(
                                                              3, value!);
                                                    },
                                                  );
                                                },
                                              )),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            // h6Ycf (202:1173)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                1 * fem, 5 * fem, 0 * fem),
                                            child: Text(
                                              setterProvider.listOfAmenities[4],
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 14 * ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2175 * ffem / fem,
                                                letterSpacing:
                                                    0.200000003 * fem,
                                                color: Color(0xff143463),
                                              ),
                                            ),
                                          ),
                                          Container(
                                              // frame311m9 (202:1174)
                                              width: 20 * fem,
                                              height: 20 * fem,
                                              child: Consumer(
                                                builder: (BuildContext context,
                                                    value, Widget? child) {
                                                  return Checkbox(
                                                    activeColor: appColor,
                                                    value: getterProvider
                                                        .listOfAmenitiesCheckBoxes[4],
                                                    onChanged: (bool? value) {
                                                      print(
                                                          'the value of the toggle is $value');
                                                      setterProvider
                                                          .toggleAmenitiesCheckBox(
                                                              4, value!);
                                                    },
                                                  );
                                                },
                                              )),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            // h6Ycf (202:1173)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                1 * fem, 5 * fem, 0 * fem),
                                            child: Text(
                                              Provider.of<Filter>(context)
                                                  .listOfAmenities[5],
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 14 * ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.2175 * ffem / fem,
                                                letterSpacing:
                                                    0.200000003 * fem,
                                                color: Color(0xff143463),
                                              ),
                                            ),
                                          ),
                                          Container(
                                              // frame311m9 (202:1174)
                                              width: 20 * fem,
                                              height: 20 * fem,
                                              child: Consumer(
                                                builder: (BuildContext context,
                                                    value, Widget? child) {
                                                  return Checkbox(
                                                    activeColor: appColor,
                                                    value: getterProvider
                                                        .listOfAmenitiesCheckBoxes[5],
                                                    onChanged: (bool? value) {
                                                      print(
                                                          'the value of the toggle is $value');
                                                      setterProvider
                                                          .toggleAmenitiesCheckBox(
                                                              5, value!);
                                                    },
                                                  );
                                                },
                                              )),
                                        ],
                                      ),
                                    ),
                                    // SizedBox(
                                    //   width: 30,
                                    // ),
                                  ],
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    // color: Colors.blue,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.fromLTRB(10, 1, 5, 10),
                margin: EdgeInsets.fromLTRB(15, 20, 15, 0),
                height: size.height * 0.28,
                width: size.width * 0.90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // listtitlebmy (202:1166)
                      margin: EdgeInsets.fromLTRB(
                          5 * fem, 5 * fem, 0 * fem, 24 * fem),
                      width: 94 * fem,
                      height: 20 * fem,
                      child: Text(
                        'Marka',
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.5 * ffem / fem,
                          letterSpacing: 0.1000000015 * fem,
                          color: appColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          // h6Ycf (202:1173)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              1 * fem, 0 * fem, 0 * fem),
                                          child: Text(
                                            setterProvider.listOfBrands[0],
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
                                            child: Consumer(
                                              builder: (BuildContext context,
                                                  value, Widget? child) {
                                                return Checkbox(
                                                  activeColor: appColor,
                                                  value: getterProvider
                                                      .listOfCheckBoxValues[0],
                                                  onChanged: (bool? value) {
                                                    print(
                                                        'the value of the toggle is $value');
                                                    setterProvider
                                                        .toggleCheckBox(
                                                            0, value!);
                                                  },
                                                );
                                              },
                                            )),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          // h6Ycf (202:1173)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              1 * fem, 0 * fem, 0 * fem),
                                          child: Text(
                                            setterProvider.listOfBrands[1],
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
                                            child: Consumer(
                                              builder: (BuildContext context,
                                                  value, Widget? child) {
                                                return Checkbox(
                                                  activeColor: appColor,
                                                  value: getterProvider
                                                      .listOfCheckBoxValues[1],
                                                  onChanged: (bool? value) {
                                                    print(
                                                        'the value of the toggle is $value');
                                                    setterProvider
                                                        .toggleCheckBox(
                                                            1, value!);
                                                  },
                                                );
                                              },
                                            )),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          // h6Ycf (202:1173)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              1 * fem, 0 * fem, 0 * fem),
                                          child: Text(
                                            setterProvider.listOfBrands[2],
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
                                            child: Consumer(
                                              builder: (BuildContext context,
                                                  value, Widget? child) {
                                                return Checkbox(
                                                  activeColor: appColor,
                                                  value: getterProvider
                                                      .listOfCheckBoxValues[2],
                                                  onChanged: (bool? value) {
                                                    print(
                                                        'the value of the toggle is $value');
                                                    setterProvider
                                                        .toggleCheckBox(
                                                            2, value!);
                                                  },
                                                );
                                              },
                                            )),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          // h6Ycf (202:1173)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              1 * fem, 0 * fem, 0 * fem),
                                          child: Text(
                                            setterProvider.listOfBrands[3],
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
                                            child: Consumer(
                                              builder: (BuildContext context,
                                                  value, Widget? child) {
                                                return Checkbox(
                                                  activeColor: appColor,
                                                  value: getterProvider
                                                      .listOfCheckBoxValues[3],
                                                  onChanged: (bool? value) {
                                                    print(
                                                        'the value of the toggle is $value');
                                                    setterProvider
                                                        .toggleCheckBox(
                                                            3, value!);
                                                  },
                                                );
                                              },
                                            )),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          // h6Ycf (202:1173)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              1 * fem, 0 * fem, 0 * fem),
                                          child: Text(
                                            setterProvider.listOfBrands[4],
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
                                            child: Consumer(
                                              builder: (BuildContext context,
                                                  value, Widget? child) {
                                                return Checkbox(
                                                  activeColor: appColor,
                                                  value: getterProvider
                                                      .listOfCheckBoxValues[4],
                                                  onChanged: (bool? value) {
                                                    print(
                                                        'the value of the toggle is $value');
                                                    setterProvider
                                                        .toggleCheckBox(
                                                            4, value!);
                                                  },
                                                );
                                              },
                                            )),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          // h6Ycf (202:1173)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              1 * fem, 0 * fem, 0 * fem),
                                          child: Text(
                                            setterProvider.listOfBrands[5],
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
                                            child: Consumer(
                                              builder: (BuildContext context,
                                                  value, Widget? child) {
                                                return Checkbox(
                                                  activeColor: appColor,
                                                  value: getterProvider
                                                      .listOfCheckBoxValues[5],
                                                  onChanged: (bool? value) {
                                                    print(
                                                        'the value of the toggle is $value');
                                                    setterProvider
                                                        .toggleCheckBox(
                                                            5, value!);
                                                  },
                                                );
                                              },
                                            )),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            GestureDetector(
                              child: Text(
                                'Tümünü göster',
                                style: SafeGoogleFont('Montserrat',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.5 * ffem / fem,
                                    letterSpacing: 0.1000000015 * fem,
                                    color: Color(0xff143463),
                                    decoration: TextDecoration.underline),
                              ),
                              onTap: () {
                                _showPopup();
                                // for (bool icon in listOfCheckBoxValues) {
                                //   print(icon);
                                // }
                              },
                            )
                          ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              // color: Colors.orange,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Material(
                  // color: Colors.blue,
// borderRadius: BorderRadius.circular(12),
//                   elevation: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40,
                            width: 165,
                            decoration: BoxDecoration(
                                color: appColor,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: appColor)),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  // backgroundColor: Colors.white,
                                  ),
                              child: Text(
                                'Filtre Uygula',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2175 * ffem / fem,
                                  // decoration: TextDecoration.underline,
                                  color: Colors.white,
                                  // decorationColor: Color(0xff143463),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40,
                            width: 165,
                            decoration: BoxDecoration(
                                // color: Colors.orange,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: appColor)),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  // backgroundColor: Colors.white,
                                  ),
                              child: Text(
                                'Iptal Et',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2175 * ffem / fem,
                                  // decoration: TextDecoration.underline,
                                  color: appColor,
                                  // decorationColor: Color(0xff143463),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }

  void _showPopup() {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    var filterProvider = Provider.of<Filter>(context, listen: false);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // print('List of brands ${listOfBrands.length}');
        // print('List of value ${listOfCheckBoxValues.length}');
        return StatefulBuilder(
          builder:
              (BuildContext context, void Function(void Function()) setState) {
            var filterProvider = Provider.of<Filter>(context, listen: false);
            return AlertDialog(
              title: Text(
                "Marka Seç",
                style: SafeGoogleFont(
                  'Montserrat',
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.5 * ffem / fem,
                  letterSpacing: 0.1000000015 * fem,
                  color: Color(0xff143463),
                ),
              ),
              content: Container(
                width: double.minPositive,
                child: ListView.builder(
                  itemCount: filterProvider.listOfBrands.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CheckboxListTile(
                      title: Text(
                        filterProvider.listOfBrands[index],
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2175 * ffem / fem,
                          letterSpacing: 0.200000003 * fem,
                          color: Color(0xff143463),
                        ),
                      ),
                      value: Provider.of<Filter>(context, listen: true)
                          .listOfCheckBoxValues[index],
                      onChanged: (bool? value) {
                        filterProvider.toggleCheckBox(index, value!);
                        // listOfCheckBoxValues[index] = value!;
                      },
                    );
                  },
                ),
              ),
              actions: [
                TextButton(
                  child: Text("kapat"),
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                    // Manually update the UI of the background list here
                    setState(() {});
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }

  void _showSocketPopup() {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    var filterProvider = Provider.of<Filter>(context, listen: false);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // print('List of brands ${listOfBrands.length}');
        // print('List of value ${listOfCheckBoxValues.length}');
        return StatefulBuilder(
          builder:
              (BuildContext context, void Function(void Function()) setState) {
            var filterProvider = Provider.of<Filter>(context, listen: false);
            return AlertDialog(
              title: Text(
                "Soket Seç",
                style: SafeGoogleFont(
                  'Montserrat',
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.5 * ffem / fem,
                  letterSpacing: 0.1000000015 * fem,
                  color: Color(0xff143463),
                ),
              ),
              content: Container(
                width: double.minPositive,
                child: ListView.builder(
                  itemCount: filterProvider.listOfSocket.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CheckboxListTile(
                      title: Text(
                        filterProvider.listOfSocket[index],
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2175 * ffem / fem,
                          letterSpacing: 0.200000003 * fem,
                          color: Color(0xff143463),
                        ),
                      ),
                      value: Provider.of<Filter>(context, listen: true)
                          .listOfSocketsCheckBoxes[index],
                      onChanged: (bool? value) {
                        filterProvider.toggleSocketCheckBox(index, value!);
                        // listOfCheckBoxValues[index] = value!;
                      },
                    );
                  },
                ),
              ),
              actions: [
                TextButton(
                  child: Text("kapat"),
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                    // Manually update the UI of the background list here
                    setState(() {});
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }
}

// List<String> listOfBrands = [
//   'Tesla',
//   'Trugo',
//   'Zes',
//   'Eşarj',
//   'OnCharge',
//   'Sharz',
//   'GioEv',
//   'Beefull',
//   'Pleco',
//   'Astor şarj',
//   'Power şarj',
//   'Epsis',
//   'En Yakıt',
//   'Neva şarj',
//   'Voltrum',
//   'InCharge',
//   'Meis Charge',
//   'Aksa Şarj',
//   'Aramtec',
//   'CV Charging',
//   'RHG Enertürk',
//   'ERC Charge',
//   'Şarjon'
// ];
// List<bool> listOfCheckBoxValues = [
//   true,
//   true,
//   true,
//   true,
//   true,
//   true,
//   true,
//   true,
//   true,
//   true,
//   true,
//   true,
//   true,
//   true,
//   true,
//   true,
//   true,
//   true,
//   true,
//   true,
//   true,
//   true,
//   true
// ];
