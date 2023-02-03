import 'package:flutter/material.dart';

import '../../../style/style_text.dart';

class LimitePageCustomHeaderWidget extends StatelessWidget {
  const LimitePageCustomHeaderWidget({Key? key}) : super(key: key);

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
            Colors.black,
            FontWeight.bold,
            23,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.5,
          child: Text(
            """Vocês pode ajustar os limites de transação Pix durante o dia e no período noturno.""",
            style: context.style.textMedium(const Color(0XFF4A4A50), 12),
          ),
        ),
        const SizedBox(
          height: 47,
        ),
      ],
    );
  }
}
