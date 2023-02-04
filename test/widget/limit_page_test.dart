import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pix_snapfi_app/app_page.dart';
import 'package:pix_snapfi_app/page/home/home_page.dart';
import 'package:pix_snapfi_app/page/limit/limit_page.dart';

void main() {
  group("Test Body widget", () {
    testWidgets('Test limit Page body', (WidgetTester tester) async {

      await tester.pumpWidget(const AppPage());

      expect(find.byType(HomePage), findsOneWidget);

      var next = find.byKey(const Key("nextpage"));

      await tester.ensureVisible(next);

      await tester.tap(next);

      await tester.pumpAndSettle();
      
      expect(find.byType(LimitPage), findsOneWidget);

      expect(find.byKey(const Key("formHeader")), findsOneWidget);

      expect(find.byKey(const Key("form")), findsOneWidget);
    });
  });
}
