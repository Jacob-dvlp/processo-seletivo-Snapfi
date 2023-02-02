import 'package:flutter/material.dart';

import '../../style/box_decoration.dart';

class CustomCardWidge extends StatelessWidget {
  final String img;
  final String text;
  final double size;
  const CustomCardWidge({
    Key? key,
    required this.img,
    required this.text,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Card(
        shape: context.decorationBox.decoration(),
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 3,
          height: 65,
          child: Padding(
            padding: const EdgeInsets.only(top: 12, left: 5.88, bottom: 12),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 41,
                  height: 41,
                  child: Image.asset("assets/icons/$img"),
                ),
                Flexible(child: Text(text)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
