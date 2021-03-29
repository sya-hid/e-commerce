import 'package:ecommerce/screens/home/components/categories.dart';
import 'package:ecommerce/screens/home/components/discount_banner.dart';
import 'package:ecommerce/screens/home/components/home_header.dart';
import 'package:ecommerce/screens/home/components/popular_product.dart';
import 'package:ecommerce/screens/home/components/special_offer.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(30)),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(30)),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProduct()
          ],
        ),
      ),
    );
  }
}
