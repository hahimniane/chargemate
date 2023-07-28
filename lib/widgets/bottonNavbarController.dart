import 'package:flutter/material.dart';
import 'package:motion_tab_bar_v2/motion-badge.widget.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';

import '../constants/constants.dart';
import '../service/api_service.dart';
import '../modals/model_stations.dart';
import '../screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
    with TickerProviderStateMixin {
  Stations station = Stations();
  List<ElectricStation>? myData;
  getStation() async {
    myData = await station.getStations(headers);
  }

  TabController? _tabController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MotionTabBar(
        initialSelectedTab: "Home",
        useSafeArea: true, // default: true, apply safe area wrapper
        labels: const ["Home", "QrCode", "Profile"],
        icons: const [
          Icons.home,
          Icons.qr_code,
          Icons.people_alt,
        ],

        // optional badges, length must be same with labels
        // badges: [
        //   // Default Motion Badge Widget
        //   const MotionBadgeWidget(
        //     text: '99+',
        //     textColor: Colors.white, // optional, default to Colors.white
        //     color: Colors.red, // optional, default to Colors.red
        //     size: 18, // optional, default to 18
        //   ),
        //
        //   // custom badge Widget
        //   Container(
        //     color: Colors.black,
        //     padding: const EdgeInsets.all(2),
        //     child: const Text(
        //       '48',
        //       style: TextStyle(
        //         fontSize: 14,
        //         color: Colors.white,
        //       ),
        //     ),
        //   ),
        //
        //   // allow null
        //   null,
        //
        //   // Default Motion Badge Widget with indicator only
        //   // const MotionBadgeWidget(
        //   //   isIndicator: true,
        //   //   color: Colors.red, // optional, default to Colors.red
        //   //   size: 5, // optional, default to 5,
        //   //   show: true, // true / false
        //   // ),
        // ],
        tabSize: 40,
        tabBarHeight: 55,
        textStyle: const TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        tabIconColor: appColor,
        tabIconSize: 28.0,
        tabIconSelectedSize: 26.0,
        tabSelectedColor: appColor,
        tabIconSelectedColor: Colors.white,
        tabBarColor: Colors.white,
        onTabItemSelected: (int value) {
          setState(() {
            _tabController!.index = value;
          });
        },
      ),
      body: TabBarView(
        physics:
            NeverScrollableScrollPhysics(), // swipe navigation handling is not supported
        controller: _tabController,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          // print(myData);
          myData != null
              ? HomeScreen(
                  allStations: myData!,
                )
              : const Center(
                  child: CircularProgressIndicator(),
                ),
          const Center(
            child: Text("Home"),
          ),

          const Center(
            child: Text("Profile"),
          ),
        ],
      ),
    );
    ;
  }

  @override
  void initState() {
    super.initState();
    getStation();
    _tabController = TabController(
      initialIndex: 1,
      length: 3,
      vsync: this,
    );
  }
}
