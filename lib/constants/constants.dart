import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Color appColor = Color(0xff145063);
Color yellowColor = Color(0xffFFB400);
Color lightGreenColor = Color(0xffDEEBE9);
var headers = {'x-api-key': 'ZXSDkAOYdz18y4As0Pfap4IMkJBJR5Rh5tTDso5q'};
FirebaseFirestore firestore = FirebaseFirestore.instance;
FirebaseAuth auth = FirebaseAuth.instance;
String nearByStationURI =
    'https://wvot3qzae6.execute-api.eu-central-1.amazonaws.com/dev/v1/chargeStations?latitude=37.762583&longitude=30.612583&distance=100000';
String stationListURL =
    'https://wvot3qzae6.execute-api.eu-central-1.amazonaws.com/dev/v1/chargeStations/list';
String addOrDeleteFavoriteStationURL =
    'https://wvot3qzae6.execute-api.eu-central-1.amazonaws.com/dev/v1/user/favourites';
MaterialColor myMaterialAppColor = MaterialColor(
  appColor.value,
  <int, Color>{
    50: appColor.withOpacity(0.1),
    100: appColor.withOpacity(0.2),
    200: appColor.withOpacity(0.3),
    300: appColor.withOpacity(0.4),
    400: appColor.withOpacity(0.5),
    500: appColor, // Primary Color
    600: appColor.withOpacity(0.6),
    700: appColor.withOpacity(0.7),
    800: appColor.withOpacity(0.8),
    900: appColor.withOpacity(0.9),
  },
);
