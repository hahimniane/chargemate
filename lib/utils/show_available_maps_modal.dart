 import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:map_launcher/map_launcher.dart';

import '../constants/constants.dart';
import '../modals/electric_store.dart';
import '../modals/model_stations.dart';
  void showAvailableMapsModal (
      BuildContext context, ElectricStation station) async {
    final availableMaps = await MapLauncher.installedMaps;

    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Text(
                  'Select a map application',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              ListView.builder(
                shrinkWrap: true,
                itemCount: availableMaps.length,
                itemBuilder: (context, index) {
                  final map = availableMaps[index];
                  IconData iconData;
                  if (map.mapType == MapType.apple) {
                    iconData = FontAwesomeIcons.apple;
                  } else if (map.mapType == MapType.google) {
                    iconData = FontAwesomeIcons.google;
                  } else if (map.mapType == MapType.yandexMaps) {
                    iconData = FontAwesomeIcons.yandex;
                  } else {
                    // Default icon if not recognized
                    iconData = Icons.map;
                  }
                  return ListTile(
                    leading: Icon(
                      iconData,
                      color: appColor,
                    ),
                    title: Text(map.mapName),
                    onTap: () async {
                      final coords = Coords(
                          station.location.latitude,
                          station.location
                              .longitude); // Replace with your coordinates
                      final url = map.showDirections(
                          destination: Coords(station.location.latitude,
                              station.location.longitude));
                      print(url);
                      ElectricStore store =
                          ElectricStore.fromElectricStation(station);
                      await MapLauncher.showMarker(
                        mapType: MapType.google,
                        coords: coords,
                        title: store.name,
                      );

                      // else {
                      //   print("Could not launch map: $url");
                      // }
                      // Navigator.pop(context); // Close the modal sheet
                    },
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }