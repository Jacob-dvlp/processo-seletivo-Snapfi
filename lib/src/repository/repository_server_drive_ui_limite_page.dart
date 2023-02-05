import '../../page/limit/limit_custom/import.dart';
import '../model/model_server_drive_ui_limite_page.dart';
import 'imports.dart';

class RepositoryServerDriveUiLimitePage {
  Widget? _widget;
  Future<ModelServerDriveUiLimitePage> getJsonLimitePage() async {
    final responseUI = await rootBundle
        .loadString("assets/json/serve_drive_ui_limite_page.json");
    final views = modelServerDriveUiLimitePageFromJson(responseUI);
    return views.first;
  }

  Widget createUILimitePage(ModelServerDriveUiLimitePage uiLimitePage) {
    _widget = renderWidgetsLimitePage(uiLimitePage);
    return _widget!;
  }

  renderWidgetsLimitePage(view) {
    ModelServerDriveUiLimitePage ui = view;
    if (ui.formLimite.ui == "Column") {
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LimitePageCustomHeaderWidget(
              key: const Key("formHeader"),
              colorTextH4: ui.formLimite.colorTextH4,
              colortextH1: ui.formLimite.colortextH1,
            ),
            CustomFormWidget(
              textdiurno: "Limite máximo de transação diurna",
              textnoturno: "Limite máximo de transação noturna",
              colorBtnHex: ui.formLimite.colorBtnHex,
              colortextForm: ui.formLimite.colortextForm,
              key: const Key("form"),
            )
          ],
        ),
      );
    } else {
      return const Center(
        child: CircularProgressIndicator(
          key: Key("circluar2"),
          backgroundColor: Colors.black,
          color: Colors.white,
        ),
      );
    }
  }
}
