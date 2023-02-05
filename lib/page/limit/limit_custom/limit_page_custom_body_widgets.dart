import '../../../src/repository/repository_server_drive_ui_limite_page.dart';
import 'import.dart';

class LimitPageCustomBodyWidgets extends StatefulWidget {
  const LimitPageCustomBodyWidgets({Key? key}) : super(key: key);

  @override
  State<LimitPageCustomBodyWidgets> createState() =>
      _LimitPageCustomBodyWidgetsState();
}

class _LimitPageCustomBodyWidgetsState
    extends State<LimitPageCustomBodyWidgets> {
  Widget? renderWidegetForm;
  bool isViblityUI = true;

  buildWidgets() {
    Future.delayed(const Duration(seconds: 5), () async {
      isLoading(true);
      final myWidgetjson =
          await RepositoryServerDriveUiLimitePage().getJsonLimitePage();
      setState(() {
        renderWidegetForm = RepositoryServerDriveUiLimitePage()
            .createUILimitePage(myWidgetjson);
      });
      isLoading(false);
    });
  }

  isLoading(bool value) {
    setState(() {
      isViblityUI = value;
    });
  }

  @override
  void initState() {
    buildWidgets();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
          padding: const EdgeInsets.only(top: 21.25, left: 12),
          child: isViblityUI
              ? const Center(
                  child: CircularProgressIndicator(
                  backgroundColor: Colors.black,
                  color: Colors.white,
                ))
              : renderWidegetForm),
    );
  }
}
