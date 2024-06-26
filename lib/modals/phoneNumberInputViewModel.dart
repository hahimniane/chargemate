import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../phone_auth_test.dart';
import '../screens/home_screen.dart';

class PhoneNumberInputViewModel {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Future<void> registerUser(BuildContext context, String phoneNumber) async {
  //   try {
  //     await _auth.verifyPhoneNumber(
  //       phoneNumber: phoneNumber,
  //       timeout: Duration(seconds: 120),
  //       verificationCompleted: (AuthCredential authCredential) {
  //         Navigator.pushReplacement(
  //           context,
  //           MaterialPageRoute(
  //             builder: (context) => HomeScreen(allStations: []),
  //           ),
  //         );
  //       },
  //       verificationFailed: (FirebaseAuthException authException) {
  //         print(authException.message);
  //         print('Entered inside verification failed');
  //         // Handle verification failure, show error message, etc.
  //       },
  //       codeSent: (String verificationId, int? forceResendingToken) {
  //         Navigator.pushReplacement(
  //           context,
  //           MaterialPageRoute(
  //             builder: (context) => PhoneVerificationPage(
  //               verificationId: verificationId,
  //               phoneNumber: phoneNumber,
  //             ),
  //           ),
  //         );
  //       },
  //       codeAutoRetrievalTimeout: (String verificationId) {
  //         verificationId = verificationId;
  //         print(verificationId);
  //         print("Timeout");
  //       },
  //     );
  //   } on FirebaseAuthException catch (e) {
  //     print('Error occurred while registering user: ${e.message}');
  //     // Handle registration failure, show error message, etc.
  //   }
  // }

  Future<void> resendVerificationCode(
      String phoneNumber, BuildContext context) async {
    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        timeout: Duration(seconds: 120),
        verificationCompleted: (AuthCredential authCredential) {
          // Handle verification completion if needed
        },
        verificationFailed: (FirebaseAuthException authException) {
          print(authException.message);
          print('Entered inside verification failed');
          // Handle verification failure, show error message, etc.
        },
        codeSent: (String verificationId, int? forceResendingToken) {
          //  Handle code sent logic if needed
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          verificationId = verificationId;
          print(verificationId);
          print("Timeout");
        },
        forceResendingToken:
            null, // Pass null for resending the verification code
      );
    } on FirebaseAuthException catch (e) {
      print('Error occurred while resending verification code: ${e.message}');
      // Handle resend verification failure, show error message, etc.
    }
  }

  Future<void> registerUser(BuildContext context, String phoneNumber) async {
    try {
      _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        timeout: Duration(seconds: 120),
        verificationCompleted: (AuthCredential authCredential) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(allStations: []),
            ),
          );
        },
        verificationFailed: (FirebaseAuthException authException) {
          print(authException.message);
          print('entered inside of the verification failed');
        },
        codeSent: (String verificationId, int? forceResendingToken) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => PhoneVerificationPage(
                verificationId: verificationId,
                phoneNumber: phoneNumber,
              ),
            ),
          );

          // ...
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          verificationId = verificationId;
          print(verificationId);
          print("Timout");
        },
      );
    } on FirebaseAuthException catch (e) {
      print('in here');
    }
  }

  Future<bool> checkIfNumberExists(String phoneNumber) async {
    bool numberExists = false;
    String plainNumberWithCode = '+90' + phoneNumber;
    // print('the number being checked againts is $plainNumberWithCode');
    final snapshot = await _firestore
        .collection('Users')
        .where('phone_number', isEqualTo: phoneNumber)
        .get();

    if (snapshot.docs.isNotEmpty) {
      numberExists = true;
    }

    return numberExists;
  }
}
