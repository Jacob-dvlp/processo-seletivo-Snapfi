import 'package:flutter/material.dart';

import '../../../helpers/app_helpe.dart';
import '../../../style/style_text.dart';

class LimitePageCustomHeaderWidget extends StatelessWidget {
  final int colortextH1;
  final int colorTextH4;
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
            Color(colortextH1),
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
            style: context.style.textMedium(Color(colorTextH4), 12),
          ),
        ),
        const SizedBox(
          height: 47,
        ),
      ],
    );
  }
}
