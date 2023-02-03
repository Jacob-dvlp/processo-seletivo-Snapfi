import 'package:flutter/material.dart';

import '../../../style/style_box_decoration.dart';
import '../../../style/style_text.dart';
import '../../widget/custom_card_widge.dart';

class HomePageCustomReceived extends StatelessWidget {
  const HomePageCustomReceived({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 17.71, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Receber",
            style:
                context.style.textExtraBold(Colors.black, FontWeight.w600, 20),
          ),
          Card(
            shape: context.decorationBox.decoration(12),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(top: 12, right: 22, bottom: 12),
                child: Row(
                  children: [
                    SizedBox(
                      width: 41,
                      height: 41,
                      child: Image.asset(
                        "assets/icons/icon_home1.png",
                        color: const Color(0XFF2929F5),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gerar QR Code Permanente",
                          style: context.style.textLight(
                              const Color(0XFF2929F5), FontWeight.bold, 12),
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        Text(
                          "QR Code que sempre está disponível",
                          style: context.style.textLight(
                            const Color(0XFF02020A),
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
                  color: const Color(0XFF2929F5),
                ),
                text: "Gerar QR CODE de uso único",
              ),
              CustomCardWidge(
                img: Image.asset(
                  "assets/icons/icon_home2.png",
                  color: const Color(0XFF2929F5),
                ),
                text: "Receber com Chave Pix",
              )
            ],
          ),
          const CustomCardWidgefooter(text: "Transferências Agendadas"),
          const CustomCardWidgefooter(text: "Registrar ou trazer chaves "),
          InkWell(
              onTap: () => Navigator.pushNamed(context, "/limit"),
              child:
                  const CustomCardWidgefooter(text: "Configurar Limites Pix")),
        ],
      ),
    );
  }
}
