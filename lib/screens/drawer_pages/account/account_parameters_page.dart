import 'package:chargemate/screens/drawer_pages/account/profile_page.dart';
import 'package:chargemate/screens/drawer_pages/account/saved_address/addresses_welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/constants.dart';
import '../../../figma/page-1/profile.dart';
import '../../../phone_auth_test.dart';
import '../../../service/firebase_servies.dart';
import '../../registration/login_page.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: Column(
        children: [
          buildSection(Icons.person, 'Profile', context: context),
          buildSection(Icons.location_on, 'Saved Addresses', context: context),
          buildSection(Icons.security, 'Privacy Settings', context: context),
          buildSection(Icons.logout, 'Log Out',
              hasDivider: true, context: context),
        ],
      ),
    );
  }

  Widget buildSection(IconData icon, String text,
      {bool hasDivider = false, required BuildContext context}) {
    final isProfileSection = text == 'Profile';
    final isSavedAddressesSection = text == 'Saved Addresses';
    final isPrivacySection = text == 'Privacy Settings';
    final isLogoutSection = text == 'Log Out';
    final textColor = isLogoutSection ? Colors.red : Colors.black87;
    final iconColor = isLogoutSection ? Colors.red : appColor;

    return GestureDetector(
      onTap: () async {
        // Navigate to the appropriate screen based on the section clicked
        if (isProfileSection) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ProfileCard()));
        } else if (isSavedAddressesSection) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddressesHomePage()));
        } else if (isPrivacySection) {
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => PhoneVerificationPage()));
        } else if (isLogoutSection) {
          showLogoutConfirmationDialog(context);

          // implement logout section
        }
      },
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              icon,
              color: iconColor,
            ),
            title: Text(
              text,
              style: TextStyle(color: textColor, fontSize: 13),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: iconColor,
              size: 12,
            ),
          ),
          if (hasDivider) Divider(),
        ],
      ),
    );
  }

  showLogoutConfirmationDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(32.0),
            ),
          ),
          title: Text(
            'Çıkış Onayı',
            style: GoogleFonts.montserrat(
                color: appColor, fontWeight: FontWeight.bold),
          ),
          content: Text('Çıkış yapmak istediğinizden emin misiniz?'),
          actions: <Widget>[
            TextButton(
              onPressed: () =>
                  Navigator.of(context).pop(false), // User canceled logout
              child: Text('iptal'),
            ),
            TextButton(
              onPressed: () async {
                bool isLoggedOut = await signOut();
                if (isLoggedOut) {
                  FirebaseAuth auth = FirebaseAuth.instance;
                  auth.signOut().then((value) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(
                          isComingFromHomeScreen: true,
                        ),
                      ),
                    );
                  });
                  ;
                }
              }, // User confirmed logout
              child: Text('çıkış '),
            ),
          ],
        );
      },
    );
  }
}
