import 'package:chargemate/constants/constants.dart';
import 'package:chargemate/modals/distance_matrix_model.dart' as DistanceMatrix;
import 'package:chargemate/screens/drawer_pages/account/profile_page.dart';
import 'package:chargemate/screens/station_detailed_page.dart';
import 'package:chargemate/service/api_service.dart';
import 'package:chargemate/modals/model_stations.dart';
import 'package:chargemate/providers/favorite_station.dart';
import 'package:chargemate/service/comment_api_services.dart';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:provider/provider.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:search_choices/search_choices.dart';
import 'package:searchfield/searchfield.dart';
import 'package:text_scroll/text_scroll.dart';
import 'package:textfield_search/textfield_search.dart';

import '../enums.dart';
import '../figma/page-1/filter.dart';
import '../figma/page-1/profile.dart';
import '../main.dart';
import '../modals/distance_matrix_model.dart';
import '../modals/electric_store.dart';
import '../providers/calculate_distance_provider.dart';
import '../service/favorite_station_api_service.dart';
import '../service/user_location_service.dart';
import '../utils/convert_image_to_icon.dart';
import '../widgets/drawer.dart';

import 'filter_page.dart';



class HomeScreen extends StatefulWidget {
  final List<ElectricStation> allStations;

  HomeScreen({required this.allStations});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  Map<int, Distance> distanceCache = {};
  MapType mapType = MapType.normal;
  Stations station = Stations();
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  bool isDrawerOpen = false;
  late ClusterManager<ElectricStation> _manager;

  late GoogleMapController googleMapController;

  Set<Marker> markers = Set();
  CameraPosition? initialCameraPosition;
  int _selectedIndex = 0;

  final List<IconData> dynamicIcons = [
    Icons.local_cafe,
    Icons.restaurant,
    Icons.fastfood,
    Icons.local_pizza,
  ];

  static const label = "Some Label";
  var dummyList = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  TextEditingController myController = TextEditingController();

  int numberCalled=0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  late TabController _tabController;
  LocationService locationService = LocationService();
  LatLng? userLocation;
  Future<LatLng> location() async {
    Position position = await locationService.determinePosition();
    // print(position.longitude); //Output: 80.24599079
    // print(position.latitude);
    return LatLng(position.latitude, position.longitude);
  }

  Future<void> getLocationAndInitialize() async {
    _manager = _initClusterManager();
    userLocation = await location();
    initialCameraPosition = CameraPosition(
        target: LatLng(userLocation!.latitude, userLocation!.longitude),
        zoom: 14.0);
    setState(() {}); // Trigger a rebuild after obtaining the location
  }

  Stations stations = Stations();
  _printLatestValue() {
    // print("Textfield value: ${myController.text}");
  }
  List<String> getDistinctAmenities(List<ElectricStation> stations) {
    Set<String> distinctAmenities = Set<String>();

    for (var station in stations) {
      ElectricStore store = ElectricStore.fromElectricStation(station);

      // Iterate through the store's amenities
      for (var amenity in store.amenities) {
        // Standardize the amenity name by converting to lowercase and removing extra spaces
        var standardizedAmenity = amenity.trim().toLowerCase();

        // Add the standardized amenity to the set
        distinctAmenities.add(standardizedAmenity);
      }
    }

    print('The list of amenities are:');
    for (var amenity in distinctAmenities) {
      print(amenity);
    }

    return distinctAmenities.toList();
  }

  @override
  void initState() {
// getDistinctAmenities(widget.allStations);
    myController.addListener(_printLatestValue);
    for (ElectricStation chargingStation in widget.allStations) {
      ElectricStore store = ElectricStore.fromElectricStation(chargingStation);
      // print(chargingStation.plug);
      // print('//////////////////////////////////');
    }
    super.initState();
    getLocationAndInitialize().then((value) {


      Provider.of<calculateDistanceProvider>(context, listen: false).calculateDistance(userLocation!);


    }).then((value){
      List<Distance?> distanceData= Provider.of<calculateDistanceProvider>(context, listen: false).calculatedDistance;
      print('printing out from the init State');
      for(Distance? distanceDat in distanceData){
        print(
            'the computed distnace ${distanceDat!.text}');
      }

    });
    // Provider.of<FavoriteStation>(context, listen: false).calculateDistance(userLocation!);
    _tabController = TabController(
      initialIndex: 1,
      length: 4,
      vsync: this,
    );


  }

  ClusterManager<ElectricStation> _initClusterManager() {
    // print('from initi clusterManager ${widget.allStations.length}');
    return ClusterManager<ElectricStation>(widget.allStations, _updateMarkers,
        markerBuilder: _markerBuilder);
  }

  void _updateMarkers(Set<Marker> markers) {
    setState(() {
      this.markers = markers;
    });
  }

  @override
  Widget build(BuildContext context) {


    // print('the device padding is ${MediaQuery.of(context).viewPadding.bottom}');
    // print('Device has notch ${Device.get().hasNotch}');
    Completer<GoogleMapController> _controller = Completer();
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          key: _key,
          // drawer: drawer(),
          body: SafeArea(
            top: false,
            bottom: false,
            // bottom:
            //     MediaQuery.of(context).viewPadding.bottom == 0.0 ? false : true,
            // Device.get().hasNotch ? true : false,
            child: Stack(alignment: Alignment.center, children: [
              activeView == screenViewTypes.mapView
                  ? initialCameraPosition != null
                      ? GoogleMap(
                          mapType: mapType,
                          initialCameraPosition:
                              initialCameraPosition!, // Use the calculated position
                          markers: markers,
                          myLocationEnabled: true,
                          myLocationButtonEnabled: false,
                          onMapCreated: (GoogleMapController controller) {
                            googleMapController = controller;
                            _controller.complete(controller);
                            _manager.setMapId(controller.mapId);
                          },
                          onCameraMove: _manager.onCameraMove,
                          onCameraIdle: _manager.updateMap,
                        )
                      : Center(
                          child: Container(
                            child: CircularProgressIndicator(
                              color: appColor,
                            ),
                          ),
                        )
                  : stationsListViewWidget(
                      stations: widget.allStations,
                    ),
              Positioned(
                top: 50,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: Card(
                        //     elevation: 3,
                        //     child: Container(
                        //       height: 40,
                        //       width: 40,
                        //       decoration: BoxDecoration(
                        //           color: Colors.white,
                        //           borderRadius: BorderRadius.circular(12)),
                        //       child: IconButton(
                        //         icon: Icon(
                        //           Icons.menu,
                        //           color: Colors.black,
                        //           size: 25,
                        //         ),
                        //         onPressed: () {
                        //           _key.currentState!.openDrawer();
                        //         },
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Material(
                              // color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              elevation: 2,
                              child:
                                  // TextField(
                                  //
                                  //   style: TextStyle(
                                  //     color:
                                  //         Colors.black, // Set the color of the text
                                  //   ),
                                  //   decoration: InputDecoration(
                                  //     prefixIcon: InkWell(
                                  //       onTap: () {
                                  //         _key.currentState!.openDrawer();
                                  //       },
                                  //       child: Icon(
                                  //         Icons.menu,
                                  //         color: appColor,
                                  //       ),
                                  //     ),
                                  //     hintText: 'Search stations',
                                  //     border: InputBorder.none,
                                  //     contentPadding: EdgeInsets.all(16),
                                  //     suffixIcon: IconButton(
                                  //       color: appColor,
                                  //       icon: Icon(
                                  //         FontAwesomeIcons.sliders,
                                  //       ),
                                  //       onPressed: () {
                                  //         Navigator.push(
                                  //           context,
                                  //           PageRouteBuilder(
                                  //             transitionDuration:
                                  //                 Duration(milliseconds: 500),
                                  //             pageBuilder: (BuildContext context,
                                  //                 Animation<double> animation,
                                  //                 Animation<double>
                                  //                     secondaryAnimation) {
                                  //               return FadeTransition(
                                  //                 opacity: animation,
                                  //                 child: FilterPage(),
                                  //               );
                                  //             },
                                  //           ),
                                  //         );
                                  //       },
                                  //     ),
                                  //   ),
                                  //   onChanged:
                                  // ),
//actual search field.
                                  SearchField<ElectricStation>(
                                suggestionsDecoration: SuggestionDecoration(),
                                onSubmit: (value) {
                                  // print('the chosen value is $value ');
                                },
                                onSuggestionTap: (station) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              StationDetailedPage(
                                                  station: station.item! ,)));

                                  // print(
                                  //     'the clicked station is ${station.item!.id}');
                                },
                                searchInputDecoration: InputDecoration(
                                  prefixIcon: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                          transitionDuration:
                                          Duration(milliseconds: 500),
                                          pageBuilder: (BuildContext context,
                                              Animation<double> animation,
                                              Animation<double>
                                              secondaryAnimation) {
                                            return FadeTransition(
                                              opacity: animation,
                                              child: ProfileCard(),
                                            );
                                          },
                                        ),
                                      );



                                      // _key.currentState!.openDrawer();
                                      //ProfileCard
                                    },
                                    child: Icon(
                                      Icons.person,
                                      color: appColor,
                                    ),
                                  ),
                                  hintText: 'Yakın istasyonu bul',
                                  hintStyle: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(16),
                                  suffixIcon: IconButton(
                                    color: appColor,
                                    icon: Icon(
                                      FontAwesomeIcons.sliders,
                                    ),
                                    onPressed: () {
                                      Provider.of<calculateDistanceProvider>(context, listen: false).shouldSetCalculatedDistanceBeCleared=true;
                                      // Navigator.push(
                                      //   context,
                                      //   PageRouteBuilder(
                                      //     transitionDuration:
                                      //         Duration(milliseconds: 500),
                                      //     pageBuilder: (BuildContext context,
                                      //         Animation<double> animation,
                                      //         Animation<double>
                                      //             secondaryAnimation) {
                                      //       return FadeTransition(
                                      //         opacity: animation,
                                      //         child: FilterPage(),
                                      //       );
                                      //     },
                                      //   ),
                                      // );
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>FilterPage()));
                                    },
                                  ),
                                ),
                                suggestions: widget.allStations
                                    .map(
                                      (station) =>
                                          SearchFieldListItem<ElectricStation>(
                                        station.store['name'],
                                        item: station,
                                        // Use child to show Custom Widgets in the suggestions
                                        // defaults to Text widget
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              // CircleAvatar(
                                              //   backgroundImage:
                                              //       NetworkImage(e),
                                              // ),
                                              // SizedBox(
                                              //   width: 10,
                                              // ),
                                              Text(
                                                station.store['name'],
                                                style: GoogleFonts.montserrat(
                                                    color: appColor),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
//                                   TextFieldSearch(
//                                 // getSelectedValue: (value) {
//                                 //   print('the selected value is $value');
//                                 // },
//                                 textStyle: TextStyle(
//                                   color:
//                                       Colors.black, // Set the color of the text
//                                 ),
//                                 decoration: InputDecoration(
//                                   prefixIcon: InkWell(
//                                     onTap: () {
//                                       _key.currentState!.openDrawer();
//                                     },
//                                     child: Icon(
//                                       Icons.menu,
//                                       color: appColor,
//                                     ),
//                                   ),
//                                   hintText: 'Yakın istasyonu bul',
//                                   hintStyle: GoogleFonts.montserrat(
//                                       color: Colors.black,
//                                       fontWeight: FontWeight.w400),
//                                   border: InputBorder.none,
//                                   contentPadding: EdgeInsets.all(16),
//                                   suffixIcon: IconButton(
//                                     color: appColor,
//                                     icon: Icon(
//                                       FontAwesomeIcons.sliders,
//                                     ),
//                                     onPressed: () {
//                                       Navigator.push(
//                                         context,
//                                         PageRouteBuilder(
//                                           transitionDuration:
//                                               Duration(milliseconds: 500),
//                                           pageBuilder: (BuildContext context,
//                                               Animation<double> animation,
//                                               Animation<double>
//                                                   secondaryAnimation) {
//                                             return FadeTransition(
//                                               opacity: animation,
//                                               child: FilterPage(),
//                                             );
//                                           },
//                                         ),
//                                       );
//                                     },
//                                   ),
//                                 ),
//                                 initialList: dummyList,
//                                 label: 'item 1',
//                                 controller: myController,
//                               )),
                              //ends here
                            ),
                          ),
                        )
                      ],
                    ),
                    // Container(
                    //   // height: 159,
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.only(
                    //       bottomLeft: Radius.circular(15),
                    //       bottomRight: Radius.circular(15),
                    //     ),
                    //   ),
                    //
                    //   // Column(
                    //   //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   //   children: [
                    //   //     // Padding(
                    //   //     //   padding: const EdgeInsets.symmetric(vertical: 8.0),
                    //   //     //   child: Container(
                    //   //     //     color: Colors.white70,
                    //   //     //     height: 36.43,
                    //   //     //     width: double.infinity,
                    //   //     //     child: Image(
                    //   //     //       width: 200,
                    //   //     //       // color: Colors.black,
                    //   //     //       image: AssetImage(
                    //   //     //         'assets/images/logos/img.png',
                    //   //     //       ),
                    //   //     //     ),
                    //   //     //   ),
                    //   //     // ),
                    //   //
                    //   //     // Row(
                    //   //     //   children: [
                    //   //     //     Padding(
                    //   //     //       padding: const EdgeInsets.all(8.0),
                    //   //     //       child: Card(
                    //   //     //         elevation: 3,
                    //   //     //         child: Container(
                    //   //     //           height: 48,
                    //   //     //           width: 48,
                    //   //     //           decoration: BoxDecoration(
                    //   //     //               color: Colors.white,
                    //   //     //               borderRadius: BorderRadius.circular(12)),
                    //   //     //           child: IconButton(
                    //   //     //             icon: Icon(
                    //   //     //               Icons.menu,
                    //   //     //               color: Colors.black,
                    //   //     //               size: 25,
                    //   //     //             ),
                    //   //     //             onPressed: () {
                    //   //     //               _key.currentState!.openDrawer();
                    //   //     //             },
                    //   //     //           ),
                    //   //     //         ),
                    //   //     //       ),
                    //   //     //     ),
                    //   //     //     Expanded(
                    //   //     //       child: Padding(
                    //   //     //         padding: const EdgeInsets.only(right: 16.0),
                    //   //     //         child: Material(
                    //   //     //           borderRadius: BorderRadius.circular(12),
                    //   //     //           elevation: 4,
                    //   //     //           child: TextField(
                    //   //     //             style: TextStyle(
                    //   //     //               color: Colors
                    //   //     //                   .black, // Set the color of the text
                    //   //     //             ),
                    //   //     //             decoration: InputDecoration(
                    //   //     //               hintText: 'Search stations',
                    //   //     //               border: InputBorder.none,
                    //   //     //               contentPadding: EdgeInsets.all(16),
                    //   //     //               suffixIcon: IconButton(
                    //   //     //                 color: Colors.black,
                    //   //     //                 icon: Icon(
                    //   //     //                   FontAwesomeIcons.sliders,
                    //   //     //                 ),
                    //   //     //                 onPressed: () {
                    //   //     //                   Navigator.push(
                    //   //     //                     context,
                    //   //     //                     PageRouteBuilder(
                    //   //     //                       transitionDuration:
                    //   //     //                           Duration(milliseconds: 500),
                    //   //     //                       pageBuilder: (BuildContext
                    //   //     //                               context,
                    //   //     //                           Animation<double> animation,
                    //   //     //                           Animation<double>
                    //   //     //                               secondaryAnimation) {
                    //   //     //                         return FadeTransition(
                    //   //     //                           opacity: animation,
                    //   //     //                           child: FilterPage(),
                    //   //     //                         );
                    //   //     //                       },
                    //   //     //                     ),
                    //   //     //                   );
                    //   //     //                 },
                    //   //     //               ),
                    //   //     //             ),
                    //   //     //             onChanged: (value) {
                    //   //     //               // Handle search bar changes
                    //   //     //             },
                    //   //     //           ),
                    //   //     //         ),
                    //   //     //       ),
                    //   //     //     ),
                    //   //     //   ],
                    //   //     // ),
                    //   //   ],
                    //   // ),
                    // ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     // Padding(
                    //     //   padding: const EdgeInsets.all(8.0),
                    //     //   child: Card(
                    //     //     elevation: 3,
                    //     //     child: Container(
                    //     //       height: 40,
                    //     //       width: 40,
                    //     //       decoration: BoxDecoration(
                    //     //           color: Colors.white,
                    //     //           borderRadius: BorderRadius.circular(12)),
                    //     //       child: IconButton(
                    //     //         icon: Icon(
                    //     //           Icons.menu,
                    //     //           color: Colors.black,
                    //     //           size: 25,
                    //     //         ),
                    //     //         onPressed: () {
                    //     //           _key.currentState!.openDrawer();
                    //     //         },
                    //     //       ),
                    //     //     ),
                    //     //   ),
                    //     // ),
                    //     Expanded(
                    //       child: Padding(
                    //         padding: const EdgeInsets.only(right: 16.0),
                    //         child: Material(
                    //           borderRadius: BorderRadius.circular(12),
                    //           elevation: 2,
                    //           child: TextField(
                    //             style: TextStyle(
                    //               color:
                    //                   Colors.black, // Set the color of the text
                    //             ),
                    //             decoration: InputDecoration(
                    //               prefixIcon: InkWell(
                    //                 onTap: () {
                    //                   _key.currentState!.openDrawer();
                    //                 },
                    //                 child: Icon(
                    //                   Icons.menu,
                    //                 ),
                    //               ),
                    //               hintText: 'Search stations',
                    //               border: InputBorder.none,
                    //               contentPadding: EdgeInsets.all(16),
                    //               suffixIcon: IconButton(
                    //                 color: Colors.black,
                    //                 icon: Icon(
                    //                   FontAwesomeIcons.sliders,
                    //                 ),
                    //                 onPressed: () {
                    //                   Navigator.push(
                    //                     context,
                    //                     PageRouteBuilder(
                    //                       transitionDuration:
                    //                           Duration(milliseconds: 500),
                    //                       pageBuilder: (BuildContext context,
                    //                           Animation<double> animation,
                    //                           Animation<double>
                    //                               secondaryAnimation) {
                    //                         return FadeTransition(
                    //                           opacity: animation,
                    //                           child: FilterPage(),
                    //                         );
                    //                       },
                    //                     ),
                    //                   );
                    //                 },
                    //               ),
                    //             ),
                    //             onChanged: (value) {
                    //               // Handle search bar changes
                    //             },
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
                // Container(
                //   height: 159,
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     borderRadius: BorderRadius.only(
                //       bottomLeft: Radius.circular(15),
                //       bottomRight: Radius.circular(15),
                //     ),
                //   ),
                //   child: Column(
                //     children: [
                //       Padding(
                //         padding: const EdgeInsets.symmetric(vertical: 8.0),
                //         child: Container(
                //           color: Colors.white,
                //           height: 36.43,
                //           width: 200,
                //           child: Image(
                //             image: AssetImage('assets/images/logos/img.png'),
                //           ),
                //         ),
                //       ),
                //       Row(
                //         children: [
                //           Padding(
                //             padding: const EdgeInsets.all(8.0),
                //             child: Card(
                //               elevation: 3,
                //               child: Container(
                //                 height: 48,
                //                 width: 48,
                //                 decoration: BoxDecoration(
                //                     color: Colors.white,
                //                     borderRadius: BorderRadius.circular(12)),
                //                 child: IconButton(
                //                   icon: Icon(
                //                     Icons.menu,
                //                     color: Colors.black,
                //                     size: 25,
                //                   ),
                //                   onPressed: () {
                //                     _key.currentState!.openDrawer();
                //                   },
                //                 ),
                //               ),
                //             ),
                //           ),
                //           Expanded(
                //             child: Padding(
                //               padding: const EdgeInsets.only(right: 16.0),
                //               child: Material(
                //                 borderRadius: BorderRadius.circular(12),
                //                 elevation: 4,
                //                 child: TextField(
                //                   style: TextStyle(
                //                     color:
                //                         Colors.black, // Set the color of the text
                //                   ),
                //                   decoration: InputDecoration(
                //                     hintText: 'Search stations',
                //                     border: InputBorder.none,
                //                     contentPadding: EdgeInsets.all(16),
                //                     suffixIcon: IconButton(
                //                       color: Colors.black,
                //                       icon: Icon(
                //                         FontAwesomeIcons.sliders,
                //                       ),
                //                       onPressed: () {
                //                         Navigator.push(
                //                           context,
                //                           PageRouteBuilder(
                //                             transitionDuration:
                //                                 Duration(milliseconds: 500),
                //                             pageBuilder: (BuildContext context,
                //                                 Animation<double> animation,
                //                                 Animation<double>
                //                                     secondaryAnimation) {
                //                               return FadeTransition(
                //                                 opacity: animation,
                //                                 child: FilterPage(),
                //                               );
                //                             },
                //                           ),
                //                         );
                //                       },
                //                     ),
                //                   ),
                //                   onChanged: (value) {
                //                     // Handle search bar changes
                //                   },
                //                 ),
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
              ),
              // Positioned(
              //   top: 175,
              //
              //   // left: 20,
              //   // width: MediaQuery.of(context).size.width * 0.95,
              //   // right: 0,
              //   child: Container(
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.circular(8),
              //     ),
              //     width: 365,
              //     height: 58,
              //     child: Row(
              //       children: [
              //         Expanded(
              //           child: GestureDetector(
              //             onTap: () {
              //               changeActiveButton(screenViewTypes.mapView);
              //             },
              //             child: Padding(
              //               padding: const EdgeInsets.all(8.0),
              //               child: Material(
              //                 elevation:
              //                     activeView != screenViewTypes.mapView ? 5 : 0.5,
              //                 child: Container(
              //                   width: 175,
              //                   height: 45,
              //                   child: Row(
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Expanded(
              //                         child: Icon(
              //                           Icons.map_outlined,
              //                           color: appColor,
              //                         ),
              //                       ),
              //                       Expanded(
              //                         flex: 3,
              //                         child: Text(
              //                           'Map View',
              //                           style: TextStyle(
              //                             fontWeight: FontWeight.bold,
              //                             fontSize: 16,
              //                             color: appColor,
              //                           ),
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                   decoration: BoxDecoration(
              //                     color: Colors.white,
              //                     borderRadius: BorderRadius.circular(20),
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //         Expanded(
              //           child: GestureDetector(
              //             onTap: () {
              //               changeActiveButton(screenViewTypes.listView);
              //             },
              //             child: Padding(
              //               padding: const EdgeInsets.all(8.0),
              //               child: Material(
              //                 elevation: activeView != screenViewTypes.listView
              //                     ? 5
              //                     : 0.5,
              //                 child: Container(
              //                   width: 175,
              //                   height: 45,
              //                   child: Row(
              //                     mainAxisAlignment: MainAxisAlignment.center,
              //                     children: [
              //                       Expanded(
              //                         child: Icon(
              //                           Icons.menu_sharp,
              //                           color: appColor,
              //                         ),
              //                       ),
              //                       Expanded(
              //                         flex: 3,
              //                         child: Text(
              //                           'List View',
              //                           style: TextStyle(
              //                             fontWeight: FontWeight.bold,
              //                             fontSize: 16,
              //                             color: appColor,
              //                           ),
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                   decoration: BoxDecoration(
              //                     color: Colors.white,
              //                     borderRadius: BorderRadius.circular(20),
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              activeView == screenViewTypes.mapView
                  ? Positioned(
                      bottom: 20,
                      left: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        height: 150, // Adjust the height as needed
                        child: userLocation != null
                            ? FutureBuilder<List<ElectricStation>>(
                                future: station.getNearByStations(
                                    headers: headers,
                                    latitude: userLocation!.latitude,
                                    longitude: userLocation!.longitude),
                                builder: (context, firstSnapshot) {
                                  // print('FutureBuilder is being called');
                                  if(firstSnapshot.hasError){
                                    return Text('there was an error'
                                    );
                                  }


                                  if (firstSnapshot.hasData) {
                                    print('from the FutureBuilder');

                                    return ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: List.generate(
                                        firstSnapshot.data!.length < 5
                                            ? firstSnapshot.data!.length
                                            : 5,
                                            (index) {
                                              print(firstSnapshot.data?[index].id);
                                          ElectricStore store = ElectricStore.fromElectricStation(
                                              firstSnapshot.data![index]);



                                          return GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      StationDetailedPage(station: firstSnapshot.data![index]),
                                                ),
                                              );
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(12)),
                                                width: MediaQuery.of(context).size.width * 0.60,
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 4.0),
                                                      child: Text(
                                                        textAlign: TextAlign.center,
                                                        '${widget.allStations[index].tenant['name']}- ${store.name}',
                                                        style: GoogleFonts.montserrat(
                                                            fontWeight: FontWeight.bold,
                                                            color: appColor),
                                                      ),
                                                    ),
                                                    SizedBox(height: 5),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.only(
                                                              right: 8.0, left: 8),
                                                          child: Column(
                                                            children: [
                                                              Icon(
                                                                Icons.directions,
                                                                color: appColor,
                                                              ),
                                                              Text(
                                                                'Yol',
                                                                style: GoogleFonts.montserrat(
                                                                    color: appColor,
                                                                    fontWeight: FontWeight.bold),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(width: 10),
                                                        Expanded(
                                                          child: Provider.of<calculateDistanceProvider>(context, listen: true).calculatedDistance.isNotEmpty? Text(
                                                            textAlign: TextAlign.center,
                                                            '${ Provider.of<calculateDistanceProvider>(context, listen: true).calculatedDistance[index].text} ${store.address}',
                                                            style: GoogleFonts.montserrat(
                                                              fontSize: 12,
                                                            ),
                                                          ):
                                                             Container(
                                                               height: 20,
                                                               width: 20,
                                                               child: Center(
                                                                 child: CircularProgressIndicator(),
                                                               ),
                                                             )
                                                          // FutureBuilder<DistanceData?>(
                                                          //   future:
                                                          //   Stations.getDistanceBetweenTwoPoints(
                                                          //     origin: LatLng(userLocation!.latitude,
                                                          //         userLocation!.longitude),
                                                          //     destination: LatLng(
                                                          //       widget.allStations[index].location.latitude,
                                                          //       widget.allStations[index].location.longitude,
                                                          //     ),
                                                          //   ),
                                                          //   builder: (context, snapshot,) {
                                                          //     print('inside future builder called $numberCalled');
                                                          //     // print('it means it doesnt contain it');
                                                          //     ++numberCalled;
                                                          //     // print('called it $numberCalled');
                                                          //     if (snapshot.hasData) {
                                                          //       if (!distanceCache.containsKey(index)) {
                                                          //         distanceCache[index] =
                                                          //         (snapshot.data!.rows.isNotEmpty
                                                          //             ? snapshot.data!.rows[0].elements.isNotEmpty
                                                          //             ? snapshot.data!.rows[0].elements[0]
                                                          //             .distance
                                                          //             : null
                                                          //             : null)!;
                                                          //
                                                          //       }
                                                          //
                                                          //       DistanceMatrix.Distance? distance =
                                                          //       distanceCache[index];
                                                          //
                                                          //
                                                          //       return Text(
                                                          //         textAlign: TextAlign.center,
                                                          //         '${distance?.text} ${store.address}',
                                                          //         style: GoogleFonts.montserrat(
                                                          //           fontSize: 12,
                                                          //         ),
                                                          //       );
                                                          //     } else if (snapshot.hasError) {
                                                          //       // Handle error case
                                                          //       return Text('Error fetching distance');
                                                          //     } else {
                                                          //       return CircularProgressIndicator();
                                                          //     }
                                                          //   },
                                                          // ),
                                                        )
                                                      ],
                                                    ),
                                                    SingleChildScrollView(
                                                      scrollDirection: Axis.horizontal,
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: placeIcons.keys.map((placeName) {
                                                          final iconData = placeIcons[placeName];
                                                          return Padding(
                                                            padding: const EdgeInsets.all(8.0),
                                                            child: Icon(
                                                              iconData,
                                                              size: 15,
                                                              color: appColor,
                                                            ),
                                                          );
                                                        }).toList(),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    );
                                  } else if (firstSnapshot.hasError) {
                                    return Text('There was an error');
                                  } else {
                                    return Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  }


                                  // if (firstSnapshot.hasData) {
                                  //   return ListView.builder(
                                  //     shrinkWrap: true,
                                  //     scrollDirection: Axis.horizontal,
                                  //     itemCount: firstSnapshot.data!.length < 5
                                  //         ? firstSnapshot.data!.length
                                  //         : 5,
                                  //     // itemCount: snapshot.data
                                  //     //     ?.length, // Replace with your actual data count
                                  //     itemBuilder: (context, index) {
                                  //       // Future<DistanceMatrix.DistanceData?>
                                  //       //     distanceData =
                                  //       //     Stations.getDistanceBetweenTwoPoints(
                                  //       //   origin: LatLng(userLocation!.latitude,
                                  //       //       userLocation!.longitude),
                                  //       //   destination: LatLng(
                                  //       //     widget.allStations[index].location
                                  //       //         .latitude,
                                  //       //     widget.allStations[index].location
                                  //       //         .latitude,
                                  //       //   ),
                                  //       // );
                                  //       // print(
                                  //       //     'this is the distance result ${distanceData.toString()}');
                                  //       // DistanceMatrix.Distance? distance;
                                  //       // if (distanceData!.rows.isNotEmpty) {
                                  //       //   DistanceMatrix.RowElements row = distanceData.rows[0];
                                  //       //   if (row.elements.isNotEmpty) {
                                  //       //     DistanceMatrix.Element element = row.elements[0];
                                  //       //     if (element.status == 'OK') {
                                  //       //       distance = element.distance;
                                  //       //       print('Duration: ${distance.text}');
                                  //       //       print('Value: ${distance.value}  meters');
                                  //       //     } else {
                                  //       //       print('Element status is not OK');
                                  //       //     }
                                  //       //   } else {
                                  //       //     print('No elements in the row');
                                  //       //   }
                                  //       // } else {
                                  //       //   print('No rows in the distance data');
                                  //       // }
                                  //
                                  //       ElectricStore store =
                                  //           ElectricStore.fromElectricStation(
                                  //               firstSnapshot.data![index]);
                                  //       print(store.amenities.length);
                                  //       // Replace with your Card widget implementation
                                  //       return GestureDetector(
                                  //         onTap: () {
                                  //           Navigator.push(
                                  //               context,
                                  //               MaterialPageRoute(
                                  //                   builder: (context) =>
                                  //                       StationDetailedPage(
                                  //                           station: firstSnapshot
                                  //                               .data![index])));
                                  //         },
                                  //         child: Padding(
                                  //           padding: const EdgeInsets.all(8.0),
                                  //           child: Container(
                                  //             decoration: BoxDecoration(
                                  //                 color: Colors.white,
                                  //                 borderRadius:
                                  //                     BorderRadius.circular(12)),
                                  //             width: MediaQuery.of(context)
                                  //                     .size
                                  //                     .width *
                                  //                 0.60,
                                  //             child: Column(
                                  //               mainAxisSize: MainAxisSize.min,
                                  //               children: [
                                  //                 Padding(
                                  //                   padding:
                                  //                       const EdgeInsets.only(
                                  //                           top: 4.0),
                                  //                   child: Text(
                                  //                     textAlign: TextAlign.center,
                                  //                     '${widget.allStations[index].tenant['name']}- ${store.name}',
                                  //                     style:
                                  //                         GoogleFonts.montserrat(
                                  //                             fontWeight:
                                  //                                 FontWeight.bold,
                                  //                             color: appColor),
                                  //                   ),
                                  //                 ),
                                  //                 SizedBox(
                                  //                   height: 5,
                                  //                 ),
                                  //                 Row(
                                  //                   mainAxisAlignment:
                                  //                       MainAxisAlignment
                                  //                           .spaceBetween,
                                  //                   children: [
                                  //                     Padding(
                                  //                       padding:
                                  //                           const EdgeInsets.only(
                                  //                               right: 8.0,
                                  //                               left: 8),
                                  //                       child: Column(
                                  //                         children: [
                                  //                           Icon(
                                  //                             Icons.directions,
                                  //                             color: appColor,
                                  //                           ),
                                  //                           Text(
                                  //                             'Yol',
                                  //                             style: GoogleFonts
                                  //                                 .montserrat(
                                  //                                     color:
                                  //                                         appColor,
                                  //                                     fontWeight:
                                  //                                         FontWeight
                                  //                                             .bold),
                                  //                           )
                                  //                         ],
                                  //                       ),
                                  //                     ),
                                  //                     SizedBox(
                                  //                       width: 10,
                                  //                     ),
                                  //                     Expanded(
                                  //                       child: FutureBuilder<
                                  //                               DistanceData?>(
                                  //                           future: Stations
                                  //                               .getDistanceBetweenTwoPoints(
                                  //                             origin: LatLng(
                                  //                                 userLocation!
                                  //                                     .latitude,
                                  //                                 userLocation!
                                  //                                     .longitude),
                                  //                             destination: LatLng(
                                  //                               widget
                                  //                                   .allStations[
                                  //                                       index]
                                  //                                   .location
                                  //                                   .latitude,
                                  //                               widget
                                  //                                   .allStations[
                                  //                                       index]
                                  //                                   .location
                                  //                                   .latitude,
                                  //                             ),
                                  //                           ),
                                  //                           builder: (context,
                                  //                               snapshot) {
                                  //                             numberCalled++;
                                  //                             print('the amount of times it was called is $numberCalled');
                                  //                             print('was just called this time');
                                  //
                                  //                             if (!snapshot
                                  //                                 .hasData) {
                                  //                               return CircularProgressIndicator();
                                  //                             }
                                  //                             else{
                                  //                               DistanceMatrix
                                  //                                   .Distance?
                                  //                               distance;
                                  //                               if (snapshot
                                  //                                   .data!
                                  //                                   .rows
                                  //                                   .isNotEmpty) {
                                  //                                 DistanceMatrix
                                  //                                     .RowElements
                                  //                                 row = snapshot
                                  //                                     .data!
                                  //                                     .rows[0];
                                  //                                 if (row.elements
                                  //                                     .isNotEmpty) {
                                  //                                   DistanceMatrix
                                  //                                       .Element
                                  //                                   element =
                                  //                                   row.elements[
                                  //                                   0];
                                  //                                   if (element
                                  //                                       .status ==
                                  //                                       'OK') {
                                  //                                     distance = element
                                  //                                         .distance;
                                  //                                   } else {}
                                  //                                 } else {}
                                  //                               } else {}
                                  //                               return
                                  //
                                  //                                 Text(
                                  //                                   textAlign:
                                  //                                   TextAlign
                                  //                                       .center,
                                  //                                   '${distance?.text} ${store.address}',
                                  //                                   style: GoogleFonts
                                  //                                       .montserrat(
                                  //                                     fontSize: 12,
                                  //                                   ),
                                  //                                 );
                                  //
                                  //                             }
                                  //                           }),
                                  //                     )
                                  //                   ],
                                  //                 ),
                                  //                 SizedBox(
                                  //                   height: 5,
                                  //                 ),
                                  //                 SingleChildScrollView(
                                  //                   scrollDirection:
                                  //                       Axis.horizontal,
                                  //                   child: Row(
                                  //                     mainAxisAlignment:
                                  //                         MainAxisAlignment
                                  //                             .center,
                                  //                     children: placeIcons.keys
                                  //                         .map((placeName) {
                                  //                       final iconData =
                                  //                           placeIcons[placeName];
                                  //                       return Padding(
                                  //                         padding:
                                  //                             const EdgeInsets
                                  //                                 .all(8.0),
                                  //                         child: Icon(
                                  //                           iconData,
                                  //                           size: 15,
                                  //                           color: appColor,
                                  //                         ),
                                  //                       );
                                  //                     }).toList(),
                                  //                   ),
                                  //                 ),
                                  //               ],
                                  //             ),
                                  //           ),
                                  //         ),
                                  //       );
                                  //     },
                                  //   );
                                  // } else {
                                  //   return Center(
                                  //     child: Container(
                                  //       height: 30,
                                  //       width: 30,
                                  //       child: CircularProgressIndicator(),
                                  //     ),
                                  //   );
                                  // }
                                })
                            : CircularProgressIndicator(),
                      ),
                    )
                  : Container(),
              activeView == screenViewTypes.mapView
                  ? Positioned(
                      bottom: 168.0,
                      right: 8.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                              icon: Icon(
                                Icons.layers,
                                color: appColor,
                              ),
                              onPressed: () {
                                activateTerrain();
                                // Handle changing terrain
                              },
                            ),
                          ),
                          SizedBox(height: 8.0),
                          InkWell(
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: IconButton(
                                icon: Icon(
                                  Icons.location_searching_outlined,
                                  color: appColor,
                                ),
                                onPressed: () {
                                  moveToUserLocation();
                                  // Handle changing terrain
                                },
                              ),
                            ),
                          ),
                          // IconButton(
                          //   icon: Image(
                          //     image: AssetImage('assets/icons/locationImage.png'),
                          //   ),
                          //   onPressed: () {
                          //     moveToUserLocation();
                          //     // Handle redirecting the camera to the user's location
                          //   },
                          // ),
                          // SizedBox(height: 8.0),
                          // CircleAvatar(
                          //   backgroundColor: Colors.white,
                          //   child: IconButton(
                          //     icon: Icon(
                          //       Icons.info,
                          //       color: appColor,
                          //     ),
                          //     onPressed: () {
                          //       // Stations.getDistanceBetweenTwoPoints(
                          //       //     origin: LatLng(41.018900, 29.011810),
                          //       //     destination: LatLng(41.013000, 28.974800));
                          //       showInformationPopup(context);
                          //     },
                          //   ),
                          // ),
                        ],
                      ),
                    )
                  : Container(),
            ]),
          ),
        ),
      ),
    );
  }

  Future<Marker> Function(Cluster<ElectricStation>) get _markerBuilder =>
      (cluster) async {
        return Marker(
          infoWindow: InfoWindow(),
          markerId: MarkerId(cluster.getId()),
          position: cluster.location,
          onTap: () async {
            if (!cluster.isMultiple) {
              DistanceMatrix.DistanceData? distanceData =
                  await Stations.getDistanceBetweenTwoPoints(
                origin: LatLng(userLocation!.latitude, userLocation!.longitude),
                destination: LatLng(cluster.items.first.location.latitude,
                    cluster.items.first.location.longitude),
              );
              showMarkerDetails(
                  context: context,
                  station: cluster.items.first,
                  distanceData: distanceData!);
            } else {
              googleMapController.animateCamera(
                CameraUpdate.newLatLngZoom(cluster.items.first.latLng, 14),
              );
            }
          },
          icon:
              // await myOwnImageOrange(),
              cluster.isMultiple
                  ? await _getMarkerBitmap(
                      cluster.isMultiple ? 125 : 75,
                      text:
                          cluster.isMultiple ? cluster.count.toString() : null,
                    )
                  : BitmapDescriptor.fromBytes(
                      await getBytesFromAsset('assets/icons/blueIcon.png', 85),
                    ),
        );
      };

  Future<BitmapDescriptor> _getMarkerBitmap(int size, {String? text}) async {
    if (kIsWeb) size = (size / 2).floor();

    final PictureRecorder pictureRecorder = PictureRecorder();
    final Canvas canvas = Canvas(pictureRecorder);
    final Paint paint1 = Paint()..color = Color(0xff48AED1);
    final Paint paint2 = Paint()..color = Colors.white;
    Color blueColor = Color(0xff3276E6);

    canvas.drawCircle(Offset(size / 2, size / 2), size / 2.0, paint1);
    canvas.drawCircle(Offset(size / 2, size / 2), size / 2.2, paint2);
    canvas.drawCircle(Offset(size / 2, size / 2), size / 2.8, paint1);

    if (text != null) {
      TextPainter painter = TextPainter(textDirection: TextDirection.ltr);
      painter.text = TextSpan(
        text: text,
        style: TextStyle(
            fontSize: size / 3,
            color: Colors.white,
            fontWeight: FontWeight.normal),
      );
      painter.layout();
      painter.paint(
        canvas,
        Offset(size / 2 - painter.width / 2, size / 2 - painter.height / 2),
      );
    }

    final img = await pictureRecorder.endRecording().toImage(size, size);
    final data = await img.toByteData(format: ImageByteFormat.png) as ByteData;

    return BitmapDescriptor.fromBytes(data.buffer.asUint8List());
  }

  // Future<List<ElectricStation>> getStations() async {
  //   Stations nearByStation = Stations();
  //
  //   // }
  //   return nearByStation.getNearByStations(headers);
  // }

  screenViewTypes activeView = screenViewTypes.mapView;

  void changeActiveButton(screenViewTypes view) {
    setState(() {
      activeView = view;
    });
  }

  void moveToUserLocation() async {
    LatLng userLocation = await location();
    googleMapController.animateCamera(
      CameraUpdate.newLatLngZoom(
        LatLng(userLocation.latitude, userLocation.longitude),
        14.0,
      ),
    );
  }

  void activateTerrain() {
    if (mapType == MapType.normal) {
      setState(() {
        mapType = MapType.satellite;
      });
    } else {
      setState(() {
        mapType = MapType.normal;
      });
    }
  }

  void showInformationPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(''),
          content: Text('Buraya ne gelmesi gerekiyor'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the pop-up
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {

    super.dispose();


  }
}

