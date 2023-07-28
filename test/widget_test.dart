// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:chargemate/modals/introduction_page_view_model.dart';
import 'package:chargemate/screens/introduction_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('SignInScreen displays correctly', (WidgetTester tester) async {
    // Build the SignInScreen widget
    await tester.pumpWidget(
      MaterialApp(
        home: IntroductionScreen(
          viewModel: IntroductionViewModel(),
        ),
      ),
    );

    // Verify that the text widgets are displayed correctly
    expect(find.text('Supercharge Your Car'), findsOneWidget);
    expect(
      find.text(
          'Charge Up with Charge Mate: Find \nYour Closest Electric Car Charging \n Station Now!'),
      findsOneWidget,
    );

    // Tap the "GET STARTED" button
    await tester.tap(find.text('GET STARTED'));
    await tester.pumpAndSettle();
    //
    // // Verify that the PhoneNumberInputPage is navigated to
    // expect(find.byType(PhoneNumberInputPage), findsOneWidget);
    //
    // // Tap the "Sign in" text button
    // // await tester.tap(find.text('Sign in'));
    // await tester.pumpAndSettle();
    //
    // // Verify that the LoginPage is navigated to
    // expect(find.byType(LoginPage), findsOneWidget);
  });
}
