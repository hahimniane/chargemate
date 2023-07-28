import 'dart:convert';
import 'package:chargemate/modals/model_stations.dart';
import 'package:http/http.dart' as http;

class Stations {
  late List<ElectricStation> chargingStations;

  // Retrieve the list of charging stations
  Future<List<ElectricStation>> getStations(Map<String, String> headers) async {
    //https://wvot3qzae6.execute-api.eu-central-1.amazonaws.com/dev/v1/chargeStations/list
    final Uri uriForNearStations = Uri.parse(
        'https://wvot3qzae6.execute-api.eu-central-1.amazonaws.com/dev/v1/chargeStations?latitude=37.762583&longitude=30.612583&distance=200000');

    final Uri uriForAllStations = Uri.parse(
        'https://wvot3qzae6.execute-api.eu-central-1.amazonaws.com/dev/v1/chargeStations/list');

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

            // Extract the charging station information
            // List<dynamic> parsedData = jsonDecode(element.value);
            //
            // print(' data ${parsedData.elementAt(1)}');
            // List stationInfo = parsedData.values.elementAt(1);

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
    //https://wvot3qzae6.execute-api.eu-central-1.amazonaws.com/dev/v1/chargeStations/list
    final Uri uriForNearStations = Uri.parse(
        'https://wvot3qzae6.execute-api.eu-central-1.amazonaws.com/dev/v1/chargeStations?latitude=37.762583&longitude=30.612583&distance=100000');

    final Uri uriForAllStations = Uri.parse(
        'https://wvot3qzae6.execute-api.eu-central-1.amazonaws.com/dev/v1/chargeStations/list');

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

            // Extract the charging station information
            // List<dynamic> parsedData = jsonDecode(element.value);
            //
            // print(' data ${parsedData.elementAt(1)}');
            // List stationInfo = parsedData.values.elementAt(1);

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
}
