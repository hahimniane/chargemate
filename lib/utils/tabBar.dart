import 'package:chargemate/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
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
            labelColor: appColor,
            labelStyle: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
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
        return facilityWidget();
      case LocationType.explanation:
        return Text('Explanation Location');
      default:
        return Text('Unknown Location');
    }
  }
}

// class facilityWidget extends StatelessWidget {
//   const facilityWidget({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Text('Facility Location');
//   }
// }

class facilityWidget extends StatelessWidget {
  // Data model for facility items
  final List<FacilityItem> items = [
    FacilityItem('Kafe', Icons.local_cafe),
    FacilityItem("Çocuk Parkı", Icons.child_friendly),
    FacilityItem('Avm', Icons.shopping_bag),
    FacilityItem('WC', Icons.wc),
    FacilityItem('Gym', Icons.fitness_center),
    FacilityItem('Market', Icons.shopping_cart),
    FacilityItem('Yemek', Icons.restaurant),
    FacilityItem('Mescit', Icons.mosque),
    FacilityItem('ATM', Icons.atm),
    FacilityItem('Banka', Icons.money),
    FacilityItem('Otopark', FontAwesomeIcons.squareParking),
    FacilityItem('Oto Yıkama', Icons.local_car_wash),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: (items.length / 2).ceil(), // Calculate the number of rows
      itemBuilder: (context, index) {
        // Build each row with two items side by side
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: buildFacilityTile(items[index * 2]),
              ),
              SizedBox(width: 8), // Add some spacing between items
              Expanded(
                child: (index * 2 + 1 < items.length)
                    ? buildFacilityTile(items[index * 2 + 1])
                    : Container(), // Display an empty container if no more items in the list
              ),
            ],
          ),
        );
      },
    );
  }

  // Helper method to build each facility item tile
  Widget buildFacilityTile(FacilityItem item) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 2, // Spread radius of the shadow
                    blurRadius: 4, // Blur radius of the shadow
                    offset: Offset(
                        0, 0), // Offset of the shadow (vertical, horizontal)
                  ),
                ],
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Icon(
                item.icon,
                color: appColor,
              )),
          SizedBox(width: 6),
          Text(
            item.name,
            style: TextStyle(
              color: appColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

// Data model for each facility item
class FacilityItem {
  final String name;
  final IconData icon;

  FacilityItem(this.name, this.icon);
}

class socketWidget extends StatelessWidget {
  const socketWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.white,
              elevation: 4,
              // height: screenSize.height * 0.10,
              // width: screenSize.width * 90,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image(
                          height: 35,
                          width: 35,
                          image: AssetImage('assets/icons/img_5.png'),
                        ),
                        Expanded(
                            child: ListTile(
                          title: Text(
                            'AC Type 2',
                            style: TextStyle(
                              color: appColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(textAlign: TextAlign.start, '22 kw'),
                          trailing: Column(
                            children: [
                              Expanded(
                                child: Image(
                                  height: 30,
                                  width: 30,
                                  image:
                                      AssetImage('assets/icons/moneyIcon.png'),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              RichText(
                                textScaleFactor: 1,
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context)
                                      .style
                                      .copyWith(
                                        fontSize: DefaultTextStyle.of(context)
                                            .style
                                            .fontSize,
                                        textBaseline:
                                            DefaultTextStyle.of(context)
                                                .style
                                                .textBaseline,

                                        // Adjust this value to make the text closer
                                      ),
                                  children: [
                                    TextSpan(
                                      text: '7.5',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: appColor,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'TL/Kw',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        // color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          // bottomModalProperties(
                          //   iconData: Image(
                          //     height: 30,
                          //     width: 30,
                          //     image: AssetImage('assets/icons/moneyIcon.png'),
                          //   ),
                          //   isText: false,
                          //   name: 'DC',
                          //   numberOfAvailableNames: '7.5',
                          //   detail: 'TL/Kw',
                          // ),
                        )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: appColor),
                              child: Center(
                                child: TextButton(
                                  style: ButtonStyle(),
                                  onPressed: () {},
                                  child: Center(
                                    child: Text(
                                      'Start Charging',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: appColor),
                                  borderRadius: BorderRadius.circular(6),
                                  // color: Colors.white
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Reserve',
                                    style: TextStyle(
                                        color: appColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Expanded(
                            flex: 2,
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xff56B78B),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Icon(
                                      Icons.check_circle_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Center(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 2.0),
                                        child: Text(
                                          'Available',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Expanded(
                          //   child: Container(
                          //
                          //     decoration: BoxDecoration(
                          //       border: Border.all(color: appColor),
                          //       borderRadius: BorderRadius.circular(6),
                          //       // color: Colors.green
                          //     ),
                          //
                          //     child: TextButton(
                          //       onPressed: () {},
                          //       child: ListTile(
                          //         title: Text('Available',style: TextStyle(
                          //             color:Colors.black,
                          //             fontWeight: FontWeight.w400
                          //         ),),
                          //         leading: Icon(
                          //             Icons.adb
                          //         ),
                          //
                          //
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    )
                  ],
                ),
              ),
            ),
          );
        });
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
