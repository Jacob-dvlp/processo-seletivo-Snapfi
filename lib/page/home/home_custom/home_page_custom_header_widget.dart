import 'imports.dart';

class HomePageCustomHeaderWidget extends StatelessWidget {
  final String primaryColor;
  final String secondaryColor;
  final String colortext;

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
                HexColor(primaryColor),
                HexColor(secondaryColor),
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
                      style: context.style.textExtraBold(
                          HexColor(colortext), FontWeight.w700, 23),
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
                            style: context.style
                                .textMedium(HexColor(colortext), 12),
                          ),
                          const SizedBox(
                            height: 7.0,
                          ),
                          Text(
                            "R\$•••••••••",
                            style: context.style
                                .textMedium(HexColor(colortext), 15),
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
                                  .textMedium(HexColor(colortext), 12),
                            ),
                          ),
                          const SizedBox(
                            height: 7.0,
                          ),
                          Text(
                            "R\$•••••••••",
                            style: context.style
                                .textMedium(HexColor(colortext), 15),
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
