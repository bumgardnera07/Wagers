import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shot_bets/BetsListGroupView.dart';
import 'package:shot_bets/CreateBetIconButton.dart';
import 'package:shot_bets/main.dart';

void main() {
  // The TestWidgets function will also provide a WidgetTester
  // for us to work with. The WidgetTester will allow us to build and interact
  // with Widgets in the test environment.
  testWidgets('Home screen has proper layout and look', (WidgetTester tester) async {
    await tester.pumpWidget(
        MyApp()
    );

    // ensure name of app in title
    expect(find.text('Shot Bets!'), findsOneWidget);

    // ensure create bet icon
    expect(find.byType(CreateBetIconButton), findsOneWidget);

    // ensure bottom navigation bar
    final navBarFinder = find.byType(BottomNavigationBar);
    expect(navBarFinder, findsOneWidget);

    // ensure bottom navigation bar has 3 icons
    final navBarIconsFinder = find.byType(Icon);
    expect(
        find.descendant(of: navBarFinder, matching: navBarIconsFinder),
        findsNWidgets(3)
    );

    // ensure bottom navigation bar has 3 text
    final homeTextFinder = find.text("Home");
    expect(
        find.descendant(of: navBarFinder, matching: find.text("Home")),
        findsOneWidget
    );

    expect(
        find.descendant(of: navBarFinder, matching: find.text("Bets")),
        findsOneWidget
    );

    expect(
        find.descendant(of: navBarFinder, matching: find.text("Settings")),
        findsOneWidget
    );
  });

  testWidgets('Can navigate to bets screen from home screen', (WidgetTester tester) async {
    await tester.pumpWidget(
        MyApp()
    );

    // press the Bets icon button
    await tester.tap(find.widgetWithText(BottomNavigationBar, "Bets"));
    await tester.pumpAndSettle();

    // ensure screen has changed
    expect(find.byType(BetsListGroupView), findsOneWidget);
  });
}