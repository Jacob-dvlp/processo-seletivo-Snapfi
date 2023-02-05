import 'imports.dart';

class HomePageCustomBodyWidgets extends StatefulWidget {
  const HomePageCustomBodyWidgets({Key? key}) : super(key: key);

  @override
  State<HomePageCustomBodyWidgets> createState() =>
      _HomePageCustomBodyWidgetsState();
}

class _HomePageCustomBodyWidgetsState extends State<HomePageCustomBodyWidgets> {
  List<Widget> renderWidegetHome = [];

  buildWigets() async {
    final myWidgetjson =
        await RepositoryServerDriveUIHomePage().getJsonHomePage();
    setState(() {
      renderWidegetHome =
          RepositoryServerDriveUIHomePage().createUIHomePage(myWidgetjson);
    });
  }

  @override
  void initState() {
    buildWigets();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child:
            Column(key: const Key("home"), children: [...renderWidegetHome]));
  }
}
