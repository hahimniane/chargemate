import 'package:chargemate/service/firebase_servies.dart';
import 'package:flutter/cupertino.dart';

class Filter extends ChangeNotifier {
  // List<String> sockets = ['DC'];
  /// these are for the brand parameters
  List<String> listOfBrands = [
    'Tesla',
    'Trugo',
    'Zes',
    'Eşarj',
    'OnCharge',
    'Sharz',
    'GioEv',
    'Beefull',
    'Pleco',
    'Astor şarj',
    'Power şarj',
    'Epsis',
    'En Yakıt',
    'Neva şarj',
    'Voltrum',
    'InCharge',
    'Meis Charge',
    'Aksa Şarj',
    'Aramtec',
    'CV Charging',
    'RHG Enertürk',
    'ERC Charge',
    'Şarjon'
  ];
  List<bool> listOfCheckBoxValues = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  toggleCheckBox(int index, bool value) {
    listOfCheckBoxValues[index] = value;
    // temVariable=!temVariable;

    notifyListeners();
  }

  /// these are for the sockets parameters
  List<String> listOfSocket = ['CHAdeMo', 'CCS', 'Type 2'];
  List<bool> listOfSocketsCheckBoxes = [false, false, false];
  toggleSocketCheckBox(int index, bool value) {
    listOfSocketsCheckBoxes[index] = value;
    notifyListeners();
  }

  /// this is for the tesis imakani
  ///
  List<String> listOfAmenities = [
    'restoran',
    'avm',
    'banka',
    'cami',
    'hastane',
    'üniversite'
  ];
  List<bool> listOfAmenitiesCheckBoxes = [
    false,
    false,
    false,
    false,
    false,
    false
  ];
  toggleAmenitiesCheckBox(int index, bool value) {
    listOfAmenitiesCheckBoxes[index] = value;
    notifyListeners();
  }

  /// this is for all common methods in the Filter page.
  void clearAllFilters() {
    for (int i = 0; i < listOfCheckBoxValues.length; i++) {
      listOfCheckBoxValues[i] = false;
    }
    for (int i = 0; i < listOfSocketsCheckBoxes.length; ++i) {
      listOfSocketsCheckBoxes[i] = false;
    }
    notifyListeners();
  }
}
