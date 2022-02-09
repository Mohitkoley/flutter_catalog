import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
      ),
      body: Column(
        children: [
          _cartTotal()
              .p32()
              .backgroundColor(context.theme.colorScheme.secondary)
              .expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        children: [
          "\$9999".text.xl5.color(context.theme.colorScheme.secondary).make(),
          30.widthBox,
          ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: "Buying now supported yet".text.make(),
                ));
              },
              child: "Buy Now".text.color(context.theme.cardColor).make(),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    context.theme.colorScheme.secondary),
              )).w32(context),
        ],
      ),
    );
  }
}

class _cartTotal extends StatefulWidget {
  _cartTotal({Key? key}) : super(key: key);

  @override
  State<_cartTotal> createState() => __cartTotalState();
}

class __cartTotalState extends State<_cartTotal> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.done_outline_rounded),
              title: Text("Item $index"),
              trailing: Icon(Icons.highlight_remove_sharp),
            ));
  }
}
