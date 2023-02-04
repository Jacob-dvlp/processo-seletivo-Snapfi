import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pix_snapfi_app/app_page.dart';
import 'package:pix_snapfi_app/page/home/home_page.dart';

void main() {
  group(" Test Header widget", () {
    testWidgets('HomePage header widgets', (WidgetTester tester) async {
      await tester.pumpWidget(const AppPage());

      expect(find.byType(HomePage), findsOneWidget);

      expect(find.byKey(const Key("saldodisponivel")), findsOneWidget);

      expect(find.byKey(const Key("saldonaconta")), findsOneWidget);

      expect(find.byKey(const Key("saldonascaixinhas")), findsOneWidget);
    });
  });
  group("Body1 widget", () {
    testWidgets('Test HomePage firstBody widgets', (WidgetTester tester) async {
      await tester.pumpWidget(const AppPage());
      expect(find.byType(HomePage), findsOneWidget);
      expect(find.byKey(const Key("textpegar")), findsOneWidget);

      expect(find.byKey(const Key("textchavepix")), findsOneWidget);

      expect(find.byKey(const Key("textcpf")), findsOneWidget);

      expect(find.byKey(const Key("textpegar")), findsOneWidget);

      expect(find.byKey(const Key("textcopiar")), findsOneWidget);

      expect(find.byKey(const Key("textboleto")), findsOneWidget);
    });
  });
  group("Body2 widgets", () {
    testWidgets('Test HomePage secondBody widgets',
        (WidgetTester tester) async {
      await tester.pumpWidget(const AppPage());

      expect(find.byType(HomePage), findsOneWidget);

      expect(find.byKey(const Key("receber")), findsOneWidget);

      expect(find.byKey(const Key("qrcodepermanente")), findsOneWidget);

      expect(find.byKey(const Key("qrcodisponivel")), findsOneWidget);

      expect(find.byKey(const Key("qrcodeunico")), findsOneWidget);

      expect(find.byKey(const Key("receberpix")), findsOneWidget);
    });
  });
  group("footer widges", () {
    testWidgets('Test HomePage footer widgets', (WidgetTester tester) async {
      await tester.pumpWidget(const AppPage());

      expect(find.byType(HomePage), findsOneWidget);

      expect(find.byKey(const Key("registrarchave")), findsOneWidget);

      expect(find.byKey(const Key("limitepix")), findsOneWidget);

      expect(find.byKey(const Key("transferenciaagenda")), findsOneWidget);
    });
  });
}
