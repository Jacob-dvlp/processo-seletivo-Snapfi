import 'imports.dart';

class HomePageCustomBodyWidgets extends StatefulWidget {
  const HomePageCustomBodyWidgets({Key? key}) : super(key: key);

  @override
  State<HomePageCustomBodyWidgets> createState() =>
      _HomePageCustomBodyWidgetsState();
}

class _HomePageCustomBodyWidgetsState extends State<HomePageCustomBodyWidgets> {
  List<Widget> renderWidegetHome = [];
  bool isViblityUI = true;

  buildWigets() async {
    Future.delayed(
      const Duration(seconds: 5),
      () async {
        isLoading(true);
        final myWidgetjson =
            await RepositoryServerDriveUIHomePage().getJsonHomePage();
        setState(() {
          renderWidegetHome =
              RepositoryServerDriveUIHomePage().createUIHomePage(myWidgetjson);
        });
        isLoading(false);
      },
    );
  }

  isLoading(bool value) {
    setState(() {
      isViblityUI = value;
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
        child: isViblityUI
            ? const Center(
                child: Padding(
                padding: EdgeInsets.only(top: 350),
                child: CircularProgressIndicator(
                  backgroundColor: Colors.black,
                  color: Colors.white,
                ),
              ))
            : Column(key: const Key("home"), children: [...renderWidegetHome]));
  }
}
