import 'package:chargemate/figma/utils.dart';
import 'package:chargemate/modals/electric_store.dart';
import 'package:chargemate/modals/model_stations.dart';
import 'package:chargemate/service/firebase_servies.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../constants/constants.dart';
import '../service/comment_api_services.dart';

class AddCommentPage extends StatefulWidget {
  final ElectricStore electricStore;
  final ElectricStation station;
  AddCommentPage(
      {super.key, required this.electricStore, required this.station});

  @override
  State<AddCommentPage> createState() => _AddCommentPageState();
}

class _AddCommentPageState extends State<AddCommentPage> {
  var _selectedChargeStatus = "Bsşarılı";
  var selectedValue = 0;
  String _selectedChargeType = 'CHAdeMo';

  bool isActive = true;

  bool optionOne = true;
  bool optionTwo = false;
  bool optionThree = false;
  bool optionFour = false;

  ScrollController _scrollController = ScrollController();
  GlobalKey targetWidgetKey = GlobalKey();

  FocusNode _focusNode = FocusNode();

  RoundedLoadingButtonController sendButtonController =
      RoundedLoadingButtonController();

  TextEditingController chargingTimeController = TextEditingController();

  TextEditingController maxKwController = TextEditingController();

  TextEditingController amountController = TextEditingController();

  int _rating = 0;

  TextEditingController commentController = TextEditingController();

  int maxWords = 3;
  // Callback function to update the selected charge type
  void _updateSelectedChargeType(String chargeType) {
    setState(() {
      _selectedChargeType = chargeType;
    });
  }

