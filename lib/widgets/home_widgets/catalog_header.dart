import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      "CatalogApp"
          .text
          .xl5
          .bold
          .color(context.theme.colorScheme.onSecondary)
          .make(),
      SizedBox(height: 10),
      "Trending products".text.xl.color(MyTheme.darkBluieshColor).make()
    ]);
  }
}
