import 'package:flutter/material.dart';

import '../../../style/style_box_decoration.dart';
import '../../../style/style_colors.dart';
import '../../../style/style_text.dart';
import '../../widget/custom_card_widge.dart';

class HomePageCustomPayWidget extends StatelessWidget {
  const HomePageCustomPayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 17.71,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Pagar",
            style:
                context.style.textExtraBold(Colors.black, FontWeight.w600, 20),
          ),
          Card(
            shape: context.decorationBox.decoration(12),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 12),
                child: Row(
                  children: [
                    SizedBox(
                      width: 41,
                      height: 41,
                      child: Image.asset("assets/icons/icon_home2.png"),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "USAR CHAVE PIX",
                          style: context.style.textLight(
                              context.colors.secondary, FontWeight.bold, 12),
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        Text(
                          "CPF/CNPJ, e-mail, telefone ou outra chave",
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
                img: Image.asset("assets/icons/icon_home1.png"),
                text: "Ler QR CODE",
              ),
              CustomCardWidge(
                img: Image.asset("assets/icons/icon_home3.png"),
                text: "Pix Copiar e Colar",
              ),
              CustomCardWidge(
                img: Image.asset("assets/icons/icon_home_dolar1.png"),
                text: "Pagar Boleto",
              )
            ],
          )
        ],
      ),
    );
  }
}