  @override
  Widget build(BuildContext context) {
    EdgeInsets padding = MediaQuery.of(context).padding;
    double availableHeight =
        MediaQuery.of(context).size.height - padding.top - padding.bottom;
    double screenWidth = MediaQuery.of(context).size.width;

    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    print(MediaQuery.of(context).size.height);
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
            child: SingleChildScrollView(
          controller: _scrollController,
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: availableHeight * 0.0289),
                width: double.infinity,
                // color: Colors.blue,
                child: Column(
                  children: [
                    Container(
                      // color: Colors.blue,
                      child: Image(
                        image: AssetImage('assets/images/logos/img.png'),
                        width: screenWidth * 0.533,
                        height: availableHeight * 0.0346,
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
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
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.10,
                              // right: screenWidth * 0.03
                            ),
                            // color: appColor,
                            child: FittedBox(
                              child: Text(
                                widget.electricStore.name,
                                style: GoogleFonts.montserrat(
                                    color: appColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: DefaultTextStyle.of(context)
                                            .style
                                            .fontSize! *
                                        0.39),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                height: availableHeight * 0.1531,
              ),
              Container(
                decoration: BoxDecoration(
                  // color: Colors.blue,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ChargeTypeContainer(
                      availableHeight: availableHeight,
                      screenWidth: screenWidth,
                      onTap: () {},
                      imageUrl: 'assets/images/img_1.png',
                      label: 'CHAdeMo',
                      isSelected: _selectedChargeType == 'CHAdeMo',
                      onSelectionChanged: (isSelected) {
                        if (isSelected) {
                          _updateSelectedChargeType('CHAdeMo');
                        }
                      },
                      imageFit: BoxFit.contain,
                    ),
                    ChargeTypeContainer(
                      availableHeight: availableHeight,
                      screenWidth: screenWidth,
                      onTap: () {
                        print('tapped container two');
                      },
                      imageUrl: 'assets/images/img_3.png',
                      label: 'CCS',
                      isSelected: _selectedChargeType ==
                          'CCS', // Check if it's selected
                      onSelectionChanged: (isSelected) {
                        if (isSelected) {
                          _updateSelectedChargeType('CCS');
                        }
                      },
                      imageFit: BoxFit.cover,
                    ),
                    ChargeTypeContainer(
                      availableHeight: availableHeight,
                      screenWidth: screenWidth,
                      onTap: () {
                        print('tapped container two');
                      },
                      imageUrl: 'assets/images/img_3.png',
                      label: 'Type 2',
                      isSelected: _selectedChargeType ==
                          'Type 2', // Check if it's selected
                      onSelectionChanged: (isSelected) {
                        if (isSelected) {
                          _updateSelectedChargeType('Type 2');
                        }
                      },
                      imageFit: BoxFit.cover,
                    ),
                  ],
                ),
                width: screenWidth * 0.92,
                // color: Colors.greenAccent,
                height: availableHeight * 0.1136,
                margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
              ),
              Container(
                // color: Colors.brown,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin:
                            EdgeInsets.only(bottom: availableHeight * 0.0192),
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Text(
                            'İşlem Durumu:',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w700, color: appColor),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            // color: Colors.blue,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isActive = !isActive;
                                      });
                                    },
                                    child: Container(
                                      height: availableHeight * 0.0192,
                                      width: screenWidth * 0.0533,
                                      child: Radio(
                                        value: 'Bsşarılı',
                                        groupValue: _selectedChargeStatus,
                                        onChanged: (value) {
                                          setState(() {
                                            _selectedChargeStatus = value!;
                                          });
                                        },
                                      ),
                                    )
                                    // Container(
                                    //   height: availableHeight * 0.0192,
                                    //   width: screenWidth * 0.0533,
                                    //   // child: Text('hi'),
                                    //   decoration: BoxDecoration(
                                    //     border: Border,
                                    //     shape: BoxShape.circle,
                                    //     color: isActive ? appColor : Colors.white,
                                    //   ),
                                    // ),
                                    ),
                                SizedBox(
                                  width: screenWidth * 0.01,
                                ),
                                Text(
                                  'Bsşarılı',
                                  style: GoogleFonts.montserrat(
                                    color: appColor,
                                    fontWeight: FontWeight.w500,
                                    // height: 17.07,
                                    letterSpacing: 0.2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: availableHeight * 0.0192,
                                width: screenWidth * 0.0533,
                                child: Radio(
                                  value: 'Failed to charge',
                                  groupValue: _selectedChargeStatus,
                                  onChanged: (value) {
                                    setState(() {
                                      _selectedChargeStatus = value!;
                                    });
                                  },
                                ),
                                // child: Text('hi'),
                                // decoration: BoxDecoration(
                                //   shape: BoxShape.circle,
                                //   color: appColor,
                                // ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.01,
                              ),
                              Container(
                                // color: Colors.orange,
                                child: Text(
                                  'Başarısız',
                                  style: GoogleFonts.montserrat(
                                    color: appColor,
                                    fontWeight: FontWeight.w500,
                                    // height: 17.07,
                                    letterSpacing: 0.2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                // color: Colors.brown,
                width: screenWidth * 0.92,
                height: availableHeight * 0.1040,
                margin: EdgeInsets.only(top: availableHeight * 0.0193),
              ),
              Visibility(
                visible: _selectedChargeStatus == 'Bsşarılı' ? true : false,
                child: Container(
                  // color: Colors.greenAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FittedBox(
                                  child: Text(
                                    'Şarj Süre :',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: appColor,
                                      // height: 24,
                                      // letterSpacing: 0.10000000149011612,
                                    ),
                                  ),
                                ),
                                // Text(
                                //   ':',
                                //   style: GoogleFonts.montserrat(
                                //     fontSize: 16,
                                //     fontWeight: FontWeight.w700,
                                //     color: appColor,
                                //     // height: 24,
                                //     // letterSpacing: 0.10000000149011612,
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: TextField(
                                keyboardType: TextInputType.number,
                                controller: chargingTimeController,
                                style: GoogleFonts.montserrat(
                                    color: appColor, fontSize: 14),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 0.0),
                                  // border: OutlineInputBorder(),
                                  // hintText: '....:',
                                  hintStyle: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: appColor,
                                    // height: 24,
                                    // letterSpacing: 0.10000000149011612,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Max KW',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: appColor,
                                    // height: 24,
                                    // letterSpacing: 0.10000000149011612,
                                  ),
                                ),
                                Text(
                                  ':',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: appColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: TextField(
                                keyboardType: TextInputType.number,
                                controller: maxKwController,
                                style: GoogleFonts.montserrat(
                                    color: appColor, fontSize: 14),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 0.0),
                                  hintStyle: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: appColor,
                                    // height: 24,
                                    // letterSpacing: 0.10000000149011612,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Miktar',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: appColor,
                                    // height: 24,
                                    // letterSpacing: 0.10000000149011612,
                                  ),
                                ),
                                Text(
                                  ':',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: appColor,
                                    // height: 24,
                                    // letterSpacing: 0.10000000149011612,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: TextField(
                                keyboardType: TextInputType.number,
                                controller: amountController,
                                style: GoogleFonts.montserrat(
                                    color: appColor, fontSize: 14),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 0.0),
                                  // border: OutlineInputBorder(),
                                  // hintText: '....:',
                                  hintStyle: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: appColor,
                                    // height: 24,
                                    // letterSpacing: 0.10000000149011612,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                    ],
                  ),
                  // color: Colors.yellow,
                  width: screenWidth * 0.92,
                  height: availableHeight * 0.1577,
                ),
              ),
              //Container for the four options.
              Visibility(
                visible: _selectedChargeStatus != 'Bsşarılı' ? true : false,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: screenWidth * 0.0613),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                optionOne = true;
                                optionTwo = false;
                                optionThree = false;
                                optionFour = false;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: availableHeight * 0.007),
                              decoration: BoxDecoration(
                                  border: Border.all(color: appColor),
                                  color: optionOne ? appColor : Colors.white),
                              height: availableHeight * 0.0376,
                              width: screenWidth * 0.312,
                              // color: Colors.red,
                              child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'Option 1',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,

                                      color:
                                          optionOne ? Colors.white : appColor,
                                      fontWeight: FontWeight.w600,
                                      // height: 17.07,
                                      letterSpacing: 0.2,
                                    ),
                                  )),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                optionOne = false;
                                optionTwo = true;
                                optionThree = false;
                                optionFour = false;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: availableHeight * 0.007),
                              decoration: BoxDecoration(
                                  color: optionTwo ? appColor : Colors.white,
                                  border: Border.all(color: appColor)),
                              height: availableHeight * 0.0376,
                              width: screenWidth * 0.312,
                              // color: Colors.red,
                              child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'Option 2',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,

                                      color:
                                          optionTwo ? Colors.white : appColor,
                                      fontWeight: FontWeight.w600,
                                      // height: 17.07,
                                      letterSpacing: 0.2,
                                    ),
                                  )),
                            ),
                          ),
                          // Container(
                          //   height: availableHeight * 0.0376,
                          //   width: screenWidth * 0.312,
                          //   color: Colors.blue,
                          // )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                optionOne = false;
                                optionTwo = false;
                                optionThree = true;
                                optionFour = false;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: availableHeight * 0.007),
                              decoration: BoxDecoration(
                                  color: optionThree ? appColor : Colors.white,
                                  border: Border.all(color: appColor)),
                              height: availableHeight * 0.0376,
                              width: screenWidth * 0.312,
                              // color: Colors.red,
                              child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'option 3',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,

                                      color:
                                          optionThree ? Colors.white : appColor,
                                      fontWeight: FontWeight.w600,
                                      // height: 17.07,
                                      letterSpacing: 0.2,
                                    ),
                                  )),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                optionOne = false;
                                optionTwo = false;
                                optionThree = false;
                                optionFour = true;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: availableHeight * 0.007),
                              decoration: BoxDecoration(
                                  color: optionFour ? appColor : Colors.white,
                                  border: Border.all(color: appColor)),
                              height: availableHeight * 0.0376,
                              width: screenWidth * 0.312,
                              // color: Colors.red,
                              child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    'option 4',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,

                                      color:
                                          optionFour ? Colors.white : appColor,
                                      fontWeight: FontWeight.w600,
                                      // height: 17.07,
                                      letterSpacing: 0.2,
                                    ),
                                  )),
                            ),
                          ),
                          // Container(
                          //   height: availableHeight * 0.0376,
                          //   width: screenWidth * 0.312,
                          //   color: Colors.blue,
                          // )
                        ],
                      ),
                    ],
                  ),
                  // color: Colors.purple,
                  width: MediaQuery.of(context).size.width * 0.92,
                  height: availableHeight * 0.0972,
                ),
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(vertical: availableHeight * 0.0145),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      child: Text(
                        'Bu İstasyonu nasıl değerlendiriyorsunuz?',
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 16,

                          color: appColor,
                          fontWeight: FontWeight.w600,
                          // height: 17.07,
                          letterSpacing: 0.2,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // height: availableHeight * 0.0231,
                        margin: EdgeInsets.only(top: availableHeight * 0.0145),
                        // color: Colors.blue,
                        child: RatingStars(
                          initialRating: 0,
                          onRatingChanged: (int rating) {
                            print('New rating: $rating');
                            setState(() {
                              _rating = rating;
                            });
                          },
                        ),
                      ),
                    )
                  ],
                ),
                // color: Colors.orange,
                width: MediaQuery.of(context).size.width * 0.92,
                height: availableHeight * 0.1029,
              ),
              Container(
                // color: Colors.yellow,
                padding: EdgeInsets.only(top: availableHeight * 0.0145),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                              //   margin:
                              // EdgeInsets.only(right: screenWidth * 0.04),
                              height: availableHeight * 0.2029,
                              // width: screenWidth * 0.88,
                              decoration: BoxDecoration(
                                  // color: Colors.blue,
                                  border: Border.all(color: appColor),
                                  borderRadius: BorderRadius.circular(8)),
                              child: TextField(
                                onChanged: (text) {
                                  // You can implement word count validation here if needed
                                  // For example, to prevent exceeding the word limit:
                                  if (_countWords(text) > maxWords) {
                                    setState(() {
                                      commentController.text =
                                          _truncateText(text, maxWords);
                                    });
                                  }
                                },
                                controller: commentController,
                                onTap: () {
                                  scrollToShowTextField();
                                },
                                focusNode: _focusNode,
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                style: GoogleFonts.montserrat(
                                    color: appColor,
                                    fontWeight: FontWeight.w500),
                                decoration: InputDecoration(
                                    hintStyle: GoogleFonts.montserrat(),
                                    hintText: 'Yorum yaz....',
                                    contentPadding: EdgeInsets.zero,
                                    border: InputBorder.none,
                                    fillColor: Colors.orange),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
                // color: Colors.green,
                width: MediaQuery.of(context).size.width * 0.92,

                height: availableHeight * 0.2568,
                // decoration: BoxDecoration(
                //   border: Border.all(color: appColor),
                // ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: availableHeight * 0.0077),
                  decoration: BoxDecoration(
                      // color: appColor,
                      borderRadius: BorderRadius.circular(8)),
                  width: MediaQuery.of(context).size.width * 0.92,
                  // height: availableHeight * 0.0385,
                  child: RoundedLoadingButton(
                    borderRadius: 8,
                    height: availableHeight * 0.0495,
                    color: appColor,
                    controller: sendButtonController,
                    onPressed: () async {
                      if (_selectedChargeStatus == 'Bsşarılı') {
                        // CommentClass.addComment(
                        //     headers: headers,
                        //     userId: auth.currentUser!.uid,
                        //     userFullName: 'hassimiou Test',
                        //     stationId: widget.station.id,
                        //     comment: commentController.text,
                        //     score: _rating);
                        print(
                            'the charging time is ${chargingTimeController.text}');
                        print('the max kw${maxKwController.text}');
                        print('the amount is  ${amountController.text}');
                      } else if (_selectedChargeStatus == 'Failed to charge') {}
                      if (_rating == 0) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.red,
                            content: Text('Lütfen istasyonu değerlendirin'),
                          ),
                        );
                      }

                      print(
                          'the selected charge type is ${_selectedChargeType}');
                      print('the rating from the button is $_rating');

                      sendButtonController.reset();
                    },
                    child: Center(
                        child: FittedBox(
                      fit: BoxFit.cover,
                      child: Text(
                        key: targetWidgetKey,
                        'Gönder',
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    )),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }

  void scrollToShowTextField() {
    final RenderBox renderBox =
        targetWidgetKey.currentContext!.findRenderObject() as RenderBox;
    final offset = renderBox.localToGlobal(Offset.zero);

    _scrollController.animateTo(
      offset.dy, // Y-coordinate of the target widget
      duration: Duration(milliseconds: 200), // Adjust the duration as needed
      curve: Curves.easeInOut, // Adjust the curve as needed
    );

    // Request focus on the TextField
    _focusNode.requestFocus();
  }

  int _countWords(String text) {
    if (text.isEmpty) return 0;
    return text.split(' ').length;
  }

  String _truncateText(String text, int maxWords) {
    List<String> words = text.split(' ');
    if (words.length <= maxWords) {
      return text;
    }
    words = words.sublist(0, maxWords);
    return words.join(' ');
  }
}

