import 'dart:convert';

import 'package:chargemate/modals/distance_matrix_model.dart';
import 'package:chargemate/modals/model_stations.dart';
import 'package:chargemate/service/firebase_servies.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;

import '../constants/constants.dart';
import '../modals/comment_model.dart';

class Stations {
  late List<ElectricStation> chargingStations;

  // Retrieve the list of charging stations
  Future<List<ElectricStation>> getStations(Map<String, String> headers) async {
    // print('it has been called again');

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
            var numOfDc = 0;
            for (var station in chargingStations) {
              if (station.plug['hasDC'] == 1) {
                numOfDc++;
              }
            }
            print(numOfDc);
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

  //Retrieve the list of close charging stations based on the user location;
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

  static addFavoriteStation(
      {required String stationId,
      required String userId,
      required Map<String, String> headers}) async {
    var request =
        http.Request('POST', Uri.parse(addOrDeleteFavoriteStationURL));
    request.body =
        json.encode({"userId": userId, "chargeStationId": stationId});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());

      print(
          'station was successefully addedto favorite. and the name user id is $userId');
    } else {
      print(response.reasonPhrase);
    }
  }

  static deleteFavoriteStation(
      {required String stationId,
      required String userId,
      required Map<String, String> headers}) async {
    var request =
        http.Request('DELETE', Uri.parse(addOrDeleteFavoriteStationURL));
    request.body =
        json.encode({"userId": userId, "chargeStationId": stationId});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print('deleted successfully');
      await response.stream.bytesToString();
    } else {
      print(response.reasonPhrase);
    }
  }

  static Future<bool> isStationFavorite({
    required String stationId,
    required String userId,
  }) async {
    try {
      final response = await http.get(Uri.parse(
          'https://wvot3qzae6.execute-api.eu-central-1.amazonaws.com/dev/v1/user/favourites/$userId'));

      if (response.statusCode == 200) {
        final responseMap = jsonDecode(response.body) as Map<String, dynamic>;

        // Access the "data" field from the map, which contains the nested data.
        final dataMap = responseMap['data'] as Map<String, dynamic>;

        // Access the "chargeStations" field from the nested data.
        final chargeStationsList = dataMap['chargeStations'] as List<dynamic>;

        // Check if the stationId exists in the chargeStationsList.
        return chargeStationsList.contains(stationId);
      } else {
        // Handle non-200 status code (e.g., stationId not found, API error)
        return false;
      }
    } catch (e) {
      // Handle any exceptions that may occur during the API call.
      print('Error: $e');
      return false;
    }
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
    // final url =
    //     Uri.parse('https://maps.googleapis.com/maps/api/distancematrix/json'
    //         '?origins=$origins'
    //         '&destinations=$destinations'
    //         '&units=imperial'
    //         '&key=AIzaSyAxpzgoo8WVjaxsvqfOFm_3cSuIhMER5h0');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);

      // print('this is the one from the api call $responseData');
      final DistanceData distanceData = DistanceData.fromJson(responseData);
      //
      // print('the distance destination is ${distanceData.destinationAddresses}');
      // print('the distance status is ${distanceData.status}');
      //
      // print('the distance rows address is ${distanceData.rows}');

      ///////////////////////////////////////////////////////////////////////////////

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

  static addComment(
      {required var headers,
      required String userId,
      required userFullName,
      required String stationId,
      comment = null,
      required int score,
      required String idToken}) async {
    var headers = {
      'Content-Type': 'application/json',
      'x-api-key': 'ZXSDkAOYdz18y4As0Pfap4IMkJBJR5Rh5tTDso5q',
      'Authorization':
          'Bearer $idToken', // Include the ID token in the Authorization header
    };
    var request = http.Request(
        'POST',
        Uri.parse(
            'https://wvot3qzae6.execute-api.eu-central-1.amazonaws.com/dev/v1/chargeStations/stationComments'));
    request.body = json.encode({
      // "userId": "647e304b44ccda0008750d7a",
      // "userFullName": "test",
      // "chargeStationId": "646932c750b5a7573461ec15",
      // "text": "Hashim is a good guy",
      // "score": "4"
      "userId": userId,
      "userFullName": userFullName,
      "chargeStationId": stationId,
      "text": comment,
      "score": score
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.statusCode);
      print(response.reasonPhrase);
    }
  }

  static Future<List<Comments>> getComments(
      {required Map<String, String> headers, required String stationId}) async {
    var request = http.Request(
      'GET',
      Uri.parse(
          'https://wvot3qzae6.execute-api.eu-central-1.amazonaws.com/dev/v1/chargeStations/$stationId'),
    );

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var result = await response.stream.bytesToString();
      Map<String, dynamic> data = jsonDecode(result);
      List<dynamic> commentData = data['data']['comments'];

      List<Comments> commentsList = commentData
          .map((commentJson) => Comments.fromJson(commentJson))
          .toList();
      return commentsList;
    } else {
      throw Exception('Failed to load comments: ${response.reasonPhrase}');
    }
  }
}

enum HttpMethod { DELETE, POST }
