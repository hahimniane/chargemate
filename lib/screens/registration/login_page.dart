import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../constants/constants.dart';
import '../../service/api_service.dart';

import '../../modals/model_stations.dart';
import '../../service/phone_number_formatter.dart';
import '../../service/user_location_service.dart';
import '../../widgets/bottonNavbarController.dart';

import '../phone_number_input_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  var loadingButtonController = RoundedLoadingButtonController();

  late String _phoneNumber;

  late String plainNumberWithCode;
  String countryCode = '+90';

  var phoneNumberController = TextEditingController();

  var passwordController = TextEditingController();

  String? _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xffDEEBE9),
                ),
                height: MediaQuery.of(context).size.height / 2.367,
                width: MediaQuery.of(context).size.width,
                child: const Image(
                  image: AssetImage(
                    'assets/images/Asset 1 1.png',
                  ),
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 30),
              child: Text('OTP Verification',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: appColor)),
            ),
            const Text(
              'Charge Mate with OTP\n Verification: Safe & Easy!',
              style: TextStyle(
                  color: Color(0xff143463),
                  fontWeight: FontWeight.w400,
                  fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            // PhoneAuth(
            //   formKey: _formKey,
            //   phoneNumber: _phoneNumber,
            // ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage(
                                    'assets/images/tr.png',
                                  ),
                                  height: 28,
                                  width: 28,
                                  fit: BoxFit.scaleDown,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '+90',
                                  style: TextStyle(),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        flex: 3,
                        child: Container(
                          height: 50,
                          child: TextFormField(
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(12),
                              FilteringTextInputFormatter.digitsOnly,
                              PhoneNumberFormatter(),
                            ],
                            controller: phoneNumberController,
                            keyboardType: TextInputType.numberWithOptions(),
                            decoration: InputDecoration(
                              isCollapsed: false,
                              contentPadding: EdgeInsets.all(10),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              labelText: 'Phone number',
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a phone number';
                              }

                              value = extractPlainNumber(value);
                              print('the value is $value');

                              final phoneRegex = RegExp(r'^\d{10}$');
                              if (!phoneRegex.hasMatch(value)) {
                                print(value);
                                return 'Please enter a valid phone number without the country code';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              value = extractPlainNumber(value!);
                              print('this is the value $value');
                              _phoneNumber = value;
                              // print(
                              //     'the phone controller is $phoneNumberController');
                            },
                          ),
                        ),
                      ),
                      SizedBox(width: 10)
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: true, // To hide the entered password
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                10.0), // Set the border radius
                          ),
                          labelText: 'Password', // Optional label text
                          hintText: 'Enter your password', // Optional hint text
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please enter a valid password';
                          }

                          value = extractPlainNumber(value);
                          print('the value is $value');

                          RegExp passwordRegex = RegExp(r'^(?=.{8,}$).*$');
                          if (!passwordRegex.hasMatch(value)) {
                            print(value);
                            return 'Please enter a valid password. minimum 8 characters';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          value = extractPlainNumber(value!);
                          print('this is the value $value');
                          _password = value;
                          // print(
                          //     'the phone controller is $phoneNumberController');
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'We will send you a one-time\n password to this mobile number',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff64748B),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 0.0, right: 8, left: 8, top: 10),
                    child: RoundedLoadingButton(
                      borderRadius: 12,
                      width: MediaQuery.of(context).size.width * 0.90,
                      color: appColor,
                      // style: ElevatedButton.styleFrom(
                      //   backgroundColor: appColor,
                      // ),
                      onPressed: () async {
                        loadingButtonController.start();
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          plainNumberWithCode =
                              countryCode + extractPlainNumber(_phoneNumber);

                          var email = await getUserEmail(plainNumberWithCode);
                          print('came all the way here');
                          try {
                            print('this is the email ${email.toString()}');
                            await auth.signInWithEmailAndPassword(
                                email: email.toString(), password: _password!);
                            Stations station = Stations();
                            List<ElectricStation>? myData =
                                await station.getStations(headers);
                            // print(myData);
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomNavBar(),
                                //     HomeScreen(
                                //   allStations: myData,
                                // ),
                              ),
                              (route) => false,
                            );
                          } on Exception catch (e) {
                            print(e.toString());
                            loadingButtonController.reset();
                          }

                          loadingButtonController.reset();
                        } else {
                          loadingButtonController.reset();
                        }
                      },
                      controller: loadingButtonController,
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                  style: TextStyle(color: appColor),
                ),
                TextButton(
                  onPressed: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PhoneNumberInputPage()));
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(color: appColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }

  String extractPlainNumber(String text) {
    return text.replaceAll('-', '');
  }

  getUserEmail(String plainNumberWithCode) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    var data = await firestore
        .collection('Users')
        .where('phone_number', isEqualTo: plainNumberWithCode)
        .get();
    if (data.docs.isNotEmpty) {
      var email = data.docs[0]['email'];
      print(email);
      return email;
    } else {
      return null;
    }
  }
}
