import 'package:flutter_test/flutter_test.dart';
import 'package:pix_snapfi_app/src/model/model_server_drive_ui_limite_page.dart';
import 'package:pix_snapfi_app/src/repository/imports.dart';
import 'package:pix_snapfi_app/src/repository/repository_server_drive_ui_home_page.dart';
import 'package:pix_snapfi_app/src/repository/repository_server_drive_ui_limite_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  test("Test repository Serve Drive UI Home Page", () async {
    bool done = false;
    List<ModelServerDriveUiHomePage>? response =
        await RepositoryServerDriveUIHomePage().getJsonHomePage();
    if (response.isNotEmpty) {
      done = true;
    }
    expect(done, true);
  });

  test("Test repository Serve Drive UI Limite Page", () async {
    bool done = false;

    ModelServerDriveUiLimitePage response =
        await RepositoryServerDriveUiLimitePage().getJsonLimitePage();
    if (response.formLimite.ui == "Column") {
      done = true;
    }

    expect(done, true);
  });
}
