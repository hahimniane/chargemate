import 'package:chargemate/screens/home_screen.dart';
import 'package:chargemate/screens/introduction_page.dart';
import 'package:chargemate/screens/phone_number_input_page.dart';
import 'package:chargemate/screens/registration/login_page.dart';
import 'package:chargemate/screens/splash_screen.dart';
import 'package:chargemate/service/api_service.dart';
import 'package:chargemate/modals/model_stations.dart';
import 'package:chargemate/widgets/bottonNavbarController.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'constants/constants.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  bool isFirstTimeUser = prefs.getBool('firstTimeUser') ?? true;

  if (isFirstTimeUser) {
    print('the user exits and is a first time user');
  } else {
    print('the user exists but is not a first time user');
  }

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(
        firstTimeUser: isFirstTimeUser,
      ), // Pass the firstTimeUser value to MyApp
    ),
  );
}

class MyApp extends StatefulWidget {
  final bool firstTimeUser;

  MyApp({required this.firstTimeUser, Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<List<ElectricStation>> allStationsFuture;
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  List<ElectricStation> allStations = []; // Store the fetched data

  @override
  void initState() {
    super.initState();
    allStationsFuture = getAllStations();
  }

  Future<List<ElectricStation>> getAllStations() async {
    Stations station = Stations();
    List<ElectricStation>? myData = await station.getStations(headers);
    return myData ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ... (other MaterialApp properties)
      home: widget.firstTimeUser
          ? SplashScreen()
          : StreamBuilder<User?>(
              stream: firebaseAuth.authStateChanges(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.active) {
                  if (snapshot.data == null) {
                    return LoginPage();
                  } else if (snapshot.hasData) {
                    return FutureBuilder<List<ElectricStation>>(
                      future: allStationsFuture,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Scaffold(
                            body: Center(
                              child: CircularProgressIndicator(),
                            ),
                          );
                        } else if (snapshot.hasData) {
                          allStations =
                              snapshot.data!; // Store the fetched data
                          return allStations.isNotEmpty
                              ? HomeScreen(allStations: allStations)
                              : Scaffold(
                                  body: Center(
                                    child: Text('Istasyonlari bos'),
                                  ),
                                );
                        } else {
                          return Scaffold(
                            body: Center(
                              child: Text('Error loading data'),
                            ),
                          );
                        }
                      },
                    );
                  }
                }
                return Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
            ),
    );
  }
}
