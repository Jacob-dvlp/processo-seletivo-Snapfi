import 'package:flutter/material.dart';

import '../../../helpers/app_helpe.dart';
import '../../../style/style_box_decoration.dart';
import '../../../style/style_text.dart';
import '../../widget/custom_card_widge.dart';

class HomePageCustomReceived extends StatelessWidget {
  final int colorIconHex;
  final int colorTextHex;
  const HomePageCustomReceived(
      {Key? key, required this.colorIconHex, required this.colorTextHex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 17.71, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Receber",
            style: context.style
                .textExtraBold(Color(colorTextHex), FontWeight.w600, 20),
          ),
          Card(
            shape: context.decorationBox.decoration(12),
            child: SizedBox(
              width: context.sizeDevice.width,
              child: Padding(
                padding: const EdgeInsets.only(top: 12, right: 22, bottom: 12),
                child: Row(
                  children: [
                    SizedBox(
                      width: 41,
                      height: 41,
                      child: Image.asset(
                        "assets/icons/icon_home1.png",
                        color: Color(colorIconHex),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gerar QR Code Permanente",
                          style: context.style.textLight(
                              Color(colorTextHex), FontWeight.bold, 12),
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        Text(
                          "QR Code que sempre está disponível",
                          style: context.style.textLight(
                            Color(colorTextHex),
                            FontWeight.w300,
                            13,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomCardWidge(
                img: Image.asset(
                  "assets/icons/icon_home1.png",
                  color: Color(colorIconHex),
                ),
                text: "Gerar QR CODE de uso único",
              ),
              CustomCardWidge(
                img: Image.asset(
                  "assets/icons/icon_home2.png",
                  color: Color(colorIconHex),
                ),
                text: "Receber com Chave Pix",
              )
            ],
          ),
        ],
      ),
    );
  }
}
