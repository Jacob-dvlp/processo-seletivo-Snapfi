import 'package:pix_snapfi_app/style/style_box_decoration.dart';

import 'imports.dart';

class HomePageCustomPayWidget extends StatelessWidget {
  final String valueColorTextH1;
  final String valueColorTextH2;
  final String valueColorIconsPay;
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
            key: const Key("textpegar"),
            "Pagar",
            style: context.style
                .textExtraBold(HexColor(valueColorTextH1), FontWeight.w600, 20),
          ),
          Card(
            shape: context.decorationBox.decoration(12),
            child: SizedBox(
              width: context.sizeDevice.width,
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
                          key: const Key("textchavepix"),
                          "USAR CHAVE PIX",
                          style: context.style.textLight(
                              HexColor(valueColorIconsPay),
                              FontWeight.bold,
                              12),
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        Text(
                          key: const Key("textcpf"),
                          "CPF/CNPJ, e-mail, telefone ou outra chave",
                          style: context.style.textLight(
                            HexColor(valueColorTextH2),
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
                    color: HexColor(valueColorIconsPay)),
                text: "Ler QR CODE",
                key: const Key("textqrcode"),
              ),
              CustomCardWidge(
                img: Image.asset("assets/icons/icon_home3.png",
                    color: HexColor(valueColorIconsPay)),
                text: "Pix Copiar e Colar",
                key: const Key("textcopiar"),
              ),
              CustomCardWidge(
                img: Image.asset("assets/icons/icon_home_dolar1.png",
                    color: HexColor(valueColorIconsPay)),
                text: "Pagar Boleto",
                key: const Key("textboleto"),
              )
            ],
          )
        ],
      ),
    );
  }
}
