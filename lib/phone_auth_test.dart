// // import 'package:flutter/material.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// //
// // class PhoneAuth {
// //   void _submitCode(String code) async {
// //     await showProgress(context,
// //         widget.login ? 'Logging in...'.tr() : 'Signing up...'.tr(), false);
// //     try {
// //       if (_verificationID != null) {
// //         // String profileImageUrl = '';
// //         //  auth.UserCredential userCredential =
// //         // await auth.FirebaseAuth.instance.signInWithCredential(credential);
// //         dynamic result = await FireStoreUtils.firebaseSubmitPhoneNumberCode(
// //                 _verificationID!, code, _phoneNumber!,
// //                 firstName: _firstNameController.text,
// //                 lastName: _lastNameController.text,
// //                 auto_approve_restaurant: auto_approve_restaurant)
// //             .onError((error, stackTrace) {
// //           print("==RESULT123" + error.toString());
// //         });
// //         print("==RESULT");
// //         print(result.toString());
// //         await hideProgress();
// //         if (result != null &&
// //             result is User &&
// //             result.role == USER_ROLE_VENDOR) {
// //           MyAppState.currentUser = result;
// //
// //           if (auto_approve_restaurant == true) {
// //             if (MyAppState.currentUser!.active == true) {
// //               pushAndRemoveUntil(context, ContainerScreen(user: result), false);
// //             } else {
// //               showAlertDialog(
// //                   context, "accountDisabledContactAdmin".tr(), "", true);
// //             }
// //           } else {
// //             if (MyAppState.currentUser!.active == true) {
// //               pushAndRemoveUntil(context, ContainerScreen(user: result), false);
// //             } else {
// //               pushAndRemoveUntil(context, LoginScreen(), false);
// //               showAlertDialog(
// //                   context,
// //                   'Failed'.tr(),
// //                   "Thank you for sign up, your account is under approval so please wait till that approve.",
// //                   true);
// //             }
// //           }
// //         } else if (result != null && result is String) {
// //           showAlertDialog(context, 'Failed'.tr(), result, true);
// //         } else {
// //           showAlertDialog(
// //               context, 'Failed'.tr(), "notCreateUserThisPhone".tr(), true);
// //         }
// //       } else {
// //         await hideProgress();
// //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
// //           content: Text("errorTryAgain".tr()),
// //           duration: Duration(seconds: 6),
// //         ));
// //       }
// //     } on auth.FirebaseAuthException catch (exception) {
// //       hideProgress();
// //       String message = "errorTryAgain".tr();
// //       switch (exception.code) {
// //         case 'invalid-verification-code':
// //           message = 'Invalid code or has been expired.'.tr();
// //           break;
// //         case 'user-disabled':
// //           message = 'This user has been disabled.'.tr();
// //           break;
// //         default:
// //           message = "errorTryAgain".tr();
// //           break;
// //       }
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         SnackBar(
// //           content: Text(
// //             message.tr(),
// //           ),
// //         ),
// //       );
// //     } catch (e, s) {
// //       print('_PhoneNumberInputScreenState._submitCode $e $s');
// //       hideProgress();
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         SnackBar(
// //           content: Text(
// //             "errorTryAgain".tr(),
// //           ),
// //         ),
// //       );
// //     }
// //   }
// //
// //   static firebaseSubmitPhoneNumber(
// //     String phoneNumber,
// //     auth.PhoneCodeAutoRetrievalTimeout? phoneCodeAutoRetrievalTimeout,
// //     auth.PhoneCodeSent? phoneCodeSent,
// //     auth.PhoneVerificationFailed? phoneVerificationFailed,
// //     auth.PhoneVerificationCompleted? phoneVerificationCompleted,
// //   ) {
// //     auth.FirebaseAuth.instance.verifyPhoneNumber(
// //       timeout: Duration(minutes: 2),
// //       phoneNumber: phoneNumber,
// //       verificationCompleted: phoneVerificationCompleted!,
// //       verificationFailed: phoneVerificationFailed!,
// //       codeSent: phoneCodeSent!,
// //       codeAutoRetrievalTimeout: phoneCodeAutoRetrievalTimeout!,
// //     );
// //   }
// //
// //   /// submit the received code to firebase to complete the phone number
// //   /// verification process
// //   static Future<dynamic> firebaseSubmitPhoneNumberCode(
// //       String verificationID, String code, String phoneNumber,
// //       {String firstName = 'Anonymous',
// //       String lastName = 'User',
// //       File? image,
// //       bool? auto_approve_restaurant}) async {
// //     auth.AuthCredential authCredential = auth.PhoneAuthProvider.credential(
// //         verificationId: verificationID, smsCode: code);
// //     auth.UserCredential userCredential =
// //         await auth.FirebaseAuth.instance.signInWithCredential(authCredential);
// //     User? user = await getCurrentUser(userCredential.user?.uid ?? '');
// //     if (user != null && user.role == USER_ROLE_VENDOR) {
// //       return user;
// //     } else if (user == null) {
// //       /// create a new user from phone login
// //       String profileImageUrl = '';
// //       if (image != null) {
// //         profileImageUrl = await uploadUserImageToFireStorage(
// //             image, userCredential.user?.uid ?? '');
// //       }
// //       User user = User(
// //         firstName: firstName,
// //         lastName: lastName,
// //         fcmToken: await firebaseMessaging.getToken() ?? '',
// //         phoneNumber: phoneNumber,
// //         profilePictureURL: profileImageUrl,
// //         userID: userCredential.user?.uid ?? '',
// //         active: auto_approve_restaurant == true ? true : false,
// //         lastOnlineTimestamp: Timestamp.now(),
// //         photos: [],
// //         settings: UserSettings(),
// //         role: USER_ROLE_VENDOR,
// //         email: '',
// //       );
// //       String? errorMessage = await firebaseCreateNewUser(user);
// //       if (errorMessage == null) {
// //         return user;
// //       } else {
// //         return "notCreateUserThisPhone".tr();
// //       }
// //     }
// //   }
// // }
// //*******************************************************************************************************************************************************************************
//
// import 'package:firebase_phone_auth_handler/firebase_phone_auth_handler.dart';
// import 'package:flutter/material.dart';
//
// class VerifyPhoneNumberScreen extends StatefulWidget {
//   static const id = 'VerifyPhoneNumberScreen';
//
//   final String phoneNumber;
//
//   const VerifyPhoneNumberScreen({
//     Key? key,
//     required this.phoneNumber,
//   }) : super(key: key);
//
//   @override
//   State<VerifyPhoneNumberScreen> createState() =>
//       _VerifyPhoneNumberScreenState();
// }
//
// class _VerifyPhoneNumberScreenState extends State<VerifyPhoneNumberScreen>
//     with WidgetsBindingObserver {
//   bool isKeyboardVisible = false;
//
//   late final ScrollController scrollController;
//
//   @override
//   void initState() {
//     scrollController = ScrollController();
//     WidgetsBinding.instance.addObserver(this);
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     WidgetsBinding.instance.removeObserver(this);
//     scrollController.dispose();
//     super.dispose();
//   }
//
//   @override
//   void didChangeMetrics() {
//     final bottomViewInsets = WidgetsBinding.instance.window.viewInsets.bottom;
//     isKeyboardVisible = bottomViewInsets > 0;
//   }
//
//   // scroll to bottom of screen, when pin input field is in focus.
//   Future<void> _scrollToBottomOnKeyboardOpen() async {
//     while (!isKeyboardVisible) {
//       await Future.delayed(const Duration(milliseconds: 50));
//     }
//
//     await Future.delayed(const Duration(milliseconds: 250));
//
//     await scrollController.animateTo(
//       scrollController.position.maxScrollExtent,
//       duration: const Duration(milliseconds: 250),
//       curve: Curves.easeIn,
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: FirebasePhoneAuthHandler(
//         phoneNumber: widget.phoneNumber,
//         signOutOnSuccessfulVerification: false,
//         linkWithExistingUser: false,
//         autoRetrievalTimeOutDuration: const Duration(seconds: 60),
//         otpExpirationDuration: const Duration(seconds: 60),
//         onCodeSent: () {
//           // log(VerifyPhoneNumberScreen.id, msg: 'OTP sent!');
//         },
//         onLoginSuccess: (userCredential, autoVerified) async {
//           // log(
//           //   VerifyPhoneNumberScreen.id,
//           //   msg: autoVerified
//           //       ? 'OTP was fetched automatically!'
//           //       : 'OTP was verified manually!',
//           // );
//
//           // showSnackBar('Phone number verified successfully!');
//           //
//           // log(
//           //   VerifyPhoneNumberScreen.id,
//           //   msg: 'Login Success UID: ${userCredential.user?.uid}',
//           // );
//
//           // Navigator.pushNamedAndRemoveUntil(
//           //   context,
//           //
//           //   (route) => false,
//           // );
//         },
//         onLoginFailed: (authException, stackTrace) {
//           // log(
//           //   VerifyPhoneNumberScreen.id,
//           //   msg: authException.message,
//           //   error: authException,
//           //   stackTrace: stackTrace,
//           // );
//
//           switch (authException.code) {
//             case 'invalid-phone-number':
//               // invalid phone number
//               return print('Invalid phone number!');
//             case 'invalid-verification-code':
//               // invalid otp entered
//               return print('The entered OTP is invalid!');
//             // handle other error codes
//             default:
//               print('Something went wrong!');
//             // handle error further if needed
//           }
//         },
//         onError: (error, stackTrace) {
//           // log(
//           //   VerifyPhoneNumberScreen.id,
//           //   error: error,
//           //   stackTrace: stackTrace,
//           // );
//
//           print('An error occurred!');
//         },
//         builder: (context, controller) {
//           return Scaffold(
//             appBar: AppBar(
//               leadingWidth: 0,
//               leading: const SizedBox.shrink(),
//               title: const Text('Verify Phone Number'),
//               actions: [
//                 if (controller.codeSent)
//                   TextButton(
//                     onPressed: controller.isOtpExpired
//                         ? () async {
//                             // log(VerifyPhoneNumberScreen.id, msg: 'Resend OTP');
//                             // await controller.sendOTP();
//                           }
//                         : null,
//                     child: Text(
//                       controller.isOtpExpired
//                           ? 'Resend'
//                           : '${controller.otpExpirationTimeLeft.inSeconds}s',
//                       style: const TextStyle(color: Colors.blue, fontSize: 18),
//                     ),
//                   ),
//                 const SizedBox(width: 5),
//               ],
//             ),
//             body: controller.isSendingCode
//                 ? Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: const [
//                       // CustomLoader(),
//                       SizedBox(height: 50),
//                       Center(
//                         child: Text(
//                           'Sending OTP',
//                           style: TextStyle(fontSize: 25),
//                         ),
//                       ),
//                     ],
//                   )
//                 : ListView(
//                     padding: const EdgeInsets.all(20),
//                     controller: scrollController,
//                     children: [
//                       Text(
//                         "We've sent an SMS with a verification code to ${widget.phoneNumber}",
//                         style: const TextStyle(fontSize: 25),
//                       ),
//                       const SizedBox(height: 10),
//                       const Divider(),
//                       if (controller.isListeningForOtpAutoRetrieve)
//                         Column(
//                           children: const [
//                             // CustomLoader(),
//                             SizedBox(height: 50),
//                             Text(
//                               'Listening for OTP',
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 fontSize: 25,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                             SizedBox(height: 15),
//                             Divider(),
//                             Text('OR', textAlign: TextAlign.center),
//                             Divider(),
//                           ],
//                         ),
//                       const SizedBox(height: 15),
//                       const Text(
//                         'Enter OTP',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                       const SizedBox(height: 15),
//                       // PinInputField(
//                       //   length: 6,
//                       //   onFocusChange: (hasFocus) async {
//                       //     if (hasFocus) await _scrollToBottomOnKeyboardOpen();
//                       //   },
//                       //   onSubmit: (enteredOtp) async {
//                       //     final verified =
//                       //         await controller.verifyOtp(enteredOtp);
//                       //     if (verified) {
//                       //       // number verify success
//                       //       // will call onLoginSuccess handler
//                       //     } else {
//                       //       // phone verification failed
//                       //       // will call onLoginFailed or onError callbacks with the error
//                       //     }
//                       //   },
//                       // ),
//                     ],
//                   ),
//           );
//         },
//       ),
//     );
//   }
// }
//
// class homeScreen extends StatelessWidget {
//   final id;
//   homeScreen({Key? key, this.id}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
import 'dart:async';

import 'package:chargemate/screens/home_screen.dart';
import 'package:chargemate/screens/registration/email_input_page.dart';
import 'package:chargemate/service/api_service.dart';
import 'package:chargemate/modals/model_stations.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import 'constants/constants.dart';

// class PhoneSetupa extends StatelessWidget {
//   const PhoneSetupa({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(body);
//   }
// }
//
// import 'package:flutter/material.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';

class PhoneVerificationPage extends StatefulWidget {
  String? phoneNumber;
  String verificationId;

  PhoneVerificationPage({this.verificationId = '', required this.phoneNumber});

  @override
  _PhoneVerificationPageState createState() => _PhoneVerificationPageState();
}

class _PhoneVerificationPageState extends State<PhoneVerificationPage> {
  // String formatPhoneNumber(String phoneNumber) {
  //   final numberFormat = NumberFormat('+# (###) ###-####');
  //
  //   print(numberFormat.format(int.parse(phoneNumber)));
  //   return numberFormat.format(int.parse(phoneNumber));
  // }

  int _secondsRemaining = 120;
  Timer? _timer;

  var verifyLoadingButtonController = RoundedLoadingButtonController();
  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
        } else {
          _timer?.cancel();
        }
      });
    });
  }

  String formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    String minutesStr = minutes.toString().padLeft(2, '0');
    String secondsStr = remainingSeconds.toString().padLeft(2, '0');
    return '$minutesStr:$secondsStr';
  }

  TextEditingController code_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDEEBE9),
      // appBar: AppBar(
      //   title: Text('Phone Verification'),
      // ),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Color(0xffDEEBE9),
              width: MediaQuery.of(context).size.width * 0.50,
              child: Image(
                fit: BoxFit.scaleDown,
                image: AssetImage('assets/images/logos/img.png'),
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
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  // color: Colors.yellow,
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                      child: Text('SMS DOĞRULAMA',
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: appColor)),
                    ),
                    // const SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'Lütfen  ${widget.phoneNumber} No\'lu telefona gelen kodu giriniz!',
                        style: TextStyle(
                            color: Color(0xff143463),
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      formatTime(_secondsRemaining),
                      style: TextStyle(color: appColor, fontSize: 18),
                    ),

                    const SizedBox(height: 0),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: PinCodeTextField(
                          keyboardType: TextInputType.numberWithOptions(
                            decimal: true,
                            // signed: true,
                          ),
                          controller: code_controller,
                          length: 6,
                          obscureText: false,
                          animationType: AnimationType.fade,
                          pinTheme: PinTheme(
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(5.0),
                            fieldHeight: 50,
                            fieldWidth: 40,
                            activeFillColor: Colors.white,
                          ),
                          animationDuration: Duration(milliseconds: 300),
                          onChanged: (value) {},
                          appContext: context,
                        ),
                      ),
                    ),
                    SizedBox(height: 14.0),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     print(textEditingController.text);
                    //   },
                    //   child: Text('Verify'),
                    // ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Doğrulama kodu henüz gelmedi mi?',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xff64748B),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Tekrar Gönder',
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 0.0, right: 8, left: 8, top: 10),
                              child: RoundedLoadingButton(
                                borderRadius: 12,
                                width: MediaQuery.of(context).size.width * 0.90,
                                controller: verifyLoadingButtonController,
                                color: appColor,
                                // style: ElevatedButton.styleFrom(
                                //   backgroundColor: appColor,
                                // ),
                                onPressed: () async {
                                  FirebaseAuth auth = FirebaseAuth.instance;

                                  String smsCode = code_controller.text.trim();

                                  PhoneAuthCredential _credential =
                                      PhoneAuthProvider.credential(
                                          verificationId: widget.verificationId,
                                          smsCode: smsCode);
                                  auth
                                      .signInWithCredential(_credential)
                                      .then((result) async {

                                    DocumentSnapshot result=  await firestore.collection('Users').doc(auth.currentUser!.uid).get();
                                   if(result.exists){
                                     Stations station = Stations();
                                     List<ElectricStation>? myData =
                                     await station.getStations(headers);
                                     print(myData);
                                     Navigator.pushAndRemoveUntil(
                                       context,
                                       MaterialPageRoute(
                                         builder: (context) => HomeScreen(
                                           allStations: myData,
                                         ),
                                         //     HomeScreen(
                                         //   allStations: myData,
                                         // ),
                                       ),
                                           (route) => false,
                                     );

                                    }
                                   else{
                                     print('registration page');
                                     Navigator.pushReplacement(
                                         context,
                                         MaterialPageRoute(
                                             builder: (context) =>
                                                 EmailInputPage(
                                                   phoneNumber:
                                                       widget.phoneNumber!,
                                                   // allStations: allStations,
                                                 )));


                                    }
                                    verifyLoadingButtonController.error();

                                    verifyLoadingButtonController.reset();


                                  }).catchError((e) {
                                    print('in here');
                                    Fluttertoast.showToast(
                                        gravity: ToastGravity.CENTER,
                                        toastLength: Toast.LENGTH_LONG,
                                        backgroundColor: Colors.red,
                                        msg: e.code ==
                                                'invalid-verification-code'
                                            ? "girdiğiniz doğrulama kodu yanlış"
                                            : e.code);
                                    verifyLoadingButtonController.error();

                                    verifyLoadingButtonController.reset();
                                  });

                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => EmailInputPage(
                                  //               phoneNumber:
                                  //                   widget.phoneNumber!,
                                  //             )));
                                },
                                child: const Text(
                                  'Onayla',
                                  style: TextStyle(
                                    wordSpacing: 0.5,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
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
            )
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    // formatPhoneNumber(widget.phoneNumber);
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
/*
<key>CFBundleURLTypes</key>
    <array>
        <dict>
            <key>CFBundleIdentifier</key>
            <string></string>
            <key>CFBundleTypeRole</key>
            <string>Editor</string>1
            <key>CFBundleURLSchemes</key>
            <array>
                <string>app-1-141676675081-ios-e36c6c2ba2d9d70ec4b8d8</string>
            </array>
        </dict>
    </array>
* */
