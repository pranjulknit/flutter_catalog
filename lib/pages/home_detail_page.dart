import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/home_widgets/add_to_cart.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: context.canvasColor,
        bottomNavigationBar: Container(
          color: context.cardColor,
          child: ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalog.price}".text.bold.xl4.red800.make(),
                AddToCart(catalog: catalog,).wh(120, 50),
              ]).p32(),
        ),
        body: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(children: [
                    catalog.name.text.xl4.color(context.accentColor).make(),
                    catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                    10.heightBox,
                    "Clita sanctus ut stet rebum sanctus magna dolor, ut takimata sed erat gubergren kasd stet voluptua diam et, sea lorem duo sea duo no sit sed et lorem, diam nonumy sit eirmod dolores clita lorem. Dolores sit diam diam sed, sed at et et ipsum lorem elitr sed eos lorem."
                        .text
                        .make()
                        .p16(),
                  ]).py64(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
