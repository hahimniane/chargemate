import 'package:chargemate/service/favorite_station_api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import '../constants/constants.dart';
import '../modals/distance_matrix_model.dart';
import '../modals/model_stations.dart';
import '../service/api_service.dart';

import 'package:flutter/foundation.dart';

class FavoriteStation extends ChangeNotifier {
  bool _isFavorite = false;
  bool get isFavorite => _isFavorite;


  Future<void> checkFavoriteStatus(
      {required String stationId, required String userId}) async {
    bool result =
        await FavoriteStationServiceClass.isStationFavorite(stationId: stationId, userId: userId);
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
        await FavoriteStationServiceClass.isStationFavorite(stationId: stationId, userId: userId);

    if (!isFavorite) {
      try {
        HapticFeedback.heavyImpact();
        FavoriteStationServiceClass.addFavoriteStation(
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
        FavoriteStationServiceClass.deleteFavoriteStation(
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

