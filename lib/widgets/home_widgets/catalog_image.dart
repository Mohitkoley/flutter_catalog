import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/src/flutter/container.dart';
import 'package:velocity_x/velocity_x.dart';

class CataLogImage extends StatelessWidget {
  const CataLogImage({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .p8
        .color(MyTheme.CreamColor)
        .make()
        .p16()
        .w40(context);
  }
}
