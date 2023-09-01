import 'model_stations.dart';

class ElectricStore {
  final String code;
  final String name;
  final String address;
  final String zipCode;
  final String city;
  final String amenities;

  ElectricStore({
    required this.code,
    required this.name,
    required this.address,
    required this.zipCode,
    required this.city,
    required this.amenities,
  });

  factory ElectricStore.fromElectricStation(ElectricStation station) {
    final storeData = station.store;

    return ElectricStore(
      code: storeData['code'] as String? ?? '',
      name: storeData['name'] as String? ?? '',
      address: storeData['address'] as String? ?? '',
      zipCode: storeData['zipCode'] as String? ?? '',
      city: storeData['city'] as String? ?? '',
      amenities: storeData['amenities'] as String ?? '',
      // List<String>.from(
      //   storeData['amenities'] as List<String>? ?? [],
    );
  }
}
