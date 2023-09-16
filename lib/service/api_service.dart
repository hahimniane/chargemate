import 'dart:convert';

import 'package:chargemate/modals/distance_matrix_model.dart';
import 'package:chargemate/modals/model_stations.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;

import '../constants/constants.dart';


class Stations {
  late List<ElectricStation> chargingStations;

  /// Retrieve the list of all charging stations
  Future<List<ElectricStation>> getStations(Map<String, String> headers) async {


    final Uri uriForAllStations = Uri.parse(stationListURL);

    final request = http.Request('GET', uriForAllStations);
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      // Extract the response body
      String responseBody = await response.stream.bytesToString();
      // Parse the response body as JSON
      dynamic data = jsonDecode(responseBody);

      if (data is Map) {
        // Iterate through the response data
        for (var element in data.entries) {
          // print('this is a key ${element}');
          if (element.key == 'data') {
            // print('this is a key ${element.value.runtimeType}');
            List<dynamic> stationInfo = element.value;

            for (var dynamicList in stationInfo) {
              // print(dynamicList);
              // print('\n');
            }

            // Convert the station information into ElectricStation objects
            chargingStations = stationInfo
                .map((station) => ElectricStation.fromJson(station))
                .toList();
            // var numOfDc = 0;
            // for (var station in chargingStations) {
            //   if (station.plug['hasDC'] == 1) {
            //     numOfDc++;
            //   }
            // }
            // print(numOfDc);
            print('this is the list of amnities for the first station ${stationInfo.first}');
            return chargingStations;
          }
        }
      } else {
        print("Invalid response format.");
      }
    } else {
      print('there is a problem');
    }

    return chargingStations;
  }

  ///Retrieve the list of close charging stations based on the user location;
  Future<List<ElectricStation>> getNearByStations(
      {required Map<String, String> headers,
      required double latitude,
      required double longitude}) async {
    // print('it has been called again near by stations');
    String nearByStationURI =
        'https://wvot3qzae6.execute-api.eu-central-1.amazonaws.com/dev/v1/chargeStations?latitude=$latitude&longitude=$longitude&distance=100000';
    //https://wvot3qzae6.execute-api.eu-central-1.amazonaws.com/dev/v1/chargeStations/list
    final Uri uriForNearStations = Uri.parse(nearByStationURI);

    final request = http.Request('GET', uriForNearStations);
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      // Extract the response body
      String responseBody = await response.stream.bytesToString();
      // Parse the response body as JSON
      dynamic data = jsonDecode(responseBody);

      if (data is Map) {
        // Iterate through the response data
        for (var element in data.entries) {
          // print('this is a key ${element}');
          if (element.key == 'data') {
            // print('this is a key ${element.value.runtimeType}');
            List<dynamic> stationInfo = element.value;

            for (var dynamicList in stationInfo) {
              // print(dynamicList);
              // print('\n');
            }

            // Convert the station information into ElectricStation objects
            chargingStations = stationInfo
                .map((station) => ElectricStation.fromJson(station))
                .toList();

            return chargingStations;
          }
        }
      } else {
        print("Invalid response format.");
      }
    } else {
      print('there is a problem');
    }

    return chargingStations;
  }


  static Future<DistanceData?> getDistanceBetweenTwoPoints(
      {required LatLng origin, required LatLng destination}) async {
    // final apiKey = 'YOUR_API_KEY';
    final origins = '${origin.latitude},${origin.longitude}';
    final destinations = '${destination.latitude},${destination.longitude}';

    final url = Uri.parse(
      'https://maps.googleapis.com/maps/api/distancematrix/json'
      '?origins=$origins'
      '&destinations=$destinations'
      '&mode=driving' // Specify travel mode as driving
      '&units=metric' // Use metric units for kilometers
      '&key=$distanceMatrixApiKey',
    );


    final response = await http.get(url);

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);

      // print('this is the one from the api call $responseData');
      final DistanceData distanceData = DistanceData.fromJson(responseData);


      if (distanceData.rows.isNotEmpty) {
        RowElements row = distanceData.rows[0];
        if (row.elements.isNotEmpty) {
          Element element = row.elements[0];
          if (element.status == 'OK') {
            Distance duration = element.distance;
            print('Duration: ${duration.text}');
            print('Value: ${duration.value}  meters');
          } else {
            print('Element status is not OK');
          }
        } else {
          print('No elements in the row');
        }
      } else {
        print('No rows in the distance data');
      }

      return distanceData;
    } else {
      print('Request failed with status: ${response.statusCode}');
      return null;
    }
  }




}


