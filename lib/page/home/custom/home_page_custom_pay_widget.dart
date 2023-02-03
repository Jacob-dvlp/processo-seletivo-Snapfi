import 'package:flutter/material.dart';

import '../../../style/style_box_decoration.dart';
import '../../../style/style_text.dart';
import '../../widget/custom_card_widge.dart';

class HomePageCustomPayWidget extends StatelessWidget {
  final int valueColorTextH1;
  final int valueColorTextH2;
  final int valueColorIconsPay;
  const HomePageCustomPayWidget(
      {Key? key,
      required this.valueColorTextH1,
      required this.valueColorIconsPay,
      required this.valueColorTextH2})
      : super(key: key);

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
            style: context.style
                .textExtraBold(Color(valueColorTextH1), FontWeight.w600, 20),
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
                      child: Image.asset(
                        "assets/icons/icon_home2.png",
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "USAR CHAVE PIX",
                          style: context.style.textLight(
                              Color(valueColorTextH1), FontWeight.bold, 12),
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        Text(
                          "CPF/CNPJ, e-mail, telefone ou outra chave",
                          style: context.style.textLight(
                            Color(valueColorTextH2),
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
                img: Image.asset("assets/icons/icon_home1.png",
                    color: Color(valueColorIconsPay)),
                text: "Ler QR CODE",
              ),
              CustomCardWidge(
                img: Image.asset("assets/icons/icon_home3.png",
                    color: Color(valueColorIconsPay)),
                text: "Pix Copiar e Colar",
              ),
              CustomCardWidge(
                img: Image.asset("assets/icons/icon_home_dolar1.png",
                    color: Color(valueColorIconsPay)),
                text: "Pagar Boleto",
              )
            ],
          )
        ],
      ),
    );
  }
}
