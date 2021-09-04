import 'package:flutter/material.dart';
import 'package:sahayi/screens/view_request.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var Product_on_the_cart = [
    {
      "name": "Sanitizer",
      "picture": "",
    },
    {
      "name": "Mask",
      "picture": "",
    },
    {
      "name": "PPt kit",
      "picture": "",
    },
    {
      "name": "Food",
      "picture": "",
    },
    {
      "name": "Plasma",
      "picture": "",
    },
    {
      "name": "Medicine",
      "picture": "",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Product_on_the_cart.length,
        itemBuilder: (context, index) {
          return Singlr_cart_product(
            cart_prod_name: Product_on_the_cart[index]["name"],
            cart_prod_picture: Product_on_the_cart[index]["picture"],
          );
        });
  }
}

class Singlr_cart_product extends StatefulWidget {
  final cart_prod_name;
  final cart_prod_picture;

  Singlr_cart_product({
    this.cart_prod_name,
    this.cart_prod_picture,
  });

  @override
  _Singlr_cart_productState createState() => _Singlr_cart_productState();
}

class _Singlr_cart_productState extends State<Singlr_cart_product> {
  int cart_prod_qty = 1;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading:
            new Image.asset(widget.cart_prod_picture, width: 80, height: 80),
        title: new Text(widget.cart_prod_name),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ViewRequ(),
            ),
          );
        },
      ),
    );
  }
}
