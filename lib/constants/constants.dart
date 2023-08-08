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
