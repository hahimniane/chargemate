import 'package:chargemate/constants/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../service/api_service.dart';
import '../../modals/model_stations.dart';
import '../home_screen.dart';

class EmailInputPage extends StatefulWidget {
  String phoneNumber;
  EmailInputPage({Key? key, required this.phoneNumber}) : super(key: key);

  @override
  State<EmailInputPage> createState() => _EmailInputPageState();
}

class _EmailInputPageState extends State<EmailInputPage> {
  final _formKey = GlobalKey<FormState>();

  late String _name;

  late String _lastName;

  late String _email;

  late String _password;

  RoundedLoadingButtonController completeSignUpButtonController =
      RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white70,
        title: Container(
          height: MediaQuery.of(context).size.height * 0.20,
          // color: Color(0xffDEEBE9),
          width: MediaQuery.of(context).size.width * 0.50,
          child: Image(
            fit: BoxFit.scaleDown,
            image: AssetImage('assets/images/logos/img.png'),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'KAYIT OL',
                  style: GoogleFonts.montserrat(
                      color: appColor,
                      height: 3,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 8.0, left: 3),
                                  child: Text(
                                    'İsim *',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 45,
                                  child: Material(
                                    borderRadius: BorderRadius.circular(7.0),
                                    child: TextFormField(
                                      textInputAction: TextInputAction.next,
                                      style: TextStyle(),
                                      decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(7.0),
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Lütfen adınızı giriniz';
                                        }
                                        return null;
                                      },
                                      onSaved: (value) {
                                        _name = value!;
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 8.0, left: 3),
                                  child: Text(
                                    'Soyisim *',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Container(
                                  height: 45,
                                  child: Material(
                                    borderRadius: BorderRadius.circular(7.0),
                                    child: TextFormField(
                                      textInputAction: TextInputAction.next,
                                      style: TextStyle(),
                                      decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 10),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(7.0),
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Lütfen soyadınızı giriniz';
                                        }
                                        return null;
                                      },
                                      onSaved: (value) {
                                        _lastName = value!;
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 8.0, left: 3),
                              child: Text(
                                'Eposta ',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey.shade600),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.60,
                              height: 45,
                              child: Material(
                                borderRadius: BorderRadius.circular(7.0),
                                child: TextFormField(
                                  textInputAction: TextInputAction.next,
                                  style: TextStyle(),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7.0),
                                    ),
                                  ),
                                  // validator: (value) {
                                  //   if (value!.isEmpty) {
                                  //     return 'Lütfen epostanızı  giriniz';
                                  //   }
                                  //   return null;
                                  // },
                                  onSaved: (value) {
                                    _email = value!;
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      // SizedBox(height: 20),
                      // Align(
                      //   alignment: Alignment.topLeft,
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       Padding(
                      //         padding:
                      //             const EdgeInsets.only(bottom: 8.0, left: 3),
                      //         child: Text(
                      //           'Şifre *',
                      //           style: TextStyle(
                      //               fontSize: 16, color: Colors.grey.shade600),
                      //         ),
                      //       ),
                      //       Container(
                      //         width: MediaQuery.of(context).size.width * 0.60,
                      //         height: 45,
                      //         child: Material(
                      //           borderRadius: BorderRadius.circular(7.0),
                      //           child: TextFormField(
                      //             obscureText: true,
                      //             textInputAction: TextInputAction.done,
                      //             style: TextStyle(),
                      //             decoration: InputDecoration(
                      //               contentPadding: const EdgeInsets.symmetric(
                      //                   horizontal: 20, vertical: 10),
                      //               border: OutlineInputBorder(
                      //                 borderRadius: BorderRadius.circular(7.0),
                      //               ),
                      //             ),
                      //             validator: (value) {
                      //               if (value!.isEmpty) {
                      //                 return 'Lütfen şifrenizi giriniz';
                      //               }
                      //               return null;
                      //             },
                      //             onSaved: (value) {
                      //               _password = value!;
                      //             },
                      //           ),
                      //         ),
                      //       ),
                      //       SizedBox(
                      //         height: 4,
                      //       ),
                      //       Text(
                      //         'Şifre En az:\n 6 karakter.\n 1 Noktalama işareti içermelidir',
                      //         style: GoogleFonts.montserrat(
                      //           color: appColor,
                      //         ),
                      //       )
                      //     ],
                      //   ),
                      // ),

                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 0.0, right: 8, left: 8, top: 10),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: appColor,
                                  borderRadius: BorderRadius.circular(12)),
                              child: RoundedLoadingButton(
                                controller: completeSignUpButtonController,
                                color: appColor,
                                // style: ElevatedButton.styleFrom(
                                //   backgroundColor: appColor,
                                // ),
                                onPressed: () async {
                                  if (_formKey.currentState!.validate()) {
                                    _formKey.currentState!.save();
                                    print(_name);
                                    print(_lastName);
                                    print(_email);

                                    FirebaseAuth auth = FirebaseAuth.instance;
                                    print(
                                        'the current user id is ${auth.currentUser!.uid}');
                                    // FirebaseFirestore firestore =
                                    //     FirebaseFirestore.instance;
                                    // User? user = auth.currentUser;
                                    // user!.delete();

                                    final CollectionReference usersCollection =
                                        firestore.collection('Users');
                                    usersCollection
                                        .doc(auth.currentUser!.uid)
                                        .set({
                                      'uid': auth.currentUser!.uid,
                                      'email': _email,
                                      'first_name': _name,
                                      "last_name": _lastName,
                                      "phone_number": widget.phoneNumber
                                    }, SetOptions(merge: true)).then(
                                            (value) async {
                                      Stations station = Stations();
                                      List<ElectricStation>? myData =
                                          await station.getStations(headers);
                                      print(myData);
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => HomeScreen(
                                                    allStations: myData,
                                                  )));
                                      // await usersCollection
                                      //     .doc(value.user!.uid)
                                      //     .set({
                                      //   'uid': value.user!.uid,
                                      //   'email': _email,
                                      //   'first_name': _name,
                                      //   "last_name": _lastName,
                                      //   "phone_number": widget.phoneNumber
                                    }).onError((error, stackTrace) {
                                      print('the error is ${error.toString()}');
                                    });
                                  } else {
                                    completeSignUpButtonController.reset();
                                  }
                                },
                                child: const Text(
                                  'KAYIT OL',
                                  style: TextStyle(
                                    wordSpacing: 0.5,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                      // ElevatedButton(
                      //   onPressed: () {
                      //     if (_formKey.currentState!.validate()) {
                      //       _formKey.currentState!.save();
                      //       // Process the form data
                      //       print('Name: $_name');
                      //       print('Last Name: $_lastName');
                      //       print('Email: $_email');
                      //     }
                      //   },
                      //   child: Text('Submit'),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
