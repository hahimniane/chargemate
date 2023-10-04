

import 'package:chargemate/constants/constants.dart';
import 'package:chargemate/modals/comment_model.dart';
import 'package:chargemate/modals/model_stations.dart';
import 'package:chargemate/screens/add_comment.dart';
import 'package:chargemate/service/comment_api_services.dart';
import 'package:chargemate/utils/show_available_maps_modal.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

import '../figma/utils.dart';
import '../modals/amnities_icon_mapping.dart';
import '../modals/electric_store.dart';
import '../screens/home_screen.dart';
import '../service/api_service.dart';

class TabViewUtil extends StatefulWidget {
  final ElectricStation station;
  TabViewUtil({required this.station});
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
        return stationWidget(
          station: widget.station,
        );
      case LocationType.socket:
        return socketWidget(
          station: widget.station,
        );
      case LocationType.facility:
        return facilityWidget(store: ElectricStore.fromElectricStation(widget.station),);
      case LocationType.explanation:
        return commentWidget(
          station: widget.station,
        );
      default:
        return Text('Unknown Location');
    }
  }
}

class commentWidget extends StatelessWidget {
  final ElectricStation station;
  const commentWidget({
    super.key,
    required this.station,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
          child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: appColor,
              ),
              onPressed: () async {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCommentPage(electricStore: ElectricStore.fromElectricStation(station))));
                // UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                //   email: 'user@example.com',
                //   password: 'password',
                // );
                // auth.currentUser?.getIdToken();

                // String idToken = await userCredential.user!.getIdToken();
                // print('ID Token: ${await auth.currentUser?.getIdToken()}');
                // String? token = await auth.currentUser?.getIdToken();
                // Stations.addComment(
                //     comment:
                //         'in the after math everything was good. we need to be here to update all of our beloved stations for a better charging.',
                //     headers: headers,
                //     userId: auth.currentUser!.uid,
                //     userFullName: 'Hassimiou Diallo',
                //     stationId: station.id,
                //     score: 5,
                //     idToken: token!);
                // List<Comments> comments = await Stations.getComments(
                //     headers: headers, stationId: station.id);
                // for (var comment in comments) {
                //   print(comment.text);
                // }
                // print('this is the users id ${auth.currentUser!.uid}');
                // print('this is the charging station id ${station.id}');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Yorum  Ekle',
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ],
              )),
        ),
        Expanded(
          flex: 2,
          child: FutureBuilder<List<Comments>>(
              future:
                  CommentClass.getComments(headers: headers, stationId: station.id),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: Container(
                      height: 30,
                      width: 30,
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
                else if(snapshot.data!.isEmpty){
                  return Center(child: Text('Ilk Yorumu Sen At!',style:SafeGoogleFont(
                    'Montserrat',
                    fontSize: 16 ,
                    fontWeight: FontWeight.w700,
                    height: 1.2175 ,
                    color: appColor,
                  ),));
                }
                return Container(
                  // color: Colors.blue,
                  height: MediaQuery.of(context).size.height * 0.304,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (BuildContext context, int index) {
                      Comments comment = snapshot.data![index];
                      DateTime parsedDate = DateTime.parse(comment.createdAt);
                      DateFormat outputFormat = DateFormat('dd.MM.yyyy HH:mm');
                      String formattedDate = outputFormat.format(parsedDate);
                      return Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xff57b78b),
                                    borderRadius: BorderRadius.circular(10)),
                                height: 82,
                                width: 62,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Charged',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          comment.score.toString(),
                                          style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      comment.userFullName,
                                      style: GoogleFonts.montserrat(
                                          color: appColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      comment.text,
                                      style: GoogleFonts.montserrat(
                                          color: appColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 0,
                                    ),
                                    SizedBox(
                                      width: 255,
                                      child: ListTile(
                                        // contentPadding: EdgeInsets.only(top: 0),
                                        leading: Text(
                                          'AC Type 2',
                                          style: GoogleFonts.montserrat(
                                              color: appColor,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        trailing: Text(
                                          formattedDate,
                                          style: GoogleFonts.montserrat(
                                              color: appColor,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                );
              }),
        )
      ],
    );
  }
}

// class CommentCard extends StatelessWidget {
//   const CommentCard({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               decoration: BoxDecoration(
//                   color: Color(0xff57b78b),
//                   borderRadius: BorderRadius.circular(10)),
//               height: 82,
//               width: 62,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Charged',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '5',
//                         style: GoogleFonts.montserrat(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16),
//                       ),
//                       Icon(
//                         Icons.star,
//                         color: Colors.white,
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(0.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Melike A.',
//                   style: GoogleFonts.montserrat(
//                       color: appColor,
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600),
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Text(
//                   'The location of the station is fine.\n I didn\'t have any trouble',
//                   style: GoogleFonts.montserrat(
//                       color: appColor,
//                       fontSize: 14,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 SizedBox(
//                   height: 0,
//                 ),
//                 SizedBox(
//                   width: 255,
//                   child: ListTile(
//                     // contentPadding: EdgeInsets.only(top: 0),
//                     leading: Text(
//                       'AC Type 2',
//                       style: GoogleFonts.montserrat(
//                           color: appColor,
//                           fontSize: 12,
//                           fontWeight: FontWeight.w400),
//                     ),
//                     trailing: Text(
//                       '03.12.2023 09:10',
//                       style: GoogleFonts.montserrat(
//                           color: appColor,
//                           fontSize: 12,
//                           fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

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
  final ElectricStore store;
   facilityWidget({required this.store});
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

  final List<MapEntry<String,IconData>> itemsler=[

  ];

  @override
  Widget build(BuildContext context) {

    print('the number of aminties are ${store.amenities.length} and the first one is ${store.amenities.first}///////////////////////////////');
    for(int i=0;i<items.length;++i){
      itemsler.add(amenityIcons.entries.elementAt(i));
      print(amenityIcons.entries.elementAt(i));
    }


    return ListView.builder(
      itemCount: (store.amenities.length / 2).ceil(), // Calculate the number of rows
      itemBuilder: (context, index) {
        // Calculate the indices for the two items in this row
        final int firstIndex = index * 2;
        final int secondIndex = index * 2 + 1;

        // Get the current amenities (if available)
        final String currentChild1 =
        firstIndex < store.amenities.length ? store.amenities[firstIndex] : '';
        final String currentChild2 =
        secondIndex < store.amenities.length ? store.amenities[secondIndex] : '';

        // Determine the icons using the checkIfIconExists function
        final MapEntry<String, IconData> iconEntry1 = checkIfIconExists(currentChild1);
        final MapEntry<String, IconData> iconEntry2 = checkIfIconExists(currentChild2);

        // Build each row with two items side by side
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              if (iconEntry1.value != Icons.not_interested) // Show icon only if it's not Icons.not_interested
                Expanded(
                  child: buildFacilityTile(iconEntry1),
                ),
              SizedBox(width: 8), // Add some spacing between items
              if (iconEntry2.value != Icons.not_interested) // Show icon only if it's not Icons.not_interested
                Expanded(
                  child: buildFacilityTile(iconEntry2),
                ),
            ],
          ),
        );
      },
    );
    ;
    ;

  }

  // Helper method to build each facility item tile
  Widget buildFacilityTile(MapEntry item) {
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
                item.value,
                color: appColor,
              )),
          SizedBox(width: 6),
          Expanded(
            child: Text(
              item.key,
              style: TextStyle(
                color: appColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  MapEntry<String, IconData> checkIfIconExists(String currentChild) {
    // Check if the currentChild exists in the amenityIcons map
    final bool contains = amenityIcons.keys.contains(currentChild.trim().toLowerCase());

    // If it exists, return a MapEntry with the currentChild and the corresponding IconData
    if (contains) {
      final IconData? iconData = amenityIcons[currentChild.trim().toLowerCase()];
      return MapEntry(currentChild, iconData!);
    } else {
      // If it doesn't exist, return a MapEntry with the currentChild and a "not available" icon
      return MapEntry(currentChild, Icons.not_interested); // You can use a different "not available" icon if preferred
    }
  }

}

// Data model for each facility item
class FacilityItem {
  final String name;
  final IconData icon;

  FacilityItem(this.name, this.icon);
}

class socketWidget extends StatelessWidget {
  final ElectricStation station;
  const socketWidget({super.key, required this.station});

  @override
  Widget build(BuildContext context) {
    print('plug information is ${station.plug}');
    print('plug information is ${station.store}');
    print('plug information is ${station.tenant}');
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
                                  onPressed: () {
                                    return;
                                  },
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
                                  style: ButtonStyle(
                                    splashFactory: NoSplash.splashFactory,
                                  ),
                                  onPressed: () {
                                    return;
                                  },
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
  final ElectricStation station;
  const stationWidget({
    super.key,
    required this.station,
  });

  @override
  Widget build(BuildContext context) {
    ElectricStore store = ElectricStore.fromElectricStation(station);
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          stationTabBarWidget(
            isItThreeWidgets: true,
            iconUrl: 'assets/icons/stationIcon.png',
            label:'Mesafe',
            secondLabel: Text(''),
            station: station,
          ),
          stationTabBarWidget(
            isItThreeWidgets: false,
            iconUrl: 'assets/icons/distanceIcon.png',
            label: 'Konum',
            secondLabel: Text(store.address),
            station: station,
          ),
          stationTabBarWidget(
            isItThreeWidgets: false,
            iconUrl: 'assets/icons/distanceIcon.png',
            label: 'Açıklama',
            secondLabel: Text('-'),
            station: station,
          ),
          stationTabBarWidget(
            isItThreeWidgets: false,
            iconUrl: 'assets/icons/customerServiceIcon.png',
            label:'Müşteri hizmetleri' ,
            secondLabel: GestureDetector(
              onTap: () async {
                print('clicked');
                Uri phoneno = Uri.parse('www.google.com');
                try{
                  const number = '+905541524403'; //set the number here
                  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
                  print('the number was called $res');
                }
                catch (e){
                  print(e.toString());
                }
                //dialer opened
              },
              child: Text('+905541524403', style: TextStyle(
            color: appColor,
            fontWeight: FontWeight.normal),),),
            station: station,
          ),
          stationTabBarWidget(
            isItThreeWidgets: false,
            iconUrl: 'assets/icons/distanceIcon.png',
            label: 'çalışma saatleri',
            secondLabel: Text('09:00/ 21:30'),
            station: station,
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
  final ElectricStation station;
  final bool isItThreeWidgets;
  final String iconUrl;
  final String label;
  final Widget secondLabel;

  const stationTabBarWidget({
    super.key,
    this.isItThreeWidgets = false,
    required this.iconUrl,
    required this.label,
    required this.secondLabel,
    required this.station,
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
                          child:Text( label,  style: TextStyle(
                            color: appColor,
                            fontWeight: FontWeight.bold,
                          ),)



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
                              child:
                                secondLabel,


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
                    onTap: () async {
                      List<AvailableMap> availableMaps =
                          await MapLauncher.installedMaps;
                      if (availableMaps.isNotEmpty) {
                        showAvailableMapsModal(context, station);
                      } else {
                        Fluttertoast.showToast(
                            backgroundColor: Colors.red,
                            gravity: ToastGravity.CENTER,
                            msg: 'Harita uygulaması bulunamadı');
                      }
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


  // void _showAvailableMapsModal(BuildContext context) async {
  //   List<MapType> mapType = [];
  //   final availableMaps = await MapLauncher.installedMaps;
  //   print('number of available maps  ${availableMaps.runtimeType}');
  //   for (AvailableMap availableMaps in availableMaps) {
  //     print(availableMaps.mapType);
  //     mapType.add(availableMaps.mapType);
  //   }
  //
  //   showModalBottomSheet(
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(10.0),
  //     ),
  //     context: context,
  //     builder: (BuildContext context) {
  //       return Container(
  //         padding: EdgeInsets.symmetric(vertical: 16.0),
  //         child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             Center(
  //               child: Text(
  //                 'Select an action',
  //                 style: TextStyle(fontWeight: FontWeight.bold),
  //               ),
  //             ),
  //             SizedBox(
  //               height: 20,
  //             ),
  //             ListTile(
  //               leading: Icon(Icons.map),
  //               title: Text('Open in maps'),
  //               onTap: () {
  //                 // Handle "Open in maps" action here
  //                 // You can use availableMaps[0] to get the first installed map app
  //                 Navigator.pop(context); // Close the modal sheet
  //               },
  //             ),
  //             ListTile(
  //               leading: Image.asset('assets/images/googleMapsImage.webp',
  //                   height: 40, width: 40),
  //               title: Text('Open in Google maps'),
  //               onTap: () {
  //                 // Handle "Open in Google maps" action here
  //                 // You can use availableMaps[1] to get the second installed map app
  //                 Navigator.pop(context); // Close the modal sheet
  //               },
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }
}

enum LocationType {
  station,
  socket,
  facility,
  explanation,
}
