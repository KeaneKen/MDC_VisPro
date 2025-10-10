// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:shrine/app.dart';

void main() {
  testWidgets('Shrine app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ShrineApp());

    // Verify that our app starts with the login page.
    expect(find.text('Login'), findsOneWidget);
    
    // Verify that login form elements are present
    expect(find.text('Username'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
  });

  testWidgets('Bottom navigation bar test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ShrineApp());

    // Navigate past the login screen by tapping NEXT button
    await tester.tap(find.text('NEXT'));
    await tester.pumpAndSettle();

    // Verify that bottom navigation bar items are present
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Categories'), findsOneWidget);
    expect(find.text('Search'), findsOneWidget);
    expect(find.text('Settings'), findsOneWidget);

    // Tap on the Categories tab
    await tester.tap(find.text('Categories'));
    await tester.pump();

    // Tap on the Search tab
    await tester.tap(find.text('Search'));
    await tester.pump();

    // Tap on the Settings tab
    await tester.tap(find.text('Settings'));
    await tester.pump();

    // Tap back on Home tab
    await tester.tap(find.text('Home'));
    await tester.pump();

    // If we get here without errors, the bottom navigation is working
  });
}
