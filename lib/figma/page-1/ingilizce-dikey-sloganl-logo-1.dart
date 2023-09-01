import 'package:flutter/material.dart';


class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 727;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // ingilizcedikeysloganllogo1hu9 (1:739)
        width: double.infinity,
        height: 351*fem,
        child: Image.asset(
          'assets/page-1/images/ingilizce-dikey-sloganl-logo-1.png',
          fit: BoxFit.cover,
        ),
      ),
          );
  }
}