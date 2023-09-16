import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';
import '../figma/page-1/profile-D1h.dart';
import '../figma/utils.dart';

class AddCommentPage extends StatefulWidget {
  const AddCommentPage({super.key});

  @override
  State<AddCommentPage> createState() => _AddCommentPageState();
}

class _AddCommentPageState extends State<AddCommentPage> {
  var _selectedChargeStatus = "Charged";

  var selectedValue = 0;

  String _selectedChargeType = 'DC';

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Container(
          width: double.infinity,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(20 * fem),
              // image: DecorationImage(
              //   fit: BoxFit.cover,
              //   image: AssetImage(
              //     'page-1/images/frame-33-dQK.png',
              //   ),
              // ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogrouppwr1vJb (JGjuRVyM1TK8cZ17uePwR1)
                  margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 1 * fem),
                  padding:
                      EdgeInsets.fromLTRB(15 * fem, 30 * fem, 15 * fem, 25 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x19000000),
                        offset: Offset(0 * fem, 4 * fem),
                        blurRadius: 7 * fem,
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          // group75913wzP (251:1276)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 56 * fem, 24 * fem, 0 * fem),
                          width: 48 * fem,
                          height: 48 * fem,
                          child: Image.asset(
                            'page-1/images/group-75913-Y9m.png',
                            width: 48 * fem,
                            height: 48 * fem,
                          ),
                        ),
                      ),
                      Container(
                        // autogrouphscfBtj (JGjuaaYYwUNYHZ3BXxHScf)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 25 * fem, 12 * fem),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // yataylogo1D4j (251:1284)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 33.57 * fem),
                              width: 200 * fem,
                              height: 36.43 * fem,
                              child: Image.asset(
                                'page-1/images/yatay-logo-1-K5R.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              // profilehEo (251:1275)
                              margin: EdgeInsets.fromLTRB(
                                  2 * fem, 0 * fem, 0 * fem, 0 * fem),
                              child: Text(
                                'ZES-Radisson Hotel',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 18 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2175 * ffem / fem,
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
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                  child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedChargeType = 'DC';
                                  });
                                },
                                child: Container(
                                  width: 160,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: appColor),
                                    borderRadius: BorderRadius.circular(10),
                                    color: _selectedChargeType == 'DC'
                                        ? appColor
                                        : Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image(
                                        image:
                                            AssetImage('assets/images/img_1.png'),
                                        height: 30,
                                        color: _selectedChargeType == 'DC'
                                            ? Colors.white
                                            : appColor,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'DC CCS',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2175 * ffem / fem,
                                          color: _selectedChargeType == 'DC'
                                              ? Colors.white
                                              : appColor,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                              SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                  child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedChargeType = 'AC';
                                  });
                                },
                                child: Container(
                                  width: 160,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: appColor),
                                    borderRadius: BorderRadius.circular(10),
                                    color: _selectedChargeType == 'AC'
                                        ? appColor
                                        : Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image(
                                        image:
                                            AssetImage('assets/images/img_3.png'),
                                        height: 30,
                                        color: _selectedChargeType == 'AC'
                                            ? Colors.white
                                            : appColor,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'AC Type 2',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2175 * ffem / fem,
                                          color: _selectedChargeType == 'AC'
                                              ? Colors.white
                                              : appColor,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Transaction Status:',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2175 * ffem / fem,
                            color: appColor,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: _selectedChargeStatus == 'Charged'
                            ? MainAxisAlignment.spaceBetween
                            : MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Radio<String>(
                                value: 'Charged',
                                groupValue: _selectedChargeStatus,
                                onChanged: (value) {
                                  setState(() {
                                    _selectedChargeStatus = value!;
                                  });
                                },
                              ),
                              Text(
                                'Başarılı',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 18 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2175 * ffem / fem,
                                  color: appColor,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Radio<String>(
                                value: 'Failed to Charge',
                                groupValue: _selectedChargeStatus,
                                onChanged: (value) {
                                  setState(() {
                                    _selectedChargeStatus = value!;
                                  });
                                },
                              ),
                              Text(
                                'Başarısız',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 18 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2175 * ffem / fem,
                                  color: appColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      _selectedChargeStatus == 'Charged'
                          ? Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    // padding: const EdgeInsets.fromLTRB(16,8,0,8),
                                    child: Text(
                                      'Şarj süresi:',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 18 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2175 * ffem / fem,
                                        color: appColor,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Max Kw:',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 18 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2175 * ffem / fem,
                                        color: appColor,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Miktar:',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 18 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2175 * ffem / fem,
                                        color: appColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 117,
                                      margin: EdgeInsets.fromLTRB(12, 15, 12, 15),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: appColor),
                                        borderRadius: BorderRadius.circular(4),
                                        // color: appColor,
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {
                                            selectedValue = 0;
                                          });
                                        },
                                        style: TextButton.styleFrom(
                                          backgroundColor: selectedValue == 0
                                              ? appColor
                                              : Colors.transparent,
                                          padding: EdgeInsets.symmetric(
                                              vertical: 0, horizontal: 12),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                        ),
                                        child: Text(
                                          'Option 1',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: selectedValue == 0
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        width: 20), // Add spacing between options
                                    Container(
                                      height: 45,
                                      width: 117,
                                      margin: EdgeInsets.fromLTRB(12, 15, 12, 15),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: appColor),
                                        borderRadius: BorderRadius.circular(4),
                                        // color: appColor,
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {
                                            selectedValue = 1;
                                          });
                                        },
                                        style: TextButton.styleFrom(
                                          backgroundColor: selectedValue == 1
                                              ? appColor
                                              : Colors.transparent,
                                          padding: EdgeInsets.symmetric(
                                              vertical: 0, horizontal: 12),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                        ),
                                        child: Text(
                                          'Option 2',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: selectedValue == 1
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 117,
                                      margin: EdgeInsets.fromLTRB(12, 15, 12, 15),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: appColor),
                                        borderRadius: BorderRadius.circular(4),
                                        // color: appColor,
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {
                                            selectedValue = 2;
                                          });
                                        },
                                        style: TextButton.styleFrom(
                                          backgroundColor: selectedValue == 2
                                              ? appColor
                                              : Colors.transparent,
                                          padding: EdgeInsets.symmetric(
                                              vertical: 0, horizontal: 12),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                        ),
                                        child: Text(
                                          'Option 3',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: selectedValue == 2
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        width: 20), // Add spacing between options
                                    Container(
                                      height: 45,
                                      width: 117,
                                      margin: EdgeInsets.fromLTRB(12, 15, 12, 15),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: appColor),
                                        borderRadius: BorderRadius.circular(4),
                                        // color: appColor,
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {
                                            selectedValue = 3;
                                          });
                                        },
                                        style: TextButton.styleFrom(
                                          backgroundColor: selectedValue == 3
                                              ? appColor
                                              : Colors.transparent,
                                          padding: EdgeInsets.symmetric(
                                              vertical: 0, horizontal: 12),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                        ),
                                        child: Text(
                                          'Option 4',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: selectedValue == 3
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        // padding: const EdgeInsets.fromLTRB(16,8,0,8),
                        child: Text(
                          'Bu İstasyonu nasıl değerlendiriyorsunuz?',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 15 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2175 * ffem / fem,
                            color: appColor,
                          ),
                        ),
                      ),
                      RatingStars(initialRating: 0, onRatingChanged: (int rating) {
                        print('New rating: $rating');
                      },),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          maxLines: 2,
                          decoration: InputDecoration(

                            label: Text('Enter Comment'),
                            border: OutlineInputBorder(

                            )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: appColor,
                            ),
                            onPressed: () async {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCommentPage()));

                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Gönder',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),

                              ],
                            )),
                      ),


                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class RatingStars extends StatefulWidget {
  final int initialRating;
  final void Function(int rating) onRatingChanged;

  RatingStars({required this.initialRating, required this.onRatingChanged});

  @override
  _RatingStarsState createState() => _RatingStarsState();
}

class _RatingStarsState extends State<RatingStars> {
  int _rating = 0;

  @override
  void initState() {
    super.initState();
    _rating = widget.initialRating;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              _rating = index + 1;
              widget.onRatingChanged(_rating);
            });
          },
          child: Icon(
            _rating > index ? Icons.star : Icons.star_border,
            color: appColor,
            size: 30,
          ),
        );
      }),
    );
  }
}