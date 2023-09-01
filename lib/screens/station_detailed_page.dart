import 'package:chargemate/modals/model_stations.dart';
import 'package:chargemate/utils/Carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:vibration/vibration.dart';

import '../constants/constants.dart';
import '../modals/distance_matrix_model.dart';
import '../modals/electric_store.dart';
import '../service/api_service.dart';
import '../service/favorite_station.dart';
import '../utils/tabBar.dart';
import 'filter_page.dart';

class StationDetailedPage extends StatefulWidget {
  final ElectricStation station;
  // final Distance distance;
  // bool isFavorite;
  StationDetailedPage({
    super.key,
    required this.station,
  });

  @override
  State<StationDetailedPage> createState() => _StationDetailedPageState();
}

class _StationDetailedPageState extends State<StationDetailedPage> {
  @override
  Widget build(BuildContext context) {
    final ElectricStore store =
        ElectricStore.fromElectricStation(widget.station);
    final Size screenSize = MediaQuery.of(context).size;
    // print(widget.station.id);
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: screenSize.height * 0.15,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        color: Colors.white,
                        height: 36.43,
                        width: 200,
                        child: Image(
                          image: AssetImage('assets/images/logos/img.png'),
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Material(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        elevation: 2,
                        child: Icon(
                          Icons.arrow_back,
                        ),
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        store.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: appColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  ListTile(
                    leading: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '4.5',
                          style: TextStyle(fontSize: 15, color: appColor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Icon(
                            Icons.star,
                            color: yellowColor,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: GestureDetector(
                              //     onTap: () async {
                              //   // print(
                              //   //     'is the  station favorite ${widget.isFavorite} coming from homepage');
                              //   // if (!widget.isFavorite) {
                              //   //   try {
                              //   //     HapticFeedback.heavyImpact();
                              //   //     Stations.addFavoriteStation(
                              //   //       stationId: widget.station.id,
                              //   //       userId: auth.currentUser!.uid,
                              //   //       headers: headers,
                              //   //     );
                              //   //   } catch (e) {}
                              //   // } else {
                              //   //   try {
                              //   //     Stations.deleteFavoriteStation(
                              //   //       stationId: widget.station.id,
                              //   //       userId: auth.currentUser!.uid,
                              //   //       headers: headers,
                              //   //     );
                              //   //   } catch (e) {}
                              //   // }
                              //   // setState(() {
                              //   //   widget.isFavorite = !widget.isFavorite;
                              //   // });
                              // },
                              child: Consumer<FavoriteStation>(
                            builder: (context, dataModel, child) {
                              return GestureDetector(
                                onTap: () {
                                  dataModel.toggleFavorite(
                                      stationId: widget.station.id,
                                      userId: auth.currentUser!.uid);
                                  // Toggle the favorite status on tap
                                  // dataModel.toggleFavorite();
                                },
                                child: dataModel.isFavorite
                                    ? Icon(
                                        Icons.favorite,
                                        color: appColor,
                                      )
                                    : Icon(
                                        Icons.favorite_border,
                                        color: appColor,
                                      ),
                              );
                            },
                          )

                              //widget.isFavorite

                              // ? Icon(
                              //     Icons.favorite,
                              //     color: appColor,
                              //   )
                              // : Icon(
                              //     Icons.favorite_border,
                              //     color: appColor,
                              //   ),
                              ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: GestureDetector(
                            onTap: () async {
                              final box =
                                  context.findRenderObject() as RenderBox?;
                              await Share.share('Download on appStore');
                              // final availableMaps =
                              //     await MapLauncher.installedMaps;
                              // // print(availableMaps.first.mapType);
                              // for (AvailableMap map in availableMaps) {
                              //   print(map.mapType);
                              // }

                              // Share.share(
                              //   'check out my website https://example.com',
                              // );

                              // [AvailableMap { mapName: Google Maps, mapType: google }, ...]

                              // await availableMaps[1].showMarker(
                              //   coords: Coords(37.759392, -122.5107336),
                              //   title: "Ocean Beach",
                              // );
                            },
                            child: Icon(
                              Icons.share_outlined,
                              color: appColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Image(
                        image: AssetImage('assets/images/chargingCar.png'),
                      )
                      // CarouselWithIndicators(
                      //   imageList: [
                      //     'assets/images/chargingCar.png',
                      //     'assets/images/chargingCar.png',
                      //     'assets/images/chargingCar.png'
                      //   ],
                      // ),
                      ),
                  SizedBox(
                    height: 4,
                  ),
                  Expanded(
                      flex: 3,
                      child: TabViewUtil(
                        station: widget.station,
                      )),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Container(
                  //       height: 6,
                  //       width: 12,
                  //       decoration: BoxDecoration(
                  //           color: appColor,
                  //           borderRadius: BorderRadius.circular(2)),
                  //     ),
                  //     SizedBox(
                  //       width: 2,
                  //     ),
                  //     Container(
                  //       height: 6,
                  //       width: 12,
                  //       decoration: BoxDecoration(
                  //         shape: BoxShape.circle,
                  //         color: Colors.grey.shade700,
                  //         //  borderRadius: BorderRadius.circular(2),
                  //       ),
                  //     ),
                  //   ],
                  // )
                ],
              ),
            )
            // Other widgets can be added here if needed
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    final dataModel = Provider.of<FavoriteStation>(context, listen: false);
    dataModel.checkFavoriteStatus(
        stationId: widget.station.id, userId: auth.currentUser!.uid);
    super.initState();
  }
}
