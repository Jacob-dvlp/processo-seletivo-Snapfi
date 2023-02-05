import 'imports.dart';

class HomePageCustomFooterWidget extends StatelessWidget {
  final String colorFooterHex;
  const HomePageCustomFooterWidget({Key? key, required this.colorFooterHex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 17.71, top: 15),
      child: Column(
        children: [
          CustomCardWidgefooter(
              key: const Key("transferenciaagenda"),
              text: "Transferências Agendadas",
              colorFooterHex: colorFooterHex),
          CustomCardWidgefooter(
            key: const Key("registrarchave"),
            text: "Registrar ou trazer chaves ",
            colorFooterHex: colorFooterHex,
          ),
          InkWell(
              key: const Key("nextpage"),
              onTap: () => Navigator.pushNamed(context, "/limit"),
              child: CustomCardWidgefooter(
                key: const Key("limitepix"),
                text: "Configurar Limites Pix",
                colorFooterHex: colorFooterHex,
              )),
        ],
      ),
    );
  }
}
