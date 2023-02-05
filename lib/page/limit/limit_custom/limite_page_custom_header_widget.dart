import '../../home/home_custom/imports.dart';

class LimitePageCustomHeaderWidget extends StatelessWidget {
  final String colortextH1;
  final String colorTextH4;
  const LimitePageCustomHeaderWidget(
      {Key? key, required this.colortextH1, required this.colorTextH4})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back_ios_new),
        ),
        const SizedBox(
          height: 33.25,
        ),
        Text(
          "Limites das transações Pix",
          style: context.style.textExtraBold(
            HexColor(colortextH1),
            FontWeight.bold,
            23,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        SizedBox(
          width: context.sizeDevice.width / 1.5,
          child: Text(
            """Vocês pode ajustar os limites de transação Pix durante o dia e no período noturno.""",
            style: context.style.textMedium(HexColor(colorTextH4), 12),
          ),
        ),
        const SizedBox(
          height: 47,
        ),
      ],
    );
  }
}
