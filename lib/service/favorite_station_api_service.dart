import 'dart:convert';

import 'package:http/http.dart' as http;

import '../constants/constants.dart';
class FavoriteStationServiceClass{
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