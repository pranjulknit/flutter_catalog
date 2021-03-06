import 'package:flutter/material.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "CatalogApp".text.xl5.bold.color(Theme.of(context).accentColor).make(),
        "Trending products".text.xl2.make(),
      ],
    );
  }
}
