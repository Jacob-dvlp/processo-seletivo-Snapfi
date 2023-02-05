import 'package:flutter_test/flutter_test.dart';
import 'package:pix_snapfi_app/app_page.dart';
import 'package:pix_snapfi_app/page/home/home_custom/imports.dart';
import 'package:pix_snapfi_app/page/home/home_page.dart';
import 'package:pix_snapfi_app/page/limit/limit_page.dart';
import 'package:pix_snapfi_app/src/model/model_server_drive_ui_home_page.dart';
import 'package:pix_snapfi_app/src/repository/repository_server_drive_ui_limite_page.dart';

void main() {
  testWidgets('Body widget limit Page body', (WidgetTester tester) async {
    await tester.pumpWidget(const AppPage());
    List<ModelServerDriveUiHomePage> respositoryHome =
        await RepositoryServerDriveUIHomePage().getJsonHomePage();
    RepositoryServerDriveUIHomePage().createUIHomePage(respositoryHome);

    await tester.pumpAndSettle();

    expect(find.byType(HomePage), findsOneWidget);

    var next = find.byKey(const Key("nextpage"));

    await tester.ensureVisible(next);

    await tester.tap(next);

    await tester.pumpAndSettle();

    final respositoryLimite =
        await RepositoryServerDriveUiLimitePage().getJsonLimitePage();

    RepositoryServerDriveUiLimitePage().createUILimitePage(respositoryLimite);
    await tester.pumpAndSettle();

    expect(find.byType(LimitPage), findsOneWidget);

    expect(find.byKey(const Key("formHeader")), findsOneWidget);

    expect(find.byKey(const Key("form")), findsOneWidget);
  });
}
