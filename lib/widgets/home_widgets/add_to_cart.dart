import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/src/extensions/bool_ext.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';

class AddToCartState extends StatefulWidget {
  final Item catalog;
  AddToCartState({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  State<AddToCartState> createState() => _AddToCartStateState();
}

class _AddToCartStateState extends State<AddToCartState> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.catalog) ?? false;
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Theme.of(context).primaryColor),
        shape: MaterialStateProperty.all(
          StadiumBorder(),
        ),
      ),
      onPressed: () {
        if (!isInCart) {
          isInCart = isInCart.toggle();
          final _catalog = CatalogModel();
          _cart.catalog = _catalog;
          _cart.add(widget.catalog);

          setState(() {});
        }
      },
      child: isInCart
          ? Icon(Icons.done_outline)
          : Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
