// import 'package:chargemate/screens/home_screen.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:intl/intl.dart';
// import 'package:rounded_loading_button/rounded_loading_button.dart';
// import '../constants/constants.dart';
// import '../phone_auth_test.dart';
// import '../service/api_service.dart';
// import '../modals/model_stations.dart';
// import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
//
// class PhoneNumberInputPage extends StatefulWidget {
//   PhoneNumberInputPage({Key? key}) : super(key: key);
//
//   @override
//   State<PhoneNumberInputPage> createState() => _PhoneNumberInputPageState();
// }
//
// class _PhoneNumberInputPageState extends State<PhoneNumberInputPage> {
//   late String plainNumberWithCode;
//
//   var loadingButtonController = RoundedLoadingButtonController();
//
//   // String extractPlainNumber(String formattedNumber) {
//   //   return formattedNumber.replaceAll(RegExp(r'[^0-9+]'), '');
//   // }
//   String extractPlainNumber(String text) {
//     return text.replaceAll('-', '');
//   }
//
//   TextEditingController phoneNumberController = TextEditingController();
//   String countryCode = '+90';
//   late String _phoneNumber;
//   late String codePlusPhoneNumber;
//   // TextEditingController _codeController = TextEditingController();
//
//   Future registerUser(
//       {required BuildContext context, required String phoneNumber}) async {
//     FirebaseAuth _auth = FirebaseAuth.instance;
//     try {
//       _auth.verifyPhoneNumber(
//           phoneNumber: phoneNumber,
//           timeout: Duration(seconds: 120),
//           verificationCompleted: (AuthCredential authCredential) {
//             Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => HomeScreen(
//                           allStations: [],
//                         )));
//           },
//           verificationFailed: (FirebaseAuthException authException) {
//             print('in here');
//             // Fluttertoast.showToast(msg: authException.code);
//             // print(authException.message);
//           },
//           codeSent: (String verificationId, int? forceResendingToken) {
//             Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => PhoneVerificationPage(
//                           verificationId: verificationId,
//                           phoneNumber: plainNumberWithCode,
//                         )));
//
//             //show dialog to take input from the user
//             // showDialog(
//             //     context: context,
//             //     barrierDismissible: false,
//             //     builder: (context) => AlertDialog(
//             //           title: Text("Enter SMS Code"),
//             //           content: Column(
//             //             mainAxisSize: MainAxisSize.min,
//             //             children: <Widget>[
//             //               TextField(
//             //                 controller: _codeController,
//             //               ),
//             //             ],
//             //           ),
//             //           actions: <Widget>[
//             //             TextButton(
//             //               child: Text("Done"),
//             //               // textColor: Colors.white,
//             //               // color: Colors.redAccent,
//             //               onPressed: () {
//             //                 FirebaseAuth auth = FirebaseAuth.instance;
//             //
//             //                 String smsCode = _codeController.text.trim();
//             //
//             //                 PhoneAuthCredential _credential =
//             //                     PhoneAuthProvider.credential(
//             //                         verificationId: verificationId,
//             //                         smsCode: smsCode);
//             //                 auth
//             //                     .signInWithCredential(_credential)
//             //                     .then((result) async {
//             //                   Stations station = Stations();
//             //                   List<ElectricStation> allStations =
//             //                       await station.getStations(headers);
//             //
//             //                   Navigator.pushReplacement(
//             //                       context,
//             //                       MaterialPageRoute(
//             //                           builder: (context) => HomeScreen(
//             //                                 allStations: allStations,
//             //                               )));
//             //                 }).catchError((e) {
//             //                   print(e);
//             //                 });
//             //               },
//             //             )
//             //           ],
//             //         ));
//           },
//           codeAutoRetrievalTimeout: (String verificationId) {
//             verificationId = verificationId;
//             print(verificationId);
//             print("Timout");
//           });
//     } on FirebaseAuthException catch (e) {
//       print('in here');
//       // print(e.code);
//     }
//   }
//
//   final _formKey = GlobalKey<FormState>();
//
//   // TextEditingController phoneNumberController = TextEditingController();
//
//   bool isValid = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         top: false,
//         child: Column(
//           children: [
//             Expanded(
//               child: Container(
//                 decoration: const BoxDecoration(
//                   color: Color(0xffDEEBE9),
//                 ),
//                 height: MediaQuery.of(context).size.height / 2.367,
//                 child: const Image(
//                   image: AssetImage(
//                     'assets/images/Asset 1 1.png',
//                   ),
//                   fit: BoxFit.scaleDown,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 12.0, bottom: 30),
//               child: Text('OTP Verification',
//                   style: TextStyle(
//                       fontSize: 23,
//                       fontWeight: FontWeight.bold,
//                       color: appColor)),
//             ),
//             const Text(
//               'Charge Mate with OTP\n Verification: Safe & Easy!',
//               style: TextStyle(
//                   color: Color(0xff143463),
//                   fontWeight: FontWeight.w400,
//                   fontSize: 16),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 20),
//             // PhoneAuth(
//             //   formKey: _formKey,
//             //   phoneNumber: _phoneNumber,
//             // ),
//             Form(
//               key: _formKey,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SizedBox(width: 10),
//                   Expanded(
//                     child: Container(
//                       height: 50,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey, width: 1),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Row(
//                           children: [
//                             Image(
//                               image: AssetImage(
//                                 'assets/images/tr.png',
//                               ),
//                               height: 28,
//                               width: 28,
//                               fit: BoxFit.scaleDown,
//                             ),
//                             SizedBox(width: 5),
//                             Text(
//                               '+90',
//                               style: TextStyle(),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 16),
//                   Expanded(
//                     flex: 3,
//                     child: Container(
//                       height: 50,
//                       child: TextFormField(
//                         inputFormatters: [
//                           LengthLimitingTextInputFormatter(12),
//                           FilteringTextInputFormatter.digitsOnly,
//                           PhoneNumberFormatter(),
//                         ],
//                         controller: phoneNumberController,
//                         keyboardType: TextInputType.numberWithOptions(),
//                         decoration: InputDecoration(
//                           isCollapsed: false,
//                           contentPadding: EdgeInsets.all(10),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           labelText: 'Phone number',
//                         ),
//                         validator: (value) {
//                           if (value!.isEmpty) {
//                             return 'Please enter a phone number';
//                           }
//
//                           value = extractPlainNumber(value);
//                           print('the value is $value');
//
//                           final phoneRegex = RegExp(r'^\d{10}$');
//                           if (!phoneRegex.hasMatch(value)) {
//                             print(value);
//                             return 'Please enter a valid phone number without the country code';
//                           }
//                           return null;
//                         },
//                         onSaved: (value) {
//                           value = extractPlainNumber(value!);
//                           print('this is the value $value');
//                           _phoneNumber = value;
//                           // print(
//                           //     'the phone controller is $phoneNumberController');
//                         },
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 10)
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   const Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: Text(
//                       'We will send you a one-time\n password to this mobile number',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                           color: Color(0xff64748B),
//                           fontSize: 16,
//                           fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(
//                         bottom: 0.0, right: 8, left: 8, top: 10),
//                     child: RoundedLoadingButton(
//                       borderRadius: 12,
//                       width: MediaQuery.of(context).size.width * 0.90,
//                       color: appColor,
//                       // style: ElevatedButton.styleFrom(
//                       //   backgroundColor: appColor,
//                       // ),
//                       onPressed: () async {
//                         bool numberExists = false;
//                         loadingButtonController.start();
//                         if (_formKey.currentState!.validate()) {
//                           _formKey.currentState!.save();
//                           print('the _phoneNumber variable is $_phoneNumber');
//                           // print(
//                           //     'code with phone number $codePlusPhoneNumber');
//                           // String plainNumberWithCode = countryCode +
//                           //     extractPlainNumber(codePlusPhoneNumber);
//                           // print(
//                           //     'code with phone number $plainNumberWithCode');
//                           //
//                           // // codePlusPhoneNumber = _phoneNumber;
//                           // print(
//                           //     'this is the full number $codePlusPhoneNumber');
//                           // Navigator.push(
//                           //     context,
//                           //     MaterialPageRoute(
//                           //         builder: (context) => PhoneVerificationPage(
//                           //               phoneNumber: codePlusPhoneNumber!,
//                           //             )));
//                           plainNumberWithCode = countryCode + _phoneNumber;
//                           print(
//                               'this is the plain number $plainNumberWithCode');
//                           await firestore
//                               .collection('Users')
//                               .where('phone_number',
//                                   isEqualTo: plainNumberWithCode)
//                               .get()
//                               .then((value) {
//                             print('number with code $plainNumberWithCode');
//                             print('entered in here');
//                             if (value.docs.isEmpty) {
//                               print('doc is empty');
//                               setState(() {
//                                 numberExists = false;
//                               });
//                             } else {
//                               print('its not empty');
//                               setState(() {
//                                 numberExists = true;
//                               });
//                             }
//                           });
//                           if (numberExists) {
//                             showToast('Bu numara zaten kayıtlıdır giriş yap');
//                             print('the user is already in our database');
//                             // show a popup
//                           } else {
//                             // the number doesnt' exist in our database
//                             registerUser(
//                               context: context,
//                               phoneNumber: plainNumberWithCode,
//                             );
//                             print('the number doesn\'t exist in our database');
//                           }
//
//                           // extractPlainNumber(codePlusPhoneNumber);
//                         } else {
//                           loadingButtonController.reset();
//                         }
//                         loadingButtonController.reset();
//
//                         // Stations station = Stations();
//                         // List<ElectricStation>? myData =
//                         //     await station.getStations(headers);
//                         // print(myData);
//                         // Navigator.push(
//                         //     context,
//                         //     MaterialPageRoute(
//                         //         builder: (context) => HomeScreen(
//                         //               allStations: myData,
//                         //             )));
//                       },
//                       controller: loadingButtonController,
//                       child: const Text(
//                         'Send code',
//                         style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   @override
//   void initState() {
//     loadingButtonController.reset();
//     super.initState();
//   }
//
//   void showToast(String message) {
//     Fluttertoast.showToast(
//       msg: message,
//       toastLength: Toast.LENGTH_LONG,
//       gravity: ToastGravity.CENTER,
//       backgroundColor: Colors.red,
//       textColor: Colors.white,
//       fontSize: 16.0,
//     );
//   }
// }
//
// class PhoneNumberFormatter extends TextInputFormatter {
//   @override
//   TextEditingValue formatEditUpdate(
//     TextEditingValue oldValue,
//     TextEditingValue newValue,
//   ) {
//     if (newValue.text.length > 3 && newValue.text.length < 7) {
//       final formattedValue =
//           '${newValue.text.substring(0, 3)}-${newValue.text.substring(3)}';
//       return newValue.copyWith(
//         text: formattedValue,
//         selection: TextSelection.collapsed(offset: formattedValue.length),
//       );
//     } else if (newValue.text.length >= 7) {
//       final formattedValue =
//           '${newValue.text.substring(0, 3)}-${newValue.text.substring(3, 6)}-${newValue.text.substring(6)}';
//       return newValue.copyWith(
//         text: formattedValue,
//         selection: TextSelection.collapsed(offset: formattedValue.length),
//       );
//     }
//     return newValue;
//   }
// }
//
// // class PhoneAuth extends StatelessWidget {
// //   final GlobalKey<FormState> formKey;
// //
// //   TextEditingController phoneNumberController = TextEditingController();
// //   String countryCode = '+90';
// //   String? _phoneNumber;
// //   String? codePlusPhoneNumber;
// //
// //   PhoneAuth({Key? key, required this.formKey, required String phoneNumber})
// //       : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Form(
// //       key: formKey,
// //       child: Row(
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children: [
// //           SizedBox(width: 10),
// //           Expanded(
// //             child: Container(
// //               height: 60,
// //               decoration: BoxDecoration(
// //                 border: Border.all(color: Colors.grey, width: 1),
// //                 borderRadius: BorderRadius.circular(8),
// //               ),
// //               child: Padding(
// //                 padding: const EdgeInsets.all(8.0),
// //                 child: Row(
// //                   children: [
// //                     Image(
// //                       image: AssetImage(
// //                         'assets/images/tr.png',
// //                       ),
// //                       height: 28,
// //                       width: 28,
// //                       fit: BoxFit.scaleDown,
// //                     ),
// //                     SizedBox(width: 5),
// //                     Text(
// //                       '+90',
// //                       style: TextStyle(),
// //                     )
// //                   ],
// //                 ),
// //               ),
// //             ),
// //           ),
// //           SizedBox(width: 16),
// //           Expanded(
// //             flex: 2,
// //             child: TextFormField(
// //               controller: phoneNumberController,
// //               keyboardType: TextInputType.name,
// //               decoration: InputDecoration(
// //                 border: OutlineInputBorder(
// //                   borderRadius: BorderRadius.circular(8),
// //                 ),
// //                 labelText: 'Phone number',
// //               ),
// //               validator: (value) {
// //                 if (value!.isEmpty) {
// //                   return 'Please enter a phone number';
// //                 }
// //                 final phoneRegex = RegExp(r'^\d{10}$');
// //                 if (!phoneRegex.hasMatch(value)) {
// //                   print(value);
// //                   return 'Please enter a valid phone number starting with +90';
// //                 }
// //                 return null;
// //               },
// //               onSaved: (value) {
// //                 _phoneNumber = value;
// //               },
// //             ),
// //           ),
// //           SizedBox(width: 10)
// //         ],
// //       ),
// //     );
// //   }
// // }
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import '../constants/constants.dart';
import '../modals/phoneNumberInputViewModel.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                color: Colors.white,
                height: 36.43,
                width: 200,
                child: Image(
                  image: AssetImage('assets/images/logos/img.png'),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xffDEEBE9),
                ),
                height: MediaQuery.of(context).size.height / 2.367,
                child: const Image(
                  image: AssetImage(
                    'assets/images/Asset 1 1.png',
                  ),
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 30),
              child: Text(
                'OTP Verification',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: appColor,
                ),
              ),
            ),
            const Text(
              'Charge Mate with OTP\n Verification: Safe & Easy!',
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
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
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 50,
                      child: TextFormField(
                        controller: _phoneNumberController,
                        keyboardType: TextInputType.numberWithOptions(),
                        decoration: InputDecoration(
                          isCollapsed: false,
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          labelText: 'Phone number',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a phone number';
                          }
                          final phoneRegex = RegExp(r'^\d{10}$');
                          if (!phoneRegex.hasMatch(value)) {
                            return 'Please enter a valid phone number without the country code';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'We will send you a one-time\n password to this mobile number',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff64748B),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 0.0,
                      right: 8,
                      left: 8,
                      top: 10,
                    ),
                    child: RoundedLoadingButton(
                      borderRadius: 12,
                      width: MediaQuery.of(context).size.width * 0.90,
                      color: appColor,
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          final phoneNumber =
                              '+90' + _phoneNumberController.text;
                          print('the phone number is $phoneNumber');
                          final numberExists =
                              await _viewModel.checkIfNumberExists(phoneNumber);
                          if (numberExists) {
                            showToast(
                                'This number is already registered. Please sign in.');
                            _loadingButtonController.error();
                            _loadingButtonController.reset();
                          } else {
                            _viewModel.registerUser(context, phoneNumber);
                          }
                        } else {
                          _loadingButtonController.error();
                          _loadingButtonController.reset();
                        }
                      },
                      controller: _loadingButtonController,
                      child: const Text(
                        'Send code',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
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

  @override
  void dispose() {
    _phoneNumberController.dispose();
    _loadingButtonController.reset();
    super.dispose();
  }
}
