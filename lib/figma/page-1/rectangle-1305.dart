import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';


class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1836;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // rectangle1305VhH (202:1450)
        width: double.infinity,
        height: 100*fem,
        decoration: BoxDecoration (
          borderRadius: BorderRadius.circular(14*fem),
          color: Color(0xff000000),
        ),
      ),
          );
  }
}