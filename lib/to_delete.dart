//               controller.setMapStyle('''
//     [
//   {
//     "elementType": "geometry",
//     "stylers": [
//       {
//         "color": "#f5f5f5"
//       }
//     ]
//   },
//   {
//     "elementType": "labels.icon",
//     "stylers": [
//       {
//         "visibility": "off"
//       }
//     ]
//   },
//   {
//     "elementType": "labels.text.fill",
//     "stylers": [
//       {
//         "color": "#616161"
//       }
//     ]
//   },
//   {
//     "elementType": "labels.text.stroke",
//     "stylers": [
//       {
//         "color": "#f5f5f5"
//       }
//     ]
//   },
//   {
//     "featureType": "administrative.land_parcel",
//     "elementType": "labels.text.fill",
//     "stylers": [
//       {
//         "color": "#bdbdbd"
//       }
//     ]
//   },
//   {
//     "featureType": "poi",
//     "elementType": "geometry",
//     "stylers": [
//       {
//         "color": "#eeeeee"
//       }
//     ]
//   },
//   {
//     "featureType": "poi",
//     "elementType": "labels.text.fill",
//     "stylers": [
//       {
//         "color": "#757575"
//       }
//     ]
//   },
//   {
//     "featureType": "poi.park",
//     "elementType": "geometry",
//     "stylers": [
//       {
//         "color": "#e5e5e5"
//       }
//     ]
//   },
//   {
//     "featureType": "poi.park",
//     "elementType": "labels.text.fill",
//     "stylers": [
//       {
//         "color": "#9e9e9e"
//       }
//     ]
//   },
//   {
//     "featureType": "road",
//     "elementType": "geometry",
//     "stylers": [
//       {
//         "color": "#ffffff"
//       }
//     ]
//   },
//   {
//     "featureType": "road.arterial",
//     "elementType": "labels.text.fill",
//     "stylers": [
//       {
//         "color": "#757575"
//       }
//     ]
//   },
//   {
//     "featureType": "road.highway",
//     "elementType": "geometry",
//     "stylers": [
//       {
//         "color": "#dadada"
//       }
//     ]
//   },
//   {
//     "featureType": "road.highway",
//     "elementType": "labels.text.fill",
//     "stylers": [
//       {
//         "color": "#616161"
//       }
//     ]
//   },
//   {
//     "featureType": "road.local",
//     "elementType": "labels.text.fill",
//     "stylers": [
//       {
//         "color": "#9e9e9e"
//       }
//     ]
//   },
//   {
//     "featureType": "transit.line",
//     "elementType": "geometry",
//     "stylers": [
//       {
//         "color": "#e5e5e5"
//       }
//     ]
//   },
//   {
//     "featureType": "transit.station",
//     "elementType": "geometry",
//     "stylers": [
//       {
//         "color": "#eeeeee"
//       }
//     ]
//   },
//   {
//     "featureType": "water",
//     "elementType": "geometry",
//     "stylers": [
//       {
//         "color": "#c9c9c9"
//       }
//     ]
//   },
//   {
//     "featureType": "water",
//     "elementType": "labels.text.fill",
//     "stylers": [
//       {
//         "color": "#9e9e9e"
//       }
//     ]
//   }
// ]
//     ''');

