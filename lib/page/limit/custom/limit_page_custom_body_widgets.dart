import 'package:flutter/material.dart';

import '../../widget/custom_form_widget.dart';
import 'limite_page_custom_header_widget.dart';

class LimitPageCustomBodyWidgets extends StatelessWidget {
  const LimitPageCustomBodyWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 21.25, left: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              LimitePageCustomHeaderWidget(
                  key: Key("formHeader"),
                  colorTextH4: 0XFF4A4A50,
                  colortextH1: 0xFF000000),
              CustomFormWidget(
                textdiurno: "Limite máximo de transação diurna",
                textnoturno: "Limite máximo de transação noturna",
                colorBtnHex: 0XFFD33091,
                colortextForm: 0XFF26262D,
                key: Key("form"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