class ChargeTypeContainer extends StatefulWidget {
  const ChargeTypeContainer({
    Key? key,
    required this.availableHeight,
    required this.screenWidth,
    required this.onTap,
    required this.imageUrl,
    required this.label,
    required this.isSelected,
    required this.onSelectionChanged,
    required this.imageFit, // New callback
  }) : super(key: key);

  final bool isSelected;
  final double availableHeight;
  final double screenWidth;
  final VoidCallback onTap;
  final String imageUrl;
  final String label;
  final BoxFit imageFit;

  final ValueChanged<bool> onSelectionChanged; // New callback

  @override
  State<ChargeTypeContainer> createState() => _ChargeTypeContainerState();
}

class _ChargeTypeContainerState extends State<ChargeTypeContainer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          widget.onTap(); // Invoke the existing onTap callback
          widget.onSelectionChanged(!widget.isSelected); // Toggle isSelected
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: widget.screenWidth * 0.02),
          decoration: BoxDecoration(
            color: widget.isSelected ? appColor : Colors.white,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // color: Colors.yellow,
                height: widget.availableHeight * 0.0423,
                width: widget.screenWidth * 0.0423,
                child: Image(
                  fit: widget.imageFit,
                  image: AssetImage(widget.imageUrl),
                  height: widget.availableHeight * 0.0423,
                  width: widget.screenWidth * 0.0423,
                  color: widget.isSelected ? Colors.white : appColor,
                ),
              ),
              Container(
                height: widget.availableHeight * 0.0144,
                child: FittedBox(
                  child: Text(
                    widget.label,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      color: widget.isSelected ? Colors.white : appColor,
                    ),
                  ),
                ),
              )
            ],
          ),
          width: widget.screenWidth * 0.4,
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
            color: Color(0xffFFB400),
            // size: 30,
          ),
        );
      }),
    );
  }
}

/* Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.20,
              // autogrouppwr1vJb (JGjuRVyM1TK8cZ17uePwR1)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 1 * fem),
              padding:
                  EdgeInsets.fromLTRB(15 * fem, 30 * fem, 15 * fem, 10 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.yellow,
                // color: Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    offset: Offset(0 * fem, 4 * fem),
                    blurRadius: 7 * fem,
                  ),
                ],
              ),
              child: Container(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Material(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          elevation: 1,
                          child: Icon(
                            Icons.arrow_back,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // width: MediaQuery.of(context).size.width * 0.85,
                      height: 30,
                      // profilehEo (251:1275)
                      margin:
                          EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                      child: Marquee(
                        text: widget.electricStore.name,
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 18 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2175 * ffem / fem,
                          color: Color(0xff143463),
                        ),
                      ),
                      color: Colors.brown,
                    ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.pop(context);
                    //   },
                    //   child: Container(
                    //     // group75913wzP (251:1276)
                    //     margin: EdgeInsets.fromLTRB(
                    //         0 * fem, 0 * fem, 20 * fem, 0 * fem),
                    //     width: 48 * fem,
                    //     height: 48 * fem,
                    //     child: Image.asset(
                    //       'page-1/images/group-75913-Y9m.png',
                    //       // width: 10 * fem,
                    //       height: 48 * fem,
                    //     ),
                    //   ),
                    // ),
                    Container(
                      // autogrouphscfBtj (JGjuaaYYwUNYHZ3BXxHScf)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 20 * fem, 12 * fem),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Container(
                          //   // yataylogo1D4j (251:1284)
                          //   margin: EdgeInsets.fromLTRB(
                          //       0 * fem, 0 * fem, 0 * fem, 5.57 * fem),
                          //   width: 200 * fem,
                          //   height: 20.43 * fem,
                          //   child: Image.asset(
                          //     'page-1/images/yatay-logo-1-K5R.png',
                          //     fit: BoxFit.cover,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
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
                                  image: AssetImage('assets/images/img_1.png'),
                                  height: 10,
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
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedChargeType = 'AC';
                            });
                          },
                          child: Container(
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
                                  image: AssetImage('assets/images/img_3.png'),
                                  height: 5,
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
                        ),
                      ],
                    ),
                  ),
                ),

                Container(
                  color: Colors.red,
                  height: MediaQuery.of(context).size.height * 0.25,
                ),
                Container(
                  color: Colors.teal,
                  height: MediaQuery.of(context).size.height * 0.10,
                )
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Text(
                //     'Transaction Status:',
                //     style: SafeGoogleFont(
                //       'Montserrat',
                //       fontSize: 18 * ffem,
                //       fontWeight: FontWeight.w700,
                //       height: 1.2175 * ffem / fem,
                //       color: appColor,
                //     ),
                //   ),
                // ),
                // Row(
                //   mainAxisAlignment: _selectedChargeStatus == 'Charged'
                //       ? MainAxisAlignment.spaceBetween
                //       : MainAxisAlignment.spaceAround,
                //   children: <Widget>[
                //     Row(
                //       children: <Widget>[
                //         Radio<String>(
                //           value: 'Charged',
                //           groupValue: _selectedChargeStatus,
                //           onChanged: (value) {
                //             setState(() {
                //               _selectedChargeStatus = value!;
                //             });
                //           },
                //         ),
                //         Text(
                //           'Başarılı',
                //           style: SafeGoogleFont(
                //             'Montserrat',
                //             fontSize: 18 * ffem,
                //             fontWeight: FontWeight.w400,
                //             height: 1.2175 * ffem / fem,
                //             color: appColor,
                //           ),
                //         ),
                //       ],
                //     ),
                //     Row(
                //       children: <Widget>[
                //         Radio<String>(
                //           value: 'Failed to Charge',
                //           groupValue: _selectedChargeStatus,
                //           onChanged: (value) {
                //             setState(() {
                //               _selectedChargeStatus = value!;
                //             });
                //           },
                //         ),
                //         Text(
                //           'Başarısız',
                //           style: SafeGoogleFont(
                //             'Montserrat',
                //             fontSize: 18 * ffem,
                //             fontWeight: FontWeight.w400,
                //             height: 1.2175 * ffem / fem,
                //             color: appColor,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ],
                // ),
                // _selectedChargeStatus == 'Charged'
                //     ? Padding(
                //         padding: const EdgeInsets.only(left: 8.0),
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             Padding(
                //               padding: const EdgeInsets.all(8.0),
                //               // padding: const EdgeInsets.fromLTRB(16,8,0,8),
                //               child: Text(
                //                 'Şarj süresi:',
                //                 style: SafeGoogleFont(
                //                   'Montserrat',
                //                   fontSize: 18 * ffem,
                //                   fontWeight: FontWeight.w700,
                //                   height: 1.2175 * ffem / fem,
                //                   color: appColor,
                //                 ),
                //               ),
                //             ),
                //             Padding(
                //               padding: const EdgeInsets.all(8.0),
                //               child: Text(
                //                 'Max Kw:',
                //                 style: SafeGoogleFont(
                //                   'Montserrat',
                //                   fontSize: 18 * ffem,
                //                   fontWeight: FontWeight.w700,
                //                   height: 1.2175 * ffem / fem,
                //                   color: appColor,
                //                 ),
                //               ),
                //             ),
                //             Padding(
                //               padding: const EdgeInsets.all(8.0),
                //               child: Text(
                //                 'Miktar:',
                //                 style: SafeGoogleFont(
                //                   'Montserrat',
                //                   fontSize: 18 * ffem,
                //                   fontWeight: FontWeight.w700,
                //                   height: 1.2175 * ffem / fem,
                //                   color: appColor,
                //                 ),
                //               ),
                //             ),
                //           ],
                //         ),
                //       )
                //     : Column(
                //         children: [
                //           Row(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: [
                //               Container(
                //                 height: 45,
                //                 width: 117,
                //                 margin:
                //                     EdgeInsets.fromLTRB(12, 15, 12, 15),
                //                 decoration: BoxDecoration(
                //                   border: Border.all(color: appColor),
                //                   borderRadius: BorderRadius.circular(4),
                //                   // color: appColor,
                //                 ),
                //                 child: TextButton(
                //                   onPressed: () {
                //                     setState(() {
                //                       selectedValue = 0;
                //                     });
                //                   },
                //                   style: TextButton.styleFrom(
                //                     backgroundColor: selectedValue == 0
                //                         ? appColor
                //                         : Colors.transparent,
                //                     padding: EdgeInsets.symmetric(
                //                         vertical: 0, horizontal: 12),
                //                     shape: RoundedRectangleBorder(
                //                       borderRadius:
                //                           BorderRadius.circular(4),
                //                     ),
                //                   ),
                //                   child: Text(
                //                     'Option 1',
                //                     style: TextStyle(
                //                       fontSize: 14,
                //                       fontWeight: FontWeight.w400,
                //                       color: selectedValue == 0
                //                           ? Colors.white
                //                           : Colors.black,
                //                     ),
                //                   ),
                //                 ),
                //               ),
                //               SizedBox(
                //                   width:
                //                       20), // Add spacing between options
                //               Container(
                //                 height: 45,
                //                 width: 117,
                //                 margin:
                //                     EdgeInsets.fromLTRB(12, 15, 12, 15),
                //                 decoration: BoxDecoration(
                //                   border: Border.all(color: appColor),
                //                   borderRadius: BorderRadius.circular(4),
                //                   // color: appColor,
                //                 ),
                //                 child: TextButton(
                //                   onPressed: () {
                //                     setState(() {
                //                       selectedValue = 1;
                //                     });
                //                   },
                //                   style: TextButton.styleFrom(
                //                     backgroundColor: selectedValue == 1
                //                         ? appColor
                //                         : Colors.transparent,
                //                     padding: EdgeInsets.symmetric(
                //                         vertical: 0, horizontal: 12),
                //                     shape: RoundedRectangleBorder(
                //                       borderRadius:
                //                           BorderRadius.circular(4),
                //                     ),
                //                   ),
                //                   child: Text(
                //                     'Option 2',
                //                     style: TextStyle(
                //                       fontSize: 14,
                //                       fontWeight: FontWeight.w400,
                //                       color: selectedValue == 1
                //                           ? Colors.white
                //                           : Colors.black,
                //                     ),
                //                   ),
                //                 ),
                //               ),
                //             ],
                //           ),
                //           Row(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: [
                //               Container(
                //                 height: 45,
                //                 width: 117,
                //                 margin:
                //                     EdgeInsets.fromLTRB(12, 15, 12, 15),
                //                 decoration: BoxDecoration(
                //                   border: Border.all(color: appColor),
                //                   borderRadius: BorderRadius.circular(4),
                //                   // color: appColor,
                //                 ),
                //                 child: TextButton(
                //                   onPressed: () {
                //                     setState(() {
                //                       selectedValue = 2;
                //                     });
                //                   },
                //                   style: TextButton.styleFrom(
                //                     backgroundColor: selectedValue == 2
                //                         ? appColor
                //                         : Colors.transparent,
                //                     padding: EdgeInsets.symmetric(
                //                         vertical: 0, horizontal: 12),
                //                     shape: RoundedRectangleBorder(
                //                       borderRadius:
                //                           BorderRadius.circular(4),
                //                     ),
                //                   ),
                //                   child: Text(
                //                     'Option 3',
                //                     style: TextStyle(
                //                       fontSize: 14,
                //                       fontWeight: FontWeight.w400,
                //                       color: selectedValue == 2
                //                           ? Colors.white
                //                           : Colors.black,
                //                     ),
                //                   ),
                //                 ),
                //               ),
                //               SizedBox(
                //                   width:
                //                       20), // Add spacing between options
                //               Container(
                //                 height: 45,
                //                 width: 117,
                //                 margin:
                //                     EdgeInsets.fromLTRB(12, 15, 12, 15),
                //                 decoration: BoxDecoration(
                //                   border: Border.all(color: appColor),
                //                   borderRadius: BorderRadius.circular(4),
                //                   // color: appColor,
                //                 ),
                //                 child: TextButton(
                //                   onPressed: () {
                //                     setState(() {
                //                       selectedValue = 3;
                //                     });
                //                   },
                //                   style: TextButton.styleFrom(
                //                     backgroundColor: selectedValue == 3
                //                         ? appColor
                //                         : Colors.transparent,
                //                     padding: EdgeInsets.symmetric(
                //                         vertical: 0, horizontal: 12),
                //                     shape: RoundedRectangleBorder(
                //                       borderRadius:
                //                           BorderRadius.circular(4),
                //                     ),
                //                   ),
                //                   child: Text(
                //                     'Option 4',
                //                     style: TextStyle(
                //                       fontSize: 14,
                //                       fontWeight: FontWeight.w400,
                //                       color: selectedValue == 3
                //                           ? Colors.white
                //                           : Colors.black,
                //                     ),
                //                   ),
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ],
                //       ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   // padding: const EdgeInsets.fromLTRB(16,8,0,8),
                //   child: Text(
                //     'Bu İstasyonu nasıl değerlendiriyorsunuz?',
                //     style: SafeGoogleFont(
                //       'Montserrat',
                //       fontSize: 15 * ffem,
                //       fontWeight: FontWeight.w700,
                //       height: 1.2175 * ffem / fem,
                //       color: appColor,
                //     ),
                //   ),
                // ),
                // RatingStars(
                //   initialRating: 0,
                //   onRatingChanged: (int rating) {
                //     print('New rating: $rating');
                //   },
                // ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: TextField(
                //     maxLines: 2,
                //     decoration: InputDecoration(
                //         label: Text('Enter Comment'),
                //         border: OutlineInputBorder()),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(
                //       horizontal: 8.0, vertical: 5),
                //   child: TextButton(
                //       style: TextButton.styleFrom(
                //         backgroundColor: appColor,
                //       ),
                //       onPressed: () async {
                //         // Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCommentPage()));
                //       },
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Text(
                //             'Gönder',
                //             style: GoogleFonts.montserrat(
                //                 fontSize: 16,
                //                 color: Colors.white,
                //                 fontWeight: FontWeight.bold),
                //           ),
                //         ],
                //       )),
                // ),
              ],
            )
          ],
        ),*/
