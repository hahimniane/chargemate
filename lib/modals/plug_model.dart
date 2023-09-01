import 'model_stations.dart';

class Plug {
  final String modelCode;
  final String modelDescription;
  final String modelName;
  final int total;
  final int hasDC;
  final String types;

  Plug({
    required this.modelCode,
    required this.modelDescription,
    required this.modelName,
    required this.total,
    required this.hasDC,
    required this.types,
  });

  factory Plug.fromElectricStation(ElectricStation electricStation) {
    final plugData = electricStation.plug;
    return Plug(
      modelCode: plugData['modelCode'] as String? ?? '',
      modelDescription: plugData['modelDescription'] as String? ?? '',
      modelName: plugData['modelName'] as String? ?? '',
      total: plugData['total'] as int? ?? 0, // Set a default value
      hasDC: plugData['hasDC'] as int? ?? 0, // Set a default value
      types: plugData['types'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'modelCode': modelCode,
      'modelDescription': modelDescription,
      'modelName': modelName,
      'total': total,
      'hasDC': hasDC,
      'types': types,
    };
  }
}
