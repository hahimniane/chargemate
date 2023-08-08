import 'dart:convert';
import 'package:chargemate/modals/model_stations.dart';
import 'package:chargemate/service/firebase_servies.dart';
import 'package:http/http.dart' as http;

import '../constants/constants.dart';

class Stations {
  late List<ElectricStation> chargingStations;

  // Retrieve the list of charging stations
  Future<List<ElectricStation>> getStations(Map<String, String> headers) async {
    print('it has been called again');

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
            print('this is a key ${element.value.runtimeType}');
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
      Map<String, String> headers) async {
    print('it has been called again near by stations');
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
            print('this is a key ${element.value.runtimeType}');
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

  // static addOrDeleteFavoriteStation(
  //     {required HttpMethod httpMethod,
  //     required String stationId,
  //     required String userId,
  //     required Map<String, String> headers}) async {
  //   var request = http.Request(
  //       HttpMethod == HttpMethod.POST ? 'POST' : 'DELETE',
  //       Uri.parse(addOrDeleteFavoriteStationURL));
  //   request.body =
  //       json.encode({"userId": userId, "chargeStationId": stationId});
  //   request.headers.addAll(headers);
  //
  //   http.StreamedResponse response = await request.send();
  //
  //   if (response.statusCode == 200) {
  //     print(await response.stream.bytesToString());
  //     if (httpMethod == HttpMethod.POST) {
  //       print(
  //           'station was successefully addedto favorite. and the name user id is $userId');
  //     } else {
  //       print(
  //           'station was successfully delete from  favorite. and the name user id is $userId');
  //     }
  //   } else {
  //     print(response.reasonPhrase);
  //   }
  // }

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

//   static isStationFavorite({
//     required String stationId,
//     required String userId,
//   }) async {
//     var request = http.Request(
//         'GET',
//         Uri.parse(
//             'https://wvot3qzae6.execute-api.eu-central-1.amazonaws.com/dev/v1/user/favourites/$userId'));
//
//     request.headers.addAll(headers);
//
//     http.StreamedResponse response = await request.send();
//
//     if (response.statusCode == 200) {
//       var responseString = await response.stream.bytesToString();
//       // Assuming responseString contains the JSON string you provided.
//       var responseMap = jsonDecode(responseString) as Map<String, dynamic>;
//
// // Access the "data" field from the map, which contains the nested data.
//       var dataMap = responseMap['data'] as Map<String, dynamic>;
//
// // Access the "chargeStations" field from the nested data.
//       List chargeStationsList = dataMap['chargeStations'] as List<dynamic>;
//       print(chargeStationsList);
//       for (var thisStationId in chargeStationsList) {
//         if (thisStationId == stationId) {
//           print('the id is a favorite');
//         }
//       }
//
// // Now, chargeStationsList contains the list of charge station IDs.
// // You can work with this list as needed.
//
//       var listOfStrings = chargeStationsList
//           .cast<String>(); // If charge station IDs are strings
// // OR
//       var listOfIntegers =
//           chargeStationsList.cast<int>(); // If charge station IDs are integers
//       // var data = jsonDecode(responseString);
//       // print(data);
//     } else {
//       print(response.reasonPhrase);
//     }
//   }
}

enum HttpMethod { DELETE, POST }
