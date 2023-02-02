import 'package:flutter/material.dart';

import '../../../style/box_decoration.dart';
import '../../../style/text_style.dart';
import '../../widget/custom_card_widge.dart';

class HomePageCustomPayWidget extends StatelessWidget {
  const HomePageCustomPayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 17.71, top: 23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Pagar",
            style: context.style.textExtraBold,
          ),
          Card(
            shape: context.decorationBox.decoration(),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 65,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 12, left: 12.88, right: 22, bottom: 12),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 41,
                      height: 41,
                      child: Image.asset("assets/icons/icon_home2.png"),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("USAR CHAVE PIX"),
                        SizedBox(
                          height: 9,
                        ),
                        Text("CPF/CNPJ, e-mail, telefone ou outra chave"),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CustomCardWidge(
                  img: "icon_home1.png", text: "Ler QR CODE", size: 98),
              CustomCardWidge(
                  img: "icon_home3.png", text: "Pix Copiar e Colar", size: 98),
              CustomCardWidge(
                  img: "icon_home_dolar1.png", text: "Pagar Boleto", size: 98)
            ],
          )
        ],
      ),
    );
  }
}
