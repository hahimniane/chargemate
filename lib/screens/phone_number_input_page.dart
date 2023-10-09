import 'package:chargemate/screens/registration/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import '../constants/constants.dart';
import '../modals/phoneNumberInputViewModel.dart';
import '../service/phone_number_formatter.dart';
import '../utils/show_toat_util.dart';

class PhoneNumberInputPage extends StatefulWidget {
  PhoneNumberInputPage({Key? key}) : super(key: key);

  @override
  State<PhoneNumberInputPage> createState() => _PhoneNumberInputPageState();
}

class _PhoneNumberInputPageState extends State<PhoneNumberInputPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _phoneNumberController = TextEditingController();
  final PhoneNumberInputViewModel _viewModel = PhoneNumberInputViewModel();
  final RoundedLoadingButtonController _loadingButtonController =
      RoundedLoadingButtonController();

  late String plainNumberWithCode;
  String countryCode = '+90';
  late String _phoneNumber;

  bool checkBoxValue = false;

  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var inputDecoration = InputDecoration(
      isCollapsed: false,
      contentPadding: EdgeInsets.all(10),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      labelText: 'Telefon Numarası',
    );
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: Color(0xffDEEBE9),
        body: SafeArea(
          top: true,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.03,
                // color: Color(0xffDEEBE9),
                width: MediaQuery.of(context).size.width * 0.50,
                child: Image(
                  fit: BoxFit.scaleDown,
                  image: AssetImage('assets/images/logos/img.png'),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.30,
                width: double.infinity,
                decoration: const BoxDecoration(
                    // color: Color(0xffDEEBE9),
                    ),
                child: const Image(
                  image: AssetImage('assets/images/Asset 1 1.png'),
                  fit: BoxFit.scaleDown,
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0, bottom: 30),
                        child: Text(
                          'Lütfen Telefon Numarınızı Giriniz!',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: appColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Text(
                        'Size tek seferlik bir\ndoğrulama kodu göndereceğiz!',
                        style: TextStyle(
                          color: Color(0xff143463),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(width: 10),
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey, width: 1),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Image(
                                            image: AssetImage(
                                              'assets/images/tr.png',
                                            ),
                                            height: 28,
                                            width: 28,
                                            fit: BoxFit.scaleDown,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            '+90',
                                            style: TextStyle(),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    // color: Colors.blue,
                                    height: 50,
                                    child: TextFormField(
                                      onChanged: (value) {
                                        if (value.length > 12) {
                                          _phoneNumberController.text =
                                              value.substring(0, 10);
                                          _phoneNumberController.selection =
                                              TextSelection.fromPosition(
                                            TextPosition(
                                                offset: _phoneNumberController
                                                    .text.length),
                                          );
                                          print('Only 10 values allowed.');
                                        }
                                      },
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(12),
                                        FilteringTextInputFormatter.digitsOnly,
                                        PhoneNumberFormatter(),
                                      ],
                                      controller: _phoneNumberController,
                                      keyboardType:
                                          TextInputType.numberWithOptions(),
                                      decoration: inputDecoration,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          print('entere here');
                                          setState(() {
                                            inputDecoration = InputDecoration(
                                              isCollapsed: false,
                                              contentPadding:
                                                  EdgeInsets.all(10),
                                              labelText: 'Telefon Numarası',
                                            );
                                          });
                                          return 'Please enter a phone number';
                                        }

                                        value = extractPlainNumber(value);
                                        print('the value is $value');

                                        final phoneRegex = RegExp(r'^\d{10}$');
                                        if (!phoneRegex.hasMatch(value)) {
                                          print(value);
                                          return 'Please enter a valid phone number without the country code';
                                        }
                                        return null;
                                      },
                                      onSaved: (value) {
                                        value = extractPlainNumber(value!);
                                        print('this is the value $value');
                                        _phoneNumber = value;
                                        // print(
                                        //     'the phone controller is $phoneNumberController');
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10)
                              ],
                            ),
                            SizedBox(height: 10),
                            // Padding(
                            //   padding: const EdgeInsets.all(8.0),
                            //   child: Container(
                            //     height: 50,
                            //     width:
                            //     MediaQuery.of(context).size.width * 0.98,
                            //     child: TextFormField(
                            //       controller: passwordController,
                            //       obscureText:
                            //       true, // To hide the entered password
                            //       decoration: InputDecoration(
                            //         border: OutlineInputBorder(
                            //           borderRadius: BorderRadius.circular(
                            //               10.0), // Set the border radius
                            //         ),
                            //         labelText: 'Şifre', // Optional label text
                            //         hintText:
                            //         'Enter your password', // Optional hint text
                            //       ),
                            //       validator: (value) {
                            //         if (value!.isEmpty) {
                            //           return 'please enter a valid password';
                            //         }
                            //
                            //         value = extractPlainNumber(value);
                            //         print('the value is $value');
                            //
                            //         RegExp passwordRegex =
                            //         RegExp(r'^(?=.{8,}$).*$');
                            //         if (!passwordRegex.hasMatch(value)) {
                            //           print(value);
                            //           return 'Please enter a valid password. minimum 8 characters';
                            //         }
                            //         return null;
                            //       },
                            //       onSaved: (value) {
                            //         value = extractPlainNumber(value!);
                            //         print('this is the value $value');
                            //         _password = value;
                            //         // print(
                            //         //     'the phone controller is $phoneNumberController');
                            //       },
                            //     ),
                            //   ),
                            // )
                          ],
                        ),
                      ),
                      // Form(
                      //   key: _formKey,
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //       SizedBox(width: 10),
                      //       Expanded(
                      //         child: Container(
                      //           height: 50,
                      //           decoration: BoxDecoration(
                      //             border:
                      //                 Border.all(color: Colors.grey, width: 1),
                      //             borderRadius: BorderRadius.circular(8),
                      //           ),
                      //           child: Padding(
                      //             padding: const EdgeInsets.all(8.0),
                      //             child: Row(
                      //               children: [
                      //                 Image(
                      //                   image:
                      //                       AssetImage('assets/images/tr.png'),
                      //                   height: 28,
                      //                   width: 28,
                      //                   fit: BoxFit.scaleDown,
                      //                 ),
                      //                 SizedBox(width: 5),
                      //                 Text(
                      //                   '+90',
                      //                   style: TextStyle(),
                      //                 ),
                      //               ],
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //       SizedBox(width: 16),
                      //       Expanded(
                      //         flex: 2,
                      //         child: Container(
                      //           height: 50,
                      //           child: TextFormField(
                      //             onChanged: (value) {
                      //               if (value.length > 12) {
                      //                 _phoneNumberController.text =
                      //                     value.substring(0, 10);
                      //                 _phoneNumberController.selection =
                      //                     TextSelection.fromPosition(
                      //                   TextPosition(
                      //                     offset: _phoneNumberController
                      //                         .text.length,
                      //                   ),
                      //                 );
                      //                 print('Only 10 values allowed.');
                      //               }
                      //             },
                      //             inputFormatters: [
                      //               LengthLimitingTextInputFormatter(12),
                      //               FilteringTextInputFormatter.digitsOnly,
                      //               PhoneNumberFormatter(),
                      //             ],
                      //             controller: _phoneNumberController,
                      //             keyboardType: TextInputType.number,
                      //             decoration: InputDecoration(
                      //               isCollapsed: false,
                      //               contentPadding: EdgeInsets.all(10),
                      //               border: OutlineInputBorder(
                      //                 borderRadius: BorderRadius.circular(8),
                      //               ),
                      //               labelText: 'Telefon Numarası',
                      //             ),
                      //             validator: (value) {
                      //               if (value!.isEmpty) {
                      //                 return 'Please enter a phone number';
                      //               }
                      //               final phoneRegex = RegExp(r'^\d{10}$');
                      //               if (!phoneRegex.hasMatch(value)) {
                      //                 return 'Please enter a valid phone number without the country code';
                      //               }
                      //               return null;
                      //             },
                      //           ),
                      //         ),
                      //       ),
                      //       SizedBox(width: 10),
                      //     ],
                      //   ),
                      // ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Checkbox(
                              value: checkBoxValue,
                              onChanged: (value) {
                                setState(() {
                                  checkBoxValue = value!;
                                });
                              }),
                          Expanded(
                            child: GestureDetector(
                              onTap: () => _dialogBuilder(context),
                              child: Text(
                                'Devam ederek şartlar ve Gizlilik Sözleşmesini kabul etmiş olursunuz.',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  color: appColor,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            // Expanded(
                            //   child: const Padding(
                            //     padding: EdgeInsets.all(8.0),
                            //     child: Text(
                            //       'Şarj işlemini hızlıca başlatmanız ve rezervasyon işlemlerinizi yapmanız için telefon numaranızı onaylatmanız gereklidir.',
                            //       textAlign: TextAlign.center,
                            //       style: TextStyle(
                            //         color: Color(0xff64748B),
                            //         fontWeight: FontWeight.w400,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 4,
                                right: 8,
                                left: 8,
                                top: 30,
                              ),
                              child: RoundedLoadingButton(
                                borderRadius: 12,
                                width: MediaQuery.of(context).size.width * 0.90,
                                color: appColor,
                                onPressed: () async {
                                  _loadingButtonController.start();
                                  print('here');
                                  if (_formKey.currentState!.validate()) {
                                    print('in here');
                                    _formKey.currentState!.save();
                                    if (checkBoxValue) {
                                      plainNumberWithCode = countryCode +
                                          extractPlainNumber(_phoneNumber);

                                      print('came all the way here');
                                      try {
                                        PhoneNumberInputViewModel _viewModel =
                                            PhoneNumberInputViewModel();

                                        print(
                                            'this is the phone number $_phoneNumber');
                                        await _viewModel.registerUser(
                                            context, plainNumberWithCode);
                                      } on Exception catch (e) {
                                        print(e.toString());
                                        Fluttertoast.showToast(
                                            msg: e.toString(),
                                            backgroundColor: Colors.white,
                                            textColor: Colors.red);
                                        _loadingButtonController.reset();
                                      }
                                    } else {
                                      Fluttertoast.showToast(
                                        backgroundColor: Colors.white,
                                        textColor: Colors.red,
                                        msg:
                                            'Lütfen şartları ve gizlilik politikasını onaylayın',
                                        gravity: ToastGravity.CENTER,
                                      );
                                    }

                                    _loadingButtonController.reset();
                                  } else {
                                    _loadingButtonController.reset();
                                  }
                                },
                                // onPressed: () async {
                                //   if (_formKey.currentState!.validate()) {
                                //     final phoneNumber =
                                //         '+90' + _phoneNumberController.text;
                                //     print('the phone number is $phoneNumber');
                                //     final numberExists = await _viewModel
                                //         .checkIfNumberExists(phoneNumber);
                                //
                                //     _viewModel.registerUser(
                                //         context, phoneNumber);
                                //   } else {
                                //     _loadingButtonController.error();
                                //     _loadingButtonController.reset();
                                //   }
                                // },
                                controller: _loadingButtonController,
                                child: const Text(
                                  'Kodu Gönder',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Hesabınız var mi?',
                                  style: TextStyle(color: appColor),
                                ),
                                TextButton(
                                  onPressed: () async {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LoginPage(
                                                isComingFromHomeScreen:
                                                    false)));
                                  },
                                  child: Text(
                                    'Giriş Yap',
                                    style: TextStyle(color: appColor),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _phoneNumberController.dispose();
    _loadingButtonController.reset();
    super.dispose();
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: ClipRRect(
            borderRadius: BorderRadius.circular(
                10.0), // Set the desired border radius here
            child: SfPdfViewer.network(
              'https://www.termsfeed.com/public/uploads/2021/12/sample-privacy-policy-template.pdf',
              key: _pdfViewerKey,
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Kapat'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
