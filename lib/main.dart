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
  Future<List<ElectricStation>> getAllStations() async {
    Stations station = Stations();
    List<ElectricStation>? myData = await station.getStations(headers);
    setState(() {
      allStations = myData ?? [];
    });

    return myData ?? [];
  }

  List<ElectricStation>? allStations;
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  initState() {
    super.initState();
    // allStations = await getAllStations();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff145063)),
        useMaterial3: true,
      ),
      // Show appropriate screen based on firstTimeUser value
      home: widget.firstTimeUser
          ? SplashScreen()
          : (firebaseAuth.currentUser == null
              ? LoginPage()
              : FutureBuilder<List<ElectricStation>>(
                  future: getAllStations(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                          child: SizedBox(
                              height: 30,
                              width: 30,
                              child: CircularProgressIndicator()));
                    } else {
                      return HomeScreen(allStations: allStations!);
                    }
                  },
                )),
    );
  }
}
