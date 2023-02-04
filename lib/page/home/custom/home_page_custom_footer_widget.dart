import 'package:flutter/material.dart';

import '../../widget/custom_card_widge.dart';

class HomePageCustomFooterWidget extends StatelessWidget {
  final int colorFooterHex;
  const HomePageCustomFooterWidget({Key? key, required this.colorFooterHex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 17.71, top: 15),
      child: Column(
        children: [
          CustomCardWidgefooter(
              text: "Transferências Agendadas", colorFooterHex: colorFooterHex),
          CustomCardWidgefooter(
            text: "Registrar ou trazer chaves ",
            colorFooterHex: colorFooterHex,
          ),
          InkWell(
              onTap: () => Navigator.pushNamed(context, "/limit"),
              child: CustomCardWidgefooter(
                text: "Configurar Limites Pix",
                colorFooterHex: colorFooterHex,
              )),
        ],
      ),
    );
  }
}
