import 'package:chargemate/screens/home_screen.dart';
import 'package:chargemate/screens/splash_screen.dart';
import 'package:chargemate/service/api_service.dart';
import 'package:chargemate/modals/model_stations.dart';
import 'package:chargemate/widgets/bottonNavbarController.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'constants/constants.dart';
import 'firebase_options.dart';

Future<void> main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Future<List<ElectricStation>?> getStations() async {
    Stations station = Stations();
    List<ElectricStation>? myData = await station.getStations(headers);
    return myData;
  }

  // This widget is the root of your application.
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
        home: SplashScreen()
        // HomeScreen(allStations: getStations()),
        // FirebaseAuth.instance.currentUser?.uid == null
        // BottomNavBar()

        );
  }
}
