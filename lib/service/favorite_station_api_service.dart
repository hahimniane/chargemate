import 'dart:convert';

import 'package:http/http.dart' as http;

import '../constants/constants.dart';

class FavoriteStationServiceClass {
  static Future<Map<String, dynamic>> doesUserHaveAnyFavoriteStation(
      String userId) async {
    var request = http.Request(
      'GET',
      Uri.parse(
          'https://wvot3qzae6.execute-api.eu-central-1.amazonaws.com/dev/v1/user/favourites/$userId'),
    );
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      final jsonResponse = await response.stream.bytesToString();
      final data = json.decode(jsonResponse);

      // Initialize the result map
      final resultMap = <String, dynamic>{
        'hasChargeStations': false, // Default to false
        'chargeStationCount': 0, // Default count to 0
      };

      // Check if the "chargeStations" array is not empty
      if (data.containsKey('data') &&
          data['data'].containsKey('chargeStations')) {
        final chargeStations = data['data']['chargeStations'];
        resultMap['hasChargeStations'] = chargeStations.isNotEmpty;
        resultMap['chargeStationCount'] = chargeStations.length;
      }

      return resultMap;
    } else {
      print(response.reasonPhrase);
      // Return a default result indicating an error
      return {
        'hasChargeStations': false,
        'chargeStationCount': 0,
      };
    }
  }

  // static doesUserHaveAnyFavoriteStation(String userId) async {
  //   var request = http.Request(
  //       'GET',
  //       Uri.parse(
  //           'https://wvot3qzae6.execute-api.eu-central-1.amazonaws.com/dev/v1/user/favourites/$userId'));
  //   request.body = '''''';
  //   request.headers.addAll(headers);
  //
  //   http.StreamedResponse response = await request.send();
  //
  //   if (response.statusCode == 200) {
  //     print(await response.stream.bytesToString());
  //   } else {
  //     print(response.reasonPhrase);
  //   }
  // }

  static getAllFavoriteStationForAUser(String userId) async {
    //FuduS1bQXCOowLyFKi091Bnbky02
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://wvot3qzae6.execute-api.eu-central-1.amazonaws.com/dev/v1/user/favourites/$userId'));
    request.body = '''''';
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
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
}
