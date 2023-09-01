import 'package:chargemate/constants/constants.dart';
import 'package:chargemate/screens/drawer_pages/account/profile_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../figma/page-1/profile.dart';
import '../screens/drawer_pages/account/account_parameters_page.dart';
import '../screens/registration/login_page.dart';
import '../service/firebase_servies.dart';
import '../utils/display_pdf.dart';

class drawer extends StatelessWidget {
  const drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                // color: Colors.blue,
                ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white30,
                      backgroundImage:
                          AssetImage('assets/images/ikon - gradient.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('ChargeMate',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),

                // Notification icon on the right
                IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    // Handle notification icon press
                  },
                ),
              ],
            ),
          ),
          // Spacer to add space below the header
          SizedBox(height: 32),
          // // Account item
          // ListTile(
          //   leading: Icon(
          //     Icons.person_pin,
          //     color: appColor,
          //   ),
          //   title: Text('Account'),
          //   onTap: () {
          //     print('printed ');
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => AccountPage()));
          //   },
          // ),
          // Activities item
          // ListTile(
          //   leading: Icon(
          //     Icons.local_activity,
          //     color: appColor,
          //   ),
          //   title: Text('Activities'),
          //   onTap: () {
          //     // Handle Activities item press
          //   },
          // ),
          // Help item

          ListTile(
            leading: Icon(
              Icons.person,
              color: appColor,
            ),
            title: Text('Profil'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileCard()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.location_on,
              color: appColor,
            ),
            title: Text('Kayıtlı adresler'),
            onTap: () {
              // Handle Help item press
            },
          ),
          ListTile(
            leading: Icon(
              Icons.security,
              color: appColor,
            ),
            title: Text('Gizlilik ayarları'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SyncVisionPdfViewer(
                            pdfSource:
                                'https://firebasestorage.googleapis.com/v0/b/chargemate-4d26f.appspot.com/o/My-Mobile-App-Terms-Conditions.pdf?alt=media&token=9b39b931-260b-4ecd-accc-529b7620be61',
                          )));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.help,
              color: appColor,
            ),
            title: Text('Help'),
            onTap: () {
              // Handle Help item press
            },
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.red,
            ),
            title: Text('çıkış Yap'),
            onTap: () {
              showLogoutConfirmationDialog(context);
              // Handle Help item press
            },
          ),

          // buildSection(Icons.person, 'Profile', context: context),
          // buildSection(Icons.location_on, 'Saved Addresses', context: context),
          // buildSection(Icons.security, 'Privacy Settings', context: context),
          // buildSection(Icons.logout, 'Log Out',
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