// controller.setMapStyle(
//     '[{"featureType": "all","stylers": [{ "color": "#C0C0C0" }]},{"featureType": "road.arterial","elementType": "geometry","stylers": [{ "color": "#CCFFFF" }]},{"featureType": "landscape","elementType": "labels","stylers": [{ "visibility": "off" }]}]');
// Positioned(
//   top: MediaQuery.of(context).size.height * 0.54,
//   right: 16,
//   child: Column(
//     children: [
//       Padding(
//         padding: const EdgeInsets.symmetric(vertical: 8.0),
//         child: Material(
//           elevation: 10,
//           shape: CircleBorder(),
//           child: CircleAvatar(
//             backgroundColor: Colors.white,
//             radius: 20,
//             child: IconButton(
//               icon: Icon(
//                 Icons.layers,
//                 color: appColor,
//               ),
//               onPressed: () {
//                 setState(() {
//                   if (mapType == MapType.normal) {
//                     mapType = MapType.satellite;
//                   } else {
//                     mapType = MapType.normal;
//                   }
//                 });
//               },
//             ),
//           ),
//         ),
//       ),
//       Padding(
//         padding: const EdgeInsets.symmetric(vertical: 8.0),
//         child: Material(
//           elevation: 10,
//           shape: CircleBorder(),
//           child: CircleAvatar(
//             backgroundColor: Colors.white,
//             radius: 20,
//             child: IconButton(
//               icon: Icon(
//                 FontAwesomeIcons.circleExclamation,
//                 color: appColor,
//               ),
//               onPressed: () {
//                 // Handle icon2 button press
//               },
//             ),
//           ),
//         ),
//       ),
//       Padding(
//         padding: const EdgeInsets.symmetric(vertical: 8.0),
//         child: Material(
//           elevation: 10,
//           shape: CircleBorder(),
//           child: CircleAvatar(
//             backgroundColor: Colors.white,
//             radius: 20,
//             child: IconButton(
//               icon: Icon(
//                 FontAwesomeIcons.locationCrosshairs,
//                 color: appColor,
//               ),
//               onPressed: () {
//                 // Handle icon2 button press
//               },
//             ),
//           ),
//         ),
//       ),
//     ],
//   ),
// ),
//TODO: this is for opening the drawer
// Positioned(
//   top: 50,
//   left: 16,
//   child: Container(
//     decoration: BoxDecoration(
//         color: Colors.white, borderRadius: BorderRadius.circular(12)),
//     child: IconButton(
//       icon: Icon(
//         Icons.menu,
//         color: Colors.black,
//         size: 25,
//       ),
//       onPressed: () {
//         _key.currentState!.openDrawer();
//       },
//     ),
//   ),
// ),
// Positioned(
//   top: 80,
//   right: 16,
//   child: Container(
//     width: 48,
//     height: 48,
//     decoration: BoxDecoration(
//       shape: BoxShape.circle,
//       color: Colors.white,
//     ),
//     child: IconButton(
//       icon: Icon(
//         Icons.favorite,
//         color: Colors.black,
//       ),
//       onPressed: () {
//         // Handle favorite button press
//       },
//     ),
//   ),
// ),
// Positioned(
//   top: 50,
//   right: 16,
//   child: Container(
//     width: 48,
//     height: 48,
//     decoration: BoxDecoration(
//       shape: BoxShape.circle,
//       color: Colors.white,
//     ),
//     child: IconButton(
//       icon: Icon(
//         Icons.favorite,
//         color: Colors.black,
//       ),
//       onPressed: () {
//         // Handle favorite button press
//       },
//     ),
//   ),
// ),
// FutureBuilder<List<ElectricStation>>(
//     future: getStations(),
//     builder: (context, snapshot) {
//       if (!snapshot.hasData) {
//         return Container(
//           height: 20,
//           width: 20,
//           child: CircularProgressIndicator(),
//         );
//       }
//       return Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Container(
//           height: 200, // Adjust the height as needed
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: snapshot.data
//                 ?.length, // Replace with your actual item count
//             itemBuilder: (context, index) {
//               List<ElectricStation>? data = snapshot.data;
//               if (index == 0) {
//                 // print('element one ---------------');
//                 // print(data![0].plug);
//                 // print('/////////////////////');
//                 // print(data![index].plug.toString());
//                 // print('/////////////////////');
//                 // print(data![index].latLng.toString());
//                 // print('/////////////////////');
//                 // print(data![index].id.toString());
//               }
//
//               String name = data![index].store['name'];
//               String address = data[index].store['address'];
//               String modelName = data[index].plug['modelName'];
//               int numberOfPlugs = data[index].plug['total'];
//               List<Widget> stationsPlug = [];
//               print(
//                   'this is the model name at index $index $modelName');
//               print(index);
//
//               for (int i = 0; i < numberOfPlugs; ++i) {
//                 Widget widget = Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Icon(
//                         Icons.charging_station_sharp,
//                         color: appColor,
//                         // color: Color(0xff00FF00),
//                       ),
//                       Text(modelName),
//                     ],
//                   ),
//                 );
//                 stationsPlug.add(widget);
//               }
//
//               // print('/////////////////////');
//               List<Widget> plugs;
//
//               return Container();
//               //   Card(
//               //   color: Colors.white,
//               //   elevation: 3,
//               //   child: Container(
//               //     padding: EdgeInsets.all(2),
//               //     width: MediaQuery.of(context).size.width *
//               //         0.80, // Adjust the width as needed
//               //     child: ListTile(
//               //       title: Text(
//               //         name,
//               //         style: TextStyle(fontWeight: FontWeight.bold),
//               //       ),
//               //       // leading: Icon(Icons.location_on),
//               //       subtitle: Column(
//               //         crossAxisAlignment: CrossAxisAlignment.start,
//               //         children: [
//               //           Row(
//               //             children: [
//               //               Column(
//               //                 children: [
//               //                   Icon(
//               //                     Icons.directions,
//               //                     color: appColor,
//               //                   ),
//               //                   Padding(
//               //                     padding: const EdgeInsets.only(
//               //                         right: 8.0),
//               //                     child: Text('Directions',
//               //                         style: TextStyle(
//               //                             fontWeight:
//               //                                 FontWeight.w500)),
//               //                   )
//               //                 ],
//               //               ),
//               //               SizedBox(
//               //                   height:
//               //                       4), // Add some spacing between description and address
//               //               Expanded(
//               //                 child: Text(address),
//               //               )
//               //             ],
//               //           ),
//               //           SingleChildScrollView(
//               //             scrollDirection: Axis.horizontal,
//               //             child: Row(
//               //               children: stationsPlug,
//               //             ),
//               //           )
//               //         ],
//               //       ),
//               //     ),
//               //   ),
//               // );
//             },
//           ),
//         ),
//       );
//     }),
// Positioned(
//   left: 0,
//   right: 0,
//   bottom: 0,
//   child: Container(
//     child: Image(
//       image: AssetImage('assets/images/img_5.png'),
//     ),
//   ),
// ),
// bottomNavigationBar: BottomNavigationBar(
//   items: _bottomNavBarItemsList,
//   currentIndex: _selectedIndex,
//   selectedItemColor: appColor,
//   onTap: _onItemTapped,
// ),
// BitmapDescriptor.defaultMarkerWithHue(
//         BitmapDescriptor.hueRed)
// await myOwnImageOrange(),
// prefixIcon: Transform.rotate(
//   angle:
//       70, // Adjust the angle to achieve the desired rotation
//   child: Icon(
//     Icons.navigation,
//     color: Colors.blue,
//   ),
// ),
// Logo on the left
// Icon(
//   Icons.,
//   size: 40,
//   color: Colors.white,
// ),
// hello just testing
// this is for development test