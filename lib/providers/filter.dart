import 'package:chargemate/service/firebase_servies.dart';
import 'package:flutter/cupertino.dart';

class Filter extends ChangeNotifier {
  // List<String> sockets = ['DC'];
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
  List<String> listOfSocket = ['CHAdeMo', 'CCS', 'Type 2'];
  List<bool> listOfSocketsCheckBoxes = [false, false, false];

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
// bool temVariable=false;

  toggleCheckBox(int index, bool value) {
    listOfCheckBoxValues[index] = value;
    // temVariable=!temVariable;

    notifyListeners();
  }

  toggleSocketCheckBox(int index, bool value) {
    listOfSocketsCheckBoxes[index] = value;
    // temVariable=!temVariable;

    notifyListeners();
  }

  void clearAllFilters() {
    for (int i = 0; i < listOfCheckBoxValues.length; i++) {
      listOfCheckBoxValues[i] = false;
    }
    notifyListeners();
  }
}
