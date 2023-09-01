import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import '../constants/constants.dart';
import '../modals/distance_matrix_model.dart';
import '../modals/model_stations.dart';
import 'api_service.dart';

import 'package:flutter/foundation.dart';

class FavoriteStation extends ChangeNotifier {

  int a = 0;
  int i = 0;
  Stations stations = Stations();
  List <Distance>calculatedDistance = [];
  bool shouldSetCalculatedDistanceBeCleared = false;

  bool _isFavorite = false;

  bool get isFavorite => _isFavorite;
 Future<List<Distance>> calculateDistance(

    LatLng userLocation,
  ) async {
   ++a;
   print('number function has been called $a');

    List<ElectricStation> nearByStations = await stations.getNearByStations(
        headers: headers,
        latitude: userLocation.latitude,
        longitude: userLocation.longitude);



    // shouldSetCalculatedDistanceBeCleared? calculatedDistance=[]:calculatedDistance;
    print('the nearby stations that is selected are');
    for (i = 0; i < 5; ++i) {
      print(nearByStations[i].id);
      DistanceData? distance = await Stations.getDistanceBetweenTwoPoints(
        origin: LatLng(userLocation.latitude, userLocation.longitude),
        destination: LatLng(
          nearByStations[i].location.latitude,
          nearByStations[i].location.longitude,
        ),
      );
      Distance? theDistance = distance?.rows[0].elements[0].distance;
      print(
          'the computed distnace ${distance?.rows[0].elements[0].distance.text}');
      calculatedDistance.add(theDistance!);

    }

    print('going into the loop');
    print(
        'the length of the calculated distances ${calculatedDistance.length}');
    // for (DistanceData distanceData in calculatedDistances) {
    //   print('inside of the for loop');
    //   print(distanceData.rows);
    // }
    notifyListeners();
    return calculatedDistance;

  }

















  Future<void> checkFavoriteStatus(
      {required String stationId, required String userId}) async {
    bool result =
        await Stations.isStationFavorite(stationId: stationId, userId: userId);
    // Here, you can call your logic to check if the station is a favorite or not.
    // For example, you might query a database or perform some other operation.
    // For now, let's simulate the logic with a simple toggle.
    _isFavorite = result;
    print(
        'Im coming from the Provider method dcheckFavoriteStatus and the station is $_isFavorite ');

    // Notify listeners that the favorite status has changed.
    notifyListeners();
  }

  toggleFavorite({required String stationId, required String userId}) async {
    bool isFavorite =
        await Stations.isStationFavorite(stationId: stationId, userId: userId);

    if (!isFavorite) {
      try {
        HapticFeedback.heavyImpact();
        Stations.addFavoriteStation(
          stationId: stationId,
          userId: userId,
          headers: headers,
        );
        _isFavorite = true;
      } catch (e) {
        print(e.toString());
      }
    } else if (isFavorite) {
      try {
        Stations.deleteFavoriteStation(
          stationId: stationId,
          userId: userId,
          headers: headers,
        );
        _isFavorite = false;
      } catch (e) {
        print(e.toString());
      }
    }
    notifyListeners();
  }
}
