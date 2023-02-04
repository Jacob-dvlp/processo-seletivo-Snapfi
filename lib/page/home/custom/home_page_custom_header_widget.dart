import 'package:flutter/material.dart';

import '../../../style/style_text.dart';
import '../../widget/costum_painter_widget.dart';

class HomePageCustomHeaderWidget extends StatelessWidget {
  final int primaryColor;
  final int secondaryColor;
  final int colortext;

  const HomePageCustomHeaderWidget(
      {Key? key,
      required this.primaryColor,
      required this.secondaryColor,
      required this.colortext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CostumPainterWidget(),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              end: Alignment.topCenter,
              tileMode: TileMode.mirror,
              begin: Alignment.bottomCenter,
              colors: [
                Color(primaryColor),
                Color(secondaryColor),
              ]),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 17.71),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 91,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      key: const Key("saldodisponivel"),
                      "Saldo Disponível",
                      style: context.style
                          .textExtraBold(Color(colortext), FontWeight.w700, 23),
                    ),
                    SizedBox(
                      child: Image.asset("assets/icons/cultar.png"),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 63),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Saldo na conta",
                            key: const Key("saldonaconta"),
                            style:
                                context.style.textMedium(Color(colortext), 12),
                          ),
                          const SizedBox(
                            height: 7.0,
                          ),
                          Text(
                            "R\$•••••••••",
                            style:
                                context.style.textMedium(Color(colortext), 15),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 35),
                            child: Text(
                              key: const Key("saldonascaixinhas"),
                              "Saldo nas caixinhas",
                              style: context.style
                                  .textMedium(Color(colortext), 12),
                            ),
                          ),
                          const SizedBox(
                            height: 7.0,
                          ),
                          Text(
                            "R\$•••••••••",
                            style:
                                context.style.textMedium(Color(colortext), 15),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
