import 'package:flutter/material.dart';

import '../../../src/repository/repository_server_drive.dart';

class HomePageCustomBodyWidgets extends StatefulWidget {
  const HomePageCustomBodyWidgets({Key? key}) : super(key: key);

  @override
  State<HomePageCustomBodyWidgets> createState() =>
      _HomePageCustomBodyWidgetsState();
}

class _HomePageCustomBodyWidgetsState extends State<HomePageCustomBodyWidgets> {
  List<Widget> serverDriveUI = [];

  getVl() async {
    final myWidgetjson = await RepositoryServerDriveUI().init();
    setState(() {
      serverDriveUI = RepositoryServerDriveUI().createUI(myWidgetjson);
    });
  }

  @override
  void initState() {
    getVl();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [...serverDriveUI]);
  }
}