class stationsListViewWidget extends StatelessWidget {
  final List<ElectricStation> stations;
  stationsListViewWidget({
    super.key,
    required this.stations,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.blue,
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 238.0),
          child: FractionallySizedBox(
            widthFactor: 0.99, // 20% width of the outer container
            heightFactor: 1.0, // 20% height of the outer container
            child: Container(
                // color: Colors.red,
                child: ListView.builder(
                    itemCount: stations.length,
                    itemBuilder: (context, index) {
                      return stationListViewCardWidget(
                        station: stations[index],
                      );
                    })), // Inner container color
          ),
        ));
  }
}

class stationListViewCardWidget extends StatelessWidget {
  final ElectricStation station;

  stationListViewCardWidget({
    super.key,
    required this.station,
  });
  late final ElectricStore store;

  @override
  Widget build(BuildContext context) {
    store = ElectricStore.fromElectricStation(station);
    return GestureDetector(
      onTap: () async {
        try {
          bool isFavorite = await FavoriteStationServiceClass.isStationFavorite(
            stationId: station.id,
            userId: auth.currentUser!.uid,
          );

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StationDetailedPage(
                station: station,
                // isFavorite: isFavorite,
              ),
            ),
          );
        } catch (error) {
          print("Error navigating to detailed page: $error");
          // Handle the error gracefully, such as displaying an error message to the user.
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Container(
          // height: 100,
          child: Card(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4, right: 8.0),
                    child: Image(
                      height: 40,
                      width: 40,
                      image: AssetImage('assets/icons/img_5.png'),
                    ),
                  ),
                  Flexible(
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: TextScroll(
                              store.name,
                              velocity:
                                  Velocity(pixelsPerSecond: Offset(30, 0)),
                              mode: TextScrollMode.endless,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: appColor,
                              ),
                            ),
                          ),
                          Text('Ccs Type 2,Type 2'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, bottom: 8),
                          child: Text(
                            '8 km',
                            style: TextStyle(
                              fontSize: 16,
                              color: appColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 8.0,
                          ),
                          child: Container(
                            // height: 25,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xff56B78B),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Icon(
                                    Icons.check_circle_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Available',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
        )),
      ),
    );
  }
}

