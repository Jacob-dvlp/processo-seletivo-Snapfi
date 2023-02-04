import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:pix_snapfi_app/main.dart' as app;
import 'package:pix_snapfi_app/page/home/home_page.dart';
import 'package:pix_snapfi_app/page/limit/limit_page.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group("Test E2E Test", () {
    testWidgets(
        "Clique no botão <Configurar Limites Pix> pra  ir na proxima tela e simular uma transferencia e voltar na Home Page",
        (WidgetTester tester) async {
      app.main();

      await tester.pumpAndSettle();

      expect(find.byType(HomePage), findsOneWidget);

      var next = find.byKey(const Key("nextpage"));

      await tester.pumpAndSettle();

      await tester.ensureVisible(next);

      await tester.tap(next);

      await tester.pumpAndSettle();

      expect(find.byType(LimitPage), findsOneWidget);

      await tester.enterText(find.byKey(const Key("fomrfielddiurno")), "21215");

      await tester.enterText(find.byKey(const Key("formfieldnoturno")), "5454");

      var btn = find.byKey(const Key("formBtn"));

      await tester.pumpAndSettle();

      await tester.ensureVisible(btn);

      await tester.tap(btn);

      await tester.pumpAndSettle();

      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
