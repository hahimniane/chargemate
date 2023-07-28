import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

Future<BitmapDescriptor> myOwnImageBlue(String path) async {
  BitmapDescriptor blueBitMapImage = await BitmapDescriptor.fromAssetImage(
    ImageConfiguration(),
    path,
  );
  return blueBitMapImage;
}
