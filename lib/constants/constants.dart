import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Color appColor = Color(0xff143463);
Color yellowColor = Color(0xffFFB400);
Color lightGreenColor = Color(0xffDEEBE9);
var headers = {'x-api-key': 'ZXSDkAOYdz18y4As0Pfap4IMkJBJR5Rh5tTDso5q'};
FirebaseFirestore firestore = FirebaseFirestore.instance;
FirebaseAuth auth = FirebaseAuth.instance;
