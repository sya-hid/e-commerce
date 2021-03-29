import 'package:ecommerce/details/components/body.dart';
import 'package:ecommerce/details/components/custom_app_bar.dart';
import 'package:ecommerce/models/Product.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(arguments.product.rating),
      body: Body(product: arguments.product),
    );
  }
}

class ProductDetailsArguments {
  final Product product;
  ProductDetailsArguments({@required this.product});
}
