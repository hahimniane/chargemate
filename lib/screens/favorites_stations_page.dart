import 'package:chargemate/service/favorite_station_api_service.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';

class FavoriteStationsPage extends StatelessWidget {
  final int numberOfStations;
  const FavoriteStationsPage({
    super.key,
    required this.numberOfStations,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: screenSize.height * 0.15,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Container(
                              color: Colors.white,
                              height: 36.43,
                              width: 200,
                              child: Image(
                                image:
                                    AssetImage('assets/images/logos/img.png'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Material(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          elevation: 1,
                          child: Icon(
                            Icons.arrow_back,
                          ),
                        ),
                      ),
                    ),
                  ),

                  // ListTile(
                  //   leading: InkWell(
                  //     onTap: () {
                  //       Navigator.pop(context);
                  //     },
                  //     child: Material(
                  //       borderRadius: BorderRadius.circular(8),
                  //       color: Colors.white,
                  //       elevation: 2,
                  //       child: Icon(
                  //         Icons.arrow_back,
                  //       ),
                  //     ),
                  //   ),
                  //   title: Padding(
                  //     padding: const EdgeInsets.only(left: 16.0),
                  //     child: Text(
                  //       store.name,
                  //       style: TextStyle(
                  //         fontWeight: FontWeight.bold,
                  //         color: appColor,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: ListView.builder(
                  itemCount: numberOfStations,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: ListTile(
                            onTap: () {
                              print(auth.currentUser!.uid);
                              FavoriteStationServiceClass
                                  .getAllFavoriteStationForAUser(
                                      auth.currentUser!.uid);
                            },
                            leading: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                height: 100,
                                fit: BoxFit.fitHeight,
                                image: AssetImage('assets/icons/img_5.png'),
                              ),
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Istanbul Havalimani',
                                  style: TextStyle(
                                      color: appColor,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Text(
                                    'Ccs Type 2, Type 2',
                                    style: TextStyle(
                                        color: appColor, fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                            trailing: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    '8 km',
                                    style: GoogleFonts.montserrat(
                                        color: appColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 3),
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Color(0xff57B78B),
                                        borderRadius: BorderRadius.circular(5)),
                                    width: 100,
                                    child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Icon(
                                              Icons.check_circle_outlined,
                                              color: Colors.white,
                                              size: 15,
                                            ),
                                            Text(
                                              'Available',
                                              style: GoogleFonts.montserrat(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        )))
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
