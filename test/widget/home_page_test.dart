import 'package:flutter_test/flutter_test.dart';
import 'package:pix_snapfi_app/app_page.dart';
import 'package:pix_snapfi_app/page/home/home_custom/imports.dart';
import 'package:pix_snapfi_app/page/home/home_page.dart';
import 'package:pix_snapfi_app/src/model/model_server_drive_ui_home_page.dart';

void main() {
  testWidgets('HomePage widget', (WidgetTester tester) async {
    await tester.pumpWidget(const AppPage());
    List<ModelServerDriveUiHomePage> respositoryHome =
        await RepositoryServerDriveUIHomePage().getJsonHomePage();
    RepositoryServerDriveUIHomePage().createUIHomePage(respositoryHome);

    await tester.pumpAndSettle();

    expect(find.byType(HomePage), findsOneWidget);

    expect(find.byKey(const Key("home")), findsOneWidget);

    expect(find.byKey(const Key("saldonaconta")), findsOneWidget);

    expect(find.byKey(const Key("saldonascaixinhas")), findsOneWidget);

    expect(find.byKey(const Key("textpagar")), findsOneWidget);

    expect(find.byKey(const Key("textchavepix")), findsOneWidget);

    expect(find.byKey(const Key("textcpf")), findsOneWidget);

    expect(find.byKey(const Key("textcopiar")), findsOneWidget);

    expect(find.byKey(const Key("textboleto")), findsOneWidget);

    expect(find.byKey(const Key("receber")), findsOneWidget);

    expect(find.byKey(const Key("qrcodepermanente")), findsOneWidget);

    expect(find.byKey(const Key("qrcodisponivel")), findsOneWidget);

    expect(find.byKey(const Key("qrcodeunico")), findsOneWidget);

    expect(find.byKey(const Key("receberpix")), findsOneWidget);

    expect(find.byKey(const Key("registrarchave")), findsOneWidget);

    expect(find.byKey(const Key("limitepix")), findsOneWidget);

    expect(find.byKey(const Key("transferenciaagenda")), findsOneWidget);
  });
}
