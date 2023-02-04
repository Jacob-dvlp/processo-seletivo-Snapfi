import 'package:flutter/material.dart';

import '../../style/style_buttom.dart';
import '../../style/style_input_decoration.dart';
import '../../style/style_text.dart';

class CustomFormWidget extends StatefulWidget {
  final String textdiurno;
  final String textnoturno;
  final int colorBtnHex;
  final int colortextForm;

  const CustomFormWidget(
      {super.key,
      required this.textdiurno,
      required this.textnoturno,
      required this.colorBtnHex,
      required this.colortextForm});

  @override
  State<CustomFormWidget> createState() => _CustomFormWidgetState();
}

class _CustomFormWidgetState extends State<CustomFormWidget> {
  final textControllerDiurno = TextEditingController();
  final textControllerNoturno = TextEditingController();
  bool isLoading = true;

  save() {
    if (textControllerDiurno.text.isEmpty ||
        textControllerNoturno.text.isEmpty) {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Color(widget.colorBtnHex),
          duration: const Duration(seconds: 3),
          content: const Text("Campos vazios não são permetidos"),
        ),
      );
    }
    isLoadingForm(true);
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, "/");
    });
    isLoadingForm(false);
  }

  void isLoadingForm(bool value) {
    setState(() {
      isLoading = value;
    });
  }

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
                .textSemiBold(FontWeight.w600, Color(widget.colortextForm), 20),
          ),
          const SizedBox.square(
            dimension: 24,
          ),
          SizedBox(child: Text(widget.textdiurno)),
          const SizedBox.square(
            dimension: 10,
          ),
          SizedBox(
            child: TextFormField(
              key: const Key("fomrfielddiurno"),
              controller: textControllerDiurno,
              keyboardType: TextInputType.number,
              cursorColor: const Color(0XFF02020A),
              style: context.style.textMedium(Color(widget.colortextForm), 15),
              decoration: context.input.inputDecoration(labelText: true),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "Limite do período noturno",
            style: context.style
                .textSemiBold(FontWeight.w600, Color(widget.colortextForm), 20),
          ),
          const SizedBox.square(
            dimension: 24,
          ),
          SizedBox(child: Text(widget.textnoturno)),
          const SizedBox.square(
            dimension: 10,
          ),
          SizedBox(
            child: TextFormField(
              key: const Key("formfieldnoturno"),
              controller: textControllerNoturno,
              keyboardType: TextInputType.number,
              cursorColor: const Color(0XFF02020A),
              style: context.style.textMedium(Color(widget.colortextForm), 15),
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
                  key: const Key("formfieldh1"),
                  keyboardType: TextInputType.number,
                  initialValue: "18:00",
                  style:
                      context.style.textMedium(Color(widget.colortextForm), 15),
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
                  key: const Key("formfieldh2"),
                  keyboardType: TextInputType.number,
                  initialValue: "18:00",
                  style:
                      context.style.textMedium(Color(widget.colortextForm), 15),
                  decoration: context.input.inputDecoration(labelText: false),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 21, right: 12, top: 61),
            child: SizedBox(
              width: 327,
              child: isLoading
                  ? ElevatedButton(
                      key: const Key("formBtn"),
                      style: context.decorationButtom
                          .primaryBotton(Color(widget.colorBtnHex)),
                      onPressed: () {
                        save();
                      },
                      child: Text(
                        "SALVAR",
                        style: context.style
                            .textExtraBold(Colors.white, FontWeight.w700, 12),
                      ),
                    )
                  : Center(
                      child: CircularProgressIndicator(
                        key: const Key("progress"),
                        backgroundColor: Color(widget.colorBtnHex),
                        color: Colors.white,
                      ),
                    ),
            ),
          )
        ],
      ),
    );
  }
}
