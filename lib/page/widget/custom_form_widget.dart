import 'package:flutter/material.dart';

import '../../style/style_buttom.dart';
import '../../style/style_input_decoration.dart';
import '../../style/style_text.dart';

class CustomFormWidget extends StatelessWidget {
  final String textdiurno;
  final String textnoturno;

  const CustomFormWidget(
      {super.key, required this.textdiurno, required this.textnoturno});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Limite do período diurno",
            style: context.style
                .textSemiBold(FontWeight.w600, const Color(0XFF26262D), 20),
          ),
          const SizedBox.square(
            dimension: 24,
          ),
          SizedBox(child: Text(textdiurno)),
          const SizedBox.square(
            dimension: 10,
          ),
          SizedBox(
            child: TextFormField(
              keyboardType: TextInputType.number,
              cursorColor: const Color(0XFF02020A),
              style: context.style.textMedium(const Color(0XFF02020A), 15),
              decoration: context.input.inputDecoration(labelText: true),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "Limite do período noturno",
            style: context.style
                .textSemiBold(FontWeight.w600, const Color(0XFF26262D), 20),
          ),
          const SizedBox.square(
            dimension: 24,
          ),
          SizedBox(child: Text(textnoturno)),
          const SizedBox.square(
            dimension: 10,
          ),
          SizedBox(
            child: TextFormField(
              keyboardType: TextInputType.number,
              cursorColor: const Color(0XFF02020A),
              style: context.style.textMedium(const Color(0XFF02020A), 15),
              decoration: context.input.inputDecoration(labelText: true),
            ),
          ),
          const SizedBox.square(
            dimension: 20,
          ),
          const Text(
            "Horário Noturno",
          ),
          const SizedBox.square(
            dimension: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 111,
                height: 44,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  initialValue: "18:00",
                  style: context.style.textMedium(const Color(0XFF02020A), 15),
                  decoration: context.input.inputDecoration(labelText: false),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 111,
                height: 44,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  initialValue: "18:00",
                  style: context.style.textMedium(const Color(0XFF02020A), 15),
                  decoration: context.input.inputDecoration(labelText: false),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 21, right: 12, top: 61),
            child: SizedBox(
              width: 327,
              child: ElevatedButton(
                style: context.decorationButtom
                    .primaryBotton(const Color(0XFFD33091)),
                onPressed: () {},
                child: Text(
                  "SALVAR",
                  style: context.style
                      .textExtraBold(Colors.white, FontWeight.w700, 12),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
