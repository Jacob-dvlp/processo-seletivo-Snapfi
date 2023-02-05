import '../../../style/style_box_decoration.dart';
import 'imports.dart';

class HomePageCustomReceived extends StatelessWidget {
  final String colorIconHex;
  final String colorTextHex;
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
            key: const Key("receber"),
            "Receber",
            style: context.style
                .textExtraBold(HexColor(colorTextHex), FontWeight.w600, 20),
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
                        color: HexColor(colorIconHex),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          key: const Key("qrcodepermanente"),
                          "Gerar QR Code Permanente",
                          style: context.style.textLight(
                              HexColor(colorTextHex), FontWeight.bold, 12),
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        Text(
                          key: const Key("qrcodisponivel"),
                          "QR Code que sempre está disponível",
                          style: context.style.textLight(
                            HexColor(colorTextHex),
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
                  color: HexColor(colorIconHex),
                ),
                text: "Gerar QR CODE de uso único",
                key: const Key("qrcodeunico"),
              ),
              CustomCardWidge(
                img: Image.asset(
                  "assets/icons/icon_home2.png",
                  color: HexColor(colorIconHex),
                ),
                key: const Key("receberpix"),
                text: "Receber com Chave Pix",
              )
            ],
          ),
        ],
      ),
    );
  }
}
