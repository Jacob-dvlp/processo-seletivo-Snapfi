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

  buildWidgets()async {
      final myWidgetjson =
          await RepositoryServerDriveUiLimitePage().getJsonLimitePage();
      setState(() {
        renderWidegetForm = RepositoryServerDriveUiLimitePage()
            .createUILimitePage(myWidgetjson);
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
          child: renderWidegetForm),
    );
  }
}
