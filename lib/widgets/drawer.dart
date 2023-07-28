import 'package:flutter/material.dart';

import '../screens/drawer_pages/account/account_parameters_page.dart';

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
          // Account item
          ListTile(
            leading: Icon(Icons.person_pin),
            title: Text('Account'),
            onTap: () {
              print('printed ');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AccountPage()));
            },
          ),
          // Activities item
          ListTile(
            leading: Icon(Icons.local_activity),
            title: Text('Activities'),
            onTap: () {
              // Handle Activities item press
            },
          ),
          // Help item
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help'),
            onTap: () {
              // Handle Help item press
            },
          ),
        ],
      ),
    );
  }
}
