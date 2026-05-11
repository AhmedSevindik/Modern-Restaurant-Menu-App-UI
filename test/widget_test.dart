import 'package:flutter_test/flutter_test.dart';

import 'package:menu_verse/main.dart';

void main() {
  testWidgets('App loads correctly',
          (WidgetTester tester) async {

        await tester.pumpWidget(
          const DineFlowApp(),
        );

        expect(find.text('MenuVerse'), findsOneWidget);
      });
}