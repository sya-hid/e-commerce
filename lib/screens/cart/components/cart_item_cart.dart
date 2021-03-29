import 'package:ecommerce/constants.dart';
import 'package:ecommerce/models/Cart.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';


class CartItemCart extends StatelessWidget {
  final Cart cart;
  const CartItemCart({
    Key key,
    this.cart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(20),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              style: TextStyle(fontSize: 16, color: Colors.black),
              maxLines: 2,
            ),
            const SizedBox(height: 10),
            Text.rich(TextSpan(
                text: "\$${cart.product.price}",
                style: TextStyle(color: kPrimaryColor),
                children: [
                  TextSpan(
                      text: " x ${cart.numOfItem}",
                      style: TextStyle(color: kTextColor))
                ]))
          ],
        )
      ],
    );
  }
}
