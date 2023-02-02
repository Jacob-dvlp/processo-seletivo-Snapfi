import 'package:flutter/material.dart';

import '../../../style/colors_app.dart';
import '../../../style/text_style.dart';

class HomePageCustomHeaderWidget extends StatelessWidget {
  const HomePageCustomHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 234,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            end: Alignment.topLeft,
            begin: Alignment.bottomRight,
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
                top: 40,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Saldo Disponível",
                    style: context.style.textExtraBold,
                  ),
                  SizedBox(
                    child: Image.asset("assets/icons/cultar.png"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Saldo na conta",
                          style: context.style.textMedium,
                        ),
                        const SizedBox(
                          height: 7.0,
                        ),
                        Text(
                          "R\$ *******",
                          style: context.style.textMedium,
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
                            style: context.style.textMedium,
                          ),
                        ),
                        const SizedBox(
                          height: 7.0,
                        ),
                        Text(
                          "R\$ *******",
                          style: context.style.textMedium,
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
    );
  }
}
