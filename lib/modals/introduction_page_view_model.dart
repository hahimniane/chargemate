import 'package:flutter/material.dart';

import '../screens/phone_number_input_page.dart';
import '../screens/registration/login_page.dart';
import '../service/route_navigation_service.dart';

class IntroductionViewModel {
  final NavigationService navigationService = NavigationService();

  void forGetStartedButton(BuildContext context) {
    navigationService.navigateTo(context, PhoneNumberInputPage());
  }

  void forSignInButton(BuildContext context, bool comingFromHomeScreen) {
    navigationService.navigateTo(
        context,
        LoginPage(
          isComingFromHomeScreen: comingFromHomeScreen,
        ));
  }
}
