import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../constants/constants.dart';
import '../modals/distance_matrix_model.dart';
import '../modals/model_stations.dart';
import '../service/api_service.dart';

class calculateDistanceProvider extends ChangeNotifier{
  int a = 0;
  int i = 0;
  Stations stations = Stations();
  List <Distance>calculatedDistance = [];
  bool shouldSetCalculatedDistanceBeCleared = false;
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

}