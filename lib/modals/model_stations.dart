import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

//
class ElectricStation extends ClusterItem {
  String id;
  String oid;
  Map<String, dynamic> tenant;
  LatLng latLng;
  Map<String, dynamic> store;
  Map<String, dynamic> plug;

  ElectricStation({
    required this.id,
    required this.oid,
    required this.tenant,
    required this.latLng,
    required this.store,
    required this.plug,
  });
  factory ElectricStation.fromJson(Map<String, dynamic> json) {
    final id = json['_id'] as String? ?? '';
    final oid = json['oid'] as String? ?? '';
    final tenant = json['tenant'] as Map<String, dynamic>? ?? {};
    final locationsData = json['location'] as Map<String, dynamic>?;

    LatLng? coordinates;
    if (locationsData != null && locationsData['coordinates'] != null) {
      final latitude = locationsData['coordinates'][0] as double?;
      final longitude = locationsData['coordinates'][1] as double?;
      if (latitude != null && longitude != null) {
        coordinates = LatLng(latitude, longitude);
      }
    }

    final store = json['store'] as Map<String, dynamic>? ?? {};
    final plug = json['plug'] as Map<String, dynamic>? ?? {};

    return ElectricStation(
      id: id,
      oid: oid,
      tenant: tenant,
      latLng: coordinates ?? LatLng(0, 0),
      store: store,
      plug: plug,
    );
  }

  @override
  // TODO: implement location
  LatLng get location => latLng;
}
// class ElectricStation extends ClusterItem {
//   String id;
//   String oid;
//   Map<String, dynamic> tenant;
//   LatLng latLng;
//   ElectricStore store;
//   Map<String, dynamic> plug;
//
//   ElectricStation({
//     required this.id,
//     required this.oid,
//     required this.tenant,
//     required this.latLng,
//     required this.store,
//     required this.plug,
//   });
//
//   factory ElectricStation.fromJson(Map<String, dynamic> json) {
//     final id = json['_id'] as String? ?? '';
//     final oid = json['oid'] as String? ?? '';
//     final tenant = json['tenant'] as Map<String, dynamic>? ?? {};
//     final locationsData = json['location'] as Map<String, dynamic>?;
//
//     LatLng? coordinates;
//     if (locationsData != null && locationsData['coordinates'] != null) {
//       final latitude = locationsData['coordinates'][0] as double?;
//       final longitude = locationsData['coordinates'][1] as double?;
//       if (latitude != null && longitude != null) {
//         coordinates = LatLng(latitude, longitude);
//       }
//     }
//
//     final storeData = json['store'] as Map<String, dynamic>? ?? {};
//     final store = ElectricStore.fromJson(storeData);
//
//     final plug = json['plug'] as Map<String, dynamic>? ?? {};
//
//     return ElectricStation(
//       id: id,
//       oid: oid,
//       tenant: tenant,
//       latLng: coordinates ?? LatLng(0, 0),
//       store: store,
//       plug: plug,
//     );
//   }
//
//   @override
//   LatLng get location => latLng;
// }

///////////////////
