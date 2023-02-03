import 'package:flutter/material.dart';

import '../../../style/style_colors.dart';
import '../../../style/style_text.dart';
import '../../widget/costum_painter_widget.dart';

class HomePageCustomHeaderWidget extends StatelessWidget {
  const HomePageCustomHeaderWidget({Key? key}) : super(key: key);

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
                context.colors.primary,
                context.colors.secondary,
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
                      "Saldo Disponível",
                      style: context.style
                          .textExtraBold(Colors.white, FontWeight.w700, 23),
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
                            style: context.style.textMedium(Colors.white, 12),
                          ),
                          const SizedBox(
                            height: 7.0,
                          ),
                          Text(
                            "R\$•••••••••",
                            style: context.style.textMedium(Colors.white, 15),
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
                              "Saldo nas caixinhas",
                              style: context.style.textMedium(Colors.white, 12),
                            ),
                          ),
                          const SizedBox(
                            height: 7.0,
                          ),
                          Text(
                            "R\$•••••••••",
                            style: context.style.textMedium(Colors.white, 15),
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
