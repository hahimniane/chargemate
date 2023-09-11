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
    var filterProvider=Provider.of<Filter>(context,listen: false);
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Column(
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
              GestureDetector(
                onTap: () {
              filterProvider.clearAllFilters();
                },
                child: Container(
                  // clearselectiontUF (202:1163)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 1 * fem, 0 * fem, 0 * fem),
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
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.fromLTRB(10, 5, 5, 10),
            margin: EdgeInsets.fromLTRB(15, 30, 15, 5),
            height: size.height * 0.28,
            width: size.width * 0.90,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // listtitlebmy (202:1166)
                  margin:
                      EdgeInsets.fromLTRB(5 * fem, 5 * fem, 0 * fem, 24 * fem),
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
                      color: Color(0xff143463),
                    ),
                  ),
                ),
                Column(
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
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                    child: Text(
                                     filterProvider.listOfBrands[0],
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
                                        builder: (BuildContext context, value, Widget? child) {
                                          return   Checkbox(
                                          activeColor: appColor,
                                          value:filterProvider. listOfCheckBoxValues[0],
                                          onChanged: (bool? value) {

                                          filterProvider.toggleCheckBox(0, value!) ;
                                         // listOfCheckBoxValues[0] = value!;



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
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                    child: Text(
                                     filterProvider. listOfBrands[1],
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
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                    // frame311m9 (202:1174)
                                    width: 20 * fem,
                                    height: 20 * fem,
                                    child: Checkbox(
                                      activeColor: appColor,
                                      value:filterProvider. listOfCheckBoxValues[1],
                                      onChanged: (bool? value) {
                                        setState(() {
                                          filterProvider. listOfCheckBoxValues[1] = value!;
                                        });
                                      },
                                    ),
                                  ),
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
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                    child: Text(
                                      filterProvider. listOfBrands[2],
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
                                      child: Checkbox(
                                        activeColor: appColor,
                                        value: filterProvider.listOfCheckBoxValues[2],
                                        onChanged: (bool? value) {
                                          setState(() {
                                            filterProvider.  listOfCheckBoxValues[2] = value!;
                                          });
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
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                    child: Text(
                                      filterProvider.listOfBrands[3],
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
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                    // frame311m9 (202:1174)
                                    width: 20 * fem,
                                    height: 20 * fem,
                                    child: Checkbox(
                                      activeColor: appColor,
                                      value:filterProvider. listOfCheckBoxValues[3],
                                      onChanged: (bool? value) {
                                        setState(() {
                                          filterProvider. listOfCheckBoxValues[3] = value!;
                                        });
                                      },
                                    ),
                                  ),
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
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                    child: Text(
                                      filterProvider. listOfBrands[4],
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
                                      child: Checkbox(
                                        activeColor: appColor,
                                        value: filterProvider.listOfCheckBoxValues[4],
                                        onChanged: (bool? value) {
                                          // Provider.of<Filter>(context)
                                          //     .toggleCheckListItem(4, value!);
                                          setState(() {
                                            filterProvider.listOfCheckBoxValues[4] = value!;
                                          });
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
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                    child: Text(
                                      filterProvider.listOfBrands[5],
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
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                    // frame311m9 (202:1174)
                                    width: 20 * fem,
                                    height: 20 * fem,
                                    child: Checkbox(
                                      activeColor: appColor,
                                      value: filterProvider.listOfCheckBoxValues[5],
                                      onChanged: (bool? value) {
                                        // Provider.of<Filter>(context)
                                        //     .toggleCheckListItem(5, value!);
                                        setState(() {
                                          filterProvider.  listOfCheckBoxValues[5] = value!;
                                        });
                                      },
                                    ),
                                  ),
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
              ],
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
    var filterProvider=Provider.of<Filter>(context,listen: false);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // print('List of brands ${listOfBrands.length}');
        // print('List of value ${listOfCheckBoxValues.length}');
        return StatefulBuilder(
          builder:
              (BuildContext context, void Function(void Function()) setState) {
                var filterProvider=Provider.of<Filter>(context,listen: false);
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
                      title:Consumer<Filter>(
                        builder: (context, filterProvider, child) {
                          return Text(
                            filterProvider.listOfBrands[index],
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2175 * ffem / fem,
                              letterSpacing: 0.200000003 * fem,
                              color: Color(0xff143463),
                            ),
                          );
                        },
                      ),
                      value:filterProvider. listOfCheckBoxValues[index],
                      onChanged: (bool? value) {

                          filterProvider.toggleCheckBox(index,value! );
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
