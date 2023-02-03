import 'package:flutter/material.dart';

import '../../style/style_box_decoration.dart';
import '../../style/style_colors.dart';
import '../../style/style_text.dart';

class CustomCardWidge extends StatelessWidget {
  final Image img;
  final String text;
  const CustomCardWidge({
    Key? key,
    required this.img,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Card(
        shape: context.decorationBox.decoration(6),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 12,
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 41,
                  height: 41,
                  child: img,
                ),
                Flexible(
                  child: Text(
                    text,
                    style: context.style.textLight(
                      const Color(0XFF02020A),
                      FontWeight.w300,
                      14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomCardWidgefooter extends StatelessWidget {
  final String text;
  const CustomCardWidgefooter({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: context.decorationBox.decoration(6),
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 8, left: 8, right: 8),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: context.style.textExtraBold(
                    context.colors.secondary, FontWeight.w700, 12),
              ),
              Icon(
                Icons.arrow_forward,
                color: context.colors.secondary,
              )
            ],
          ),
        ),
      ),
    );
  }
}
