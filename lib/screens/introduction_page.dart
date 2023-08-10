import 'package:chargemate/constants/constants.dart';
import 'package:chargemate/screens/splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../modals/introduction_page_view_model.dart';

class IntroductionScreen extends StatelessWidget {
  final IntroductionViewModel viewModel;

  const IntroductionScreen({Key? key, required this.viewModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    setFirstTimeUserToFalse();
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                // color: Colors.white70,
                height: 50.43,
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
              child: Container(
                // color: Colors.yellow,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Tüm İstasyonlar Tek Uygulamada',
                        style: GoogleFonts.montserrat(
                          color: Color(0xff145063),
                          fontSize: 26.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        'Size en uygun istasyonu bulun,rezervasyon yaparak yolculuğunuzu kusursuz planlamanın tadını çıkarın ',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: Color(0xFF555555), // Set the text color
                            fontSize: 16, // Set the font size
                            fontWeight: FontWeight.w400, // Set the font weight
                            height:
                                1.5, // Set the line height (line spacing as a multiple of the font size)
                            letterSpacing: -0.41, // Set the letter spacing
                          ),
                          // You can also set other font styles like `fontStyle` if needed
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 40.0),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.90,
                        padding: EdgeInsets.fromLTRB(10, 20, 10, 5),
                        height: MediaQuery.of(context).size.height * 0.14,
                        decoration: BoxDecoration(
                          color: const Color(0xff145063),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        // width: double.infinity,
                        // padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  viewModel.forGetStartedButton(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: appColor,
                                  backgroundColor: Colors.white, // Text color
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  // padding: EdgeInsets.symmetric(
                                  //     vertical: 19.0, horizontal: 137.0),
                                  alignment: Alignment
                                      .center, // Center the content horizontally and vertically
                                ),
                                child: Text(
                                  'KAYIT OL',
                                  style: GoogleFonts.montserrat(
                                    letterSpacing: 0.01,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            // const SizedBox(height: 2.0),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Hesabınız var mı?',
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        color: Colors
                                            .white, // Set the text color to white
                                        fontSize: 13, // Set the font size to 13
                                        fontWeight: FontWeight
                                            .w400, // Set the font weight to normal (400)
                                        height:
                                            1.38462, // Set the line height (line spacing as a multiple of the font size)
                                        letterSpacing:
                                            0.49, // Set the letter spacing to 0.49
                                      ),
                                      // You can also set other font styles like `fontStyle` if needed
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  TextButton(
                                    onPressed: () async {
                                      viewModel.forSignInButton(context, false);
                                    },
                                    child: Text(
                                      'Giriş Yapın',
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                          color: Colors
                                              .white, // Set the text color to white
                                          fontSize:
                                              13, // Set the font size to 13
                                          fontWeight: FontWeight
                                              .w700, // Set the font weight to 700 (bold)
                                          height:
                                              1.33333, // Set the line height (line spacing as a multiple of the font size)
                                          letterSpacing:
                                              0.49, // Set the letter spacing to 0.49
                                          decoration: TextDecoration.underline,
                                          decorationColor: Colors.grey,
                                          decorationThickness:
                                              2, // Set the text underline
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