void showMarkerDetails(
    {required BuildContext context,
    required ElectricStation station,
    required DistanceMatrix.DistanceData distanceData}) {
  DistanceMatrix.Distance? distance;
  // RowElements rowElements=RowElements.fromJson(distanceData.rows)
  if (distanceData.rows.isNotEmpty) {
    DistanceMatrix.RowElements row = distanceData.rows[0];
    if (row.elements.isNotEmpty) {
      DistanceMatrix.Element element = row.elements[0];
      if (element.status == 'OK') {
        distance = element.distance;
        // print('Duration: ${distance.text}');
        // print('Value: ${distance.value}  meters');
      } else {
        // print('Element status is not OK');
      }
    } else {
      // print('No elements in the row');
    }
  } else {
    // print('No rows in the distance data');
  }
  List<String> parts = distance!.text.split(" ");
  String numericValue = parts.first;
  // for(var distanceData.)
  bool _isButtonDisabled = false;
  ElectricStore store = ElectricStore.fromElectricStation(station);
  // print(store.name);
  // print(station.plug);
  // print('/////////////////');
  // print(station.store);
  // print('/////////////////');
  // print(station.tenant);
  // print('/////////////////');
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      RoundedLoadingButtonController viewStationDetailsButtonController =
          RoundedLoadingButtonController();
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: 230,
          // color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                  ),
                  width: 26,
                  height: 3,
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      height: 25,
                      width: 25,
                      image: AssetImage('assets/icons/img_5.png'),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      store.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: appColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 25,
                        width: 12,
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
                                  padding: const EdgeInsets.only(right: 2.0),
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
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  bottomModalProperties(
                    name: 'AC',
                    numberOfAvailableNames: '5',
                    detail: 'available',
                  ),
                  bottomModalProperties(
                    name: 'DC',
                    numberOfAvailableNames: '5',
                    detail: 'available',
                  ),
                  bottomModalProperties(
                    iconData: Image(
                      height: 30,
                      width: 50,
                      image: AssetImage('assets/icons/distanceIcon.png'),
                    ),
                    isText: false,
                    name: 'DC',
                    numberOfAvailableNames:
                        double.parse(numericValue).round().toString(),
                    detail: 'km',
                  ),
                  bottomModalProperties(
                    iconData: Image(
                      height: 30,
                      width: 50,
                      image: AssetImage('assets/icons/moneyIcon.png'),
                    ),
                    isText: false,
                    name: 'DC',
                    numberOfAvailableNames: '7.5',
                    detail: 'TL/Kw',
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                6.0), // Adjust the value as per your requirement
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(appColor),
                      ),
                      onPressed: () async {
                        try {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StationDetailedPage(
                                station: station,
                                // isFavorite: isFavorite,
                              ),
                            ),
                          );
                          viewStationDetailsButtonController.success();
                          viewStationDetailsButtonController.reset();
                        } catch (error) {
                          // print("Error navigating to detailed page: $error");

                          // Handle the error gracefully, such as displaying an error message to the user.
                        }
                      },
                      child: Text(
                        'View Station Details',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}

class bottomModalProperties extends StatelessWidget {
  final String detail;
  final bool isText;
  final String name;
  final String numberOfAvailableNames;
  final Widget iconData;
  bottomModalProperties({
    super.key,
    required this.name,
    required this.numberOfAvailableNames,
    this.isText = true,
    this.iconData = const SizedBox(),
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          isText
              ? Text(
                  name,
                  style: TextStyle(
                    fontSize: 20,
                    color: appColor,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : iconData,
          SizedBox(
            height: 10,
          ),
          RichText(
            textScaleFactor: 1,
            text: TextSpan(
              style: DefaultTextStyle.of(context).style.copyWith(
                    fontSize: DefaultTextStyle.of(context).style.fontSize,
                    textBaseline:
                        DefaultTextStyle.of(context).style.textBaseline,

                    // Adjust this value to make the text closer
                  ),
              children: [
                TextSpan(
                  text: numberOfAvailableNames,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: appColor,
                  ),
                ),
                TextSpan(
                  text: detail,
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
    );
  }
}
