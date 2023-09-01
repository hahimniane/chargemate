import 'package:chargemate/constants/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// class ProfileCard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xffDEEBE9),
//       appBar: AppBar(
//         leading: IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: Icon(
//               Icons.arrow_back_ios,
//               color: Colors.black,
//             )),
//         elevation: 0,
//         backgroundColor: Color(0xffDEEBE9),
//         title: Container(
//           height: MediaQuery.of(context).size.height * 0.03,
//           color: Color(0xffDEEBE9),
//           width: MediaQuery.of(context).size.width * 0.50,
//           child: Image(
//             fit: BoxFit.scaleDown,
//             image: AssetImage('assets/images/logos/img.png'),
//           ),
//         ),
//       ),
//       body: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Expanded(
//             child: Container(
//               decoration: const BoxDecoration(
//                 color: Color(0xffDEEBE9),
//               ),
//               height: MediaQuery.of(context).size.height / 2.367,
//               width: MediaQuery.of(context).size.width,
//               child: const Image(
//                 image: AssetImage(
//                   'assets/images/Asset 1 1.png',
//                 ),
//                 fit: BoxFit.scaleDown,
//               ),
//             ),
//           ),
//           Container(
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(15),
//                   topRight: Radius.circular(15),
//                 )),
//             height: MediaQuery.of(context).size.height * 0.50,
//             width: double.infinity,
//             child: FutureBuilder<DocumentSnapshot>(
//                 future: FirebaseFirestore.instance
//                     .collection('Users')
//                     .doc(auth.currentUser!.uid)
//                     .get(),
//                 builder: (context, snapshot) {
//                   print(snapshot.data?.data());
//                   if (snapshot.hasError) {
//                     return Center(
//                       child: Text(
//                         'Bir Hata oluştu lütfen tekrar deneyiniz!',
//                         style: GoogleFonts.montserrat(
//                             fontWeight: FontWeight.bold, color: appColor),
//                       ),
//                     );
//                   } else if (!snapshot.hasData) {
//                     return Center(
//                       child: Container(
//                         height: 50,
//                         width: 50,
//                         child: CircularProgressIndicator(
//                           color: appColor,
//                         ),
//                       ),
//                     );
//                   }
//                   return Column(
//                     children: [
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Text(
//                         '${snapshot.data!['first_name']} ${snapshot.data!['last_name']}',
//                         style: GoogleFonts.montserrat(
//                           color: appColor,
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       ListTile(
//                         leading: Text(
//                           'Eposta:',
//                           style: GoogleFonts.montserrat(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                               color: appColor),
//                         ),
//                         title: Text(
//                           snapshot.data!['email'],
//                           style: GoogleFonts.montserrat(
//                             color: appColor,
//                             fontSize: 16,
//                           ),
//                         ),
//                       ),
//                       ListTile(
//                         leading: Text(
//                           'Telefon Numarası:',
//                           style: GoogleFonts.montserrat(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                               color: appColor),
//                         ),
//                         title: Text(
//                           snapshot.data!['phone_number'],
//                           style: GoogleFonts.montserrat(
//                             color: appColor,
//                             fontSize: 16,
//                           ),
//                         ),
//                       ),
//                     ],
//                   );
//                 }),
//           )
//         ],
//       ),
//     );
//   }
// }
