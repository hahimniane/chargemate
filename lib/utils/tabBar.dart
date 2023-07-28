import 'package:chargemate/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:map_launcher/map_launcher.dart';

import '../screens/home_screen.dart';

class TabViewUtil extends StatefulWidget {
  @override
  _TabViewUtilState createState() => _TabViewUtilState();
}

class _TabViewUtilState extends State<TabViewUtil>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TabBar(
            indicatorColor: appColor,
            controller: _tabController,
            tabs: [
              Tab(text: 'İstasyon'),
              Tab(text: 'Soket'),
              Tab(text: 'Tesis'),
              Tab(text: 'Yorum'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Replace the following placeholders with your actual Card list widgets
                _buildCardList(LocationType.station),
                _buildCardList(LocationType.socket),
                _buildCardList(LocationType.facility),
                _buildCardList(LocationType.explanation),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCardList(LocationType locationType) {
    switch (locationType) {
      case LocationType.station:
        return stationWidget();
      case LocationType.socket:
        return socketWidget();
      case LocationType.facility:
        return Text('Facility Location');
      case LocationType.explanation:
        return Text('Explanation Location');
      default:
        return Text('Unknown Location');
    }
  }
}

class socketWidget extends StatelessWidget {
  const socketWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          // height: screenSize.height * 0.10,
          // width: screenSize.width * 90,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(
                    height: 30,
                    width: 30,
                    image: AssetImage('assets/icons/img_5.png'),
                  ),
                  Expanded(
                      child: ListTile(
                    title: Text('AC Type 2'),
                    subtitle: Text(textAlign: TextAlign.start, '22 kw'),
                    trailing: bottomModalProperties(
                      iconData: Image(
                        height: 30,
                        width: 30,
                        image: AssetImage('assets/icons/moneyIcon.png'),
                      ),
                      isText: false,
                      name: 'DC',
                      numberOfAvailableNames: '7.5',
                      detail: 'TL/Kw',
                    ),
                  )),
                ],
              )
            ],
          ),
        ),
        Card(
          // height: screenSize.height * 0.10,
          // width: screenSize.width * 90,
          child: Text('Socket Location'),
        ),
      ],
    );
  }
}

class stationWidget extends StatelessWidget {
  const stationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          stationTabBarWidget(
            isItThreeWidgets: true,
            iconUrl: 'assets/icons/stationIcon.png',
            label: 'Mesafe',
            secondLabel: '',
          ),
          stationTabBarWidget(
            isItThreeWidgets: false,
            iconUrl: 'assets/icons/distanceIcon.png',
            label: 'Konum',
            secondLabel: 'Beyazit Mh. Tiyatro Cd.No:25 istanbul',
          ),
          stationTabBarWidget(
            isItThreeWidgets: false,
            iconUrl: 'assets/icons/distanceIcon.png',
            label: 'Açıklama',
            secondLabel: 'Beyazit Mh. Tiyatro Cd.No:25 istanbul',
          ),
          stationTabBarWidget(
            isItThreeWidgets: false,
            iconUrl: 'assets/icons/distanceIcon.png',
            label: 'Müşteri hizmetleri',
            secondLabel: '+905541524403',
          ),
          stationTabBarWidget(
            isItThreeWidgets: false,
            iconUrl: 'assets/icons/distanceIcon.png',
            label: 'çalışma saatleri',
            secondLabel: '09:00/ 21:30',
          ),
          // stationTabBarWidget(
          //   isItThreeWidgets: false,
          //   iconUrl: 'assets/icons/distanceIcon.png',
          //   label: 'Açıklama',
          //   secondLabel: 'Beyazit Mh. Tiyatro Cd.No:25 istanbul dsdfdf',
          // ),
        ],
      ),
    );
  }
}

class stationTabBarWidget extends StatelessWidget {
  final bool isItThreeWidgets;
  final String iconUrl;
  final String label;
  final String secondLabel;

  const stationTabBarWidget({
    super.key,
    this.isItThreeWidgets = false,
    required this.iconUrl,
    required this.label,
    required this.secondLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Material(
                borderRadius: BorderRadius.circular(6),
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ImageIcon(
                    AssetImage(iconUrl),
                    color: appColor,
                    size: 24,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Material(
                borderRadius: BorderRadius.circular(8),
                elevation: 3,
                child: Container(
                  // decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
                  height: 43,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            label,
                            style: TextStyle(
                              color: appColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      isItThreeWidgets
                          ? Expanded(
                              child: RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                      color: appColor,
                                      fontWeight: FontWeight.bold),
                                  text: '1.7 ',
                                  children: [
                                    TextSpan(
                                      text: 'Km/',
                                      style: TextStyle(
                                          color: appColor,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    TextSpan(
                                      text: ' 8',
                                      style: TextStyle(
                                          color: appColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text: ' min',
                                      style: TextStyle(
                                          color: appColor,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : Expanded(
                              flex: 2,
                              child: Text(
                                textAlign: TextAlign.center,
                                secondLabel,
                                style: TextStyle(
                                    color: appColor,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                    ],
                  ),
                  // title: SizedBox(
                  //   width: 10,
                  // ),
                ),
              ),
            ),
            isItThreeWidgets
                ? GestureDetector(
                    onTap: () {
                      _showAvailableMapsModal(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Material(
                        color: appColor,
                        borderRadius: BorderRadius.circular(6),
                        elevation: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.directions_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                : Container(
                    width: 5,
                  ),
          ],
        ),
      ),
    );
  }

  void _showAvailableMapsModal(BuildContext context) async {
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
                  'Select an action',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: Icon(Icons.map),
                title: Text('Open in maps'),
                onTap: () {
                  // Handle "Open in maps" action here
                  // You can use availableMaps[0] to get the first installed map app
                  Navigator.pop(context); // Close the modal sheet
                },
              ),
              ListTile(
                leading: Image.asset('assets/images/googleMapsImage.webp',
                    height: 40, width: 40),
                title: Text('Open in Google maps'),
                onTap: () {
                  // Handle "Open in Google maps" action here
                  // You can use availableMaps[1] to get the second installed map app
                  Navigator.pop(context); // Close the modal sheet
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

enum LocationType {
  station,
  socket,
  facility,
  explanation,
}
