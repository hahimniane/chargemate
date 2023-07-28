import 'package:chargemate/constants/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<bool> signOut() async {
  try {
    await auth.signOut();
    return true;
  } on FirebaseAuthException catch (e) {
    print(e.message);
    return false;
  }
}
