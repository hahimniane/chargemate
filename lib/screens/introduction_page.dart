// // import 'package:chargemate/screens/phone_number_input_page.dart';
// // import 'package:chargemate/screens/registration/login_page.dart';
// // import 'package:chargemate/service/user_location_service.dart';
// // import 'package:flutter/material.dart';
// //
// // class SignInScreen extends StatelessWidget {
// //   const SignInScreen({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Column(
// //         children: [
// //           Expanded(
// //             flex: 3,
// //             child: Container(
// //               decoration: const BoxDecoration(
// //                 image: DecorationImage(
// //                   image: AssetImage('assets/images/barcodeIcon.png'),
// //                   fit: BoxFit.scaleDown,
// //                 ),
// //               ),
// //             ),
// //           ),
// //           Expanded(
// //             flex: 2,
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 const Text(
// //                   'Supercharge Your Car',
// //                   style: TextStyle(
// //                     color: Color(0xff145063),
// //                     fontSize: 24.0,
// //                     fontWeight: FontWeight.w700,
// //                   ),
// //                 ),
// //                 const SizedBox(height: 16.0),
// //                 const Text(
// //                   'Charge Up with Charge Mate: Find \nYour Closest Electric Car Charging \n Station Now!',
// //                   textAlign: TextAlign.center,
// //                   style: TextStyle(fontSize: 15.0),
// //                 ),
// //                 const SizedBox(height: 32.0),
// //                 Container(
// //                     decoration: BoxDecoration(
// //                         color: const Color(0xff145063),
// //                         borderRadius: BorderRadius.circular(12)),
// //                     width: double.infinity,
// //                     height: 140,
// //                     margin: const EdgeInsets.symmetric(horizontal: 16.0),
// //                     child: Column(
// //                       children: [
// //                         const SizedBox(height: 20),
// //                         Container(
// //                           decoration: BoxDecoration(
// //                             color: Colors.white,
// //                             borderRadius: BorderRadius.circular(8),
// //                           ),
// //                           width: 320,
// //                           height: 40,
// //                           child: ElevatedButton(
// //                             onPressed: () {
// //                               Navigator.pushReplacement(
// //                                   context,
// //                                   MaterialPageRoute(
// //                                       builder: (context) =>
// //                                           PhoneNumberInputPage()));
// //                             },
// //                             child: const Text(
// //                               'GET STARTED',
// //                               style: TextStyle(fontWeight: FontWeight.w500),
// //                             ),
// //                           ),
// //                         ),
// //                         const SizedBox(height: 16.0),
// //                         Row(
// //                           mainAxisAlignment: MainAxisAlignment.center,
// //                           children: [
// //                             const Text(
// //                               'Already have an account?',
// //                               style: TextStyle(color: Colors.white54),
// //                             ),
// //                             TextButton(
// //                               onPressed: () async {
// //                                 LocationService location = LocationService();
// //
// //                                 Navigator.push(
// //                                     context,
// //                                     MaterialPageRoute(
// //                                         builder: (context) => LoginPage()));
// //                               },
// //                               child: const Text(
// //                                 'Sign in',
// //                                 style: TextStyle(color: Colors.white),
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ],
// //                     )),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:chargemate/screens/phone_number_input_page.dart';
// import 'package:chargemate/screens/registration/login_page.dart';
//
// class SignInScreen extends StatelessWidget {
//   const SignInScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch, // Adjusted
//         children: [
//           Expanded(
//             flex: 3,
//             child: Container(
//               decoration: const BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage('assets/images/barcodeIcon.png'),
//                   fit: BoxFit.scaleDown,
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 2,
//             child: SingleChildScrollView(
//               // Added
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text(
//                       'Supercharge Your Car',
//                       style: TextStyle(
//                         color: Color(0xff145063),
//                         fontSize: 24.0,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                     const SizedBox(height: 16.0),
//                     const Text(
//                       'Charge Up with Charge Mate: Find \nYour Closest Electric Car Charging \n Station Now!',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(fontSize: 15.0),
//                     ),
//                     const SizedBox(height: 32.0),
//                     Container(
//                       decoration: BoxDecoration(
//                         color: const Color(0xff145063),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       width: double.infinity,
//                       padding: const EdgeInsets.all(16.0), // Adjusted
//                       child: Column(
//                         crossAxisAlignment:
//                             CrossAxisAlignment.stretch, // Adjusted
//                         children: [
//                           ElevatedButton(
//                             onPressed: () {
//                               Navigator.pushReplacement(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => PhoneNumberInputPage(),
//                                 ),
//                               );
//                             },
//                             child: const Text(
//                               'GET STARTED',
//                               style: TextStyle(fontWeight: FontWeight.w500),
//                             ),
//                           ),
//                           const SizedBox(height: 16.0),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               const Text(
//                                 'Already have an account?',
//                                 style: TextStyle(color: Colors.white54),
//                               ),
//                               TextButton(
//                                 onPressed: () async {
//                                   // LocationService location = LocationService(); // Removed
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) => LoginPage(),
//                                     ),
//                                   );
//                                 },
//                                 child: const Text(
//                                   'Sign in',
//                                   style: TextStyle(color: Colors.white),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:chargemate/screens/phone_number_input_page.dart';
import 'package:chargemate/screens/registration/login_page.dart';

import '../modals/introduction_page_view_model.dart';

class IntroductionScreen extends StatelessWidget {
  final IntroductionViewModel viewModel;

  const IntroductionScreen({Key? key, required this.viewModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
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
            Expanded(
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/chargingCar.png'),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'Tüm İstasyonlar Tek Uygulamada',
                      style: TextStyle(
                        color: Color(0xff145063),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      'Size en uygun istasyonu bulun,rezervasyon yaparak yolculuğunuzu kusursuz planlamanın tadını çıkarın ',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15.0),
                    ),
                    const SizedBox(height: 32.0),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff145063),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      width: double.infinity,
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              viewModel.forgetStartedButton(context);
                            },
                            style: ElevatedButton.styleFrom(
                              side: BorderSide.none,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    6.0), // Set the desired border radius here
                              ),
                            ),
                            child: const Text(
                              'KAYIT OL',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Hesabınız var mı?',
                                style: TextStyle(color: Colors.white54),
                              ),
                              TextButton(
                                onPressed: () async {
                                  viewModel.forSignInButton(context);
                                },
                                child: const Text(
                                  'Giriş Yapın',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
