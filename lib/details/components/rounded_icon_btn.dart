import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RoundedIconBtn extends StatelessWidget {
  final IconData icon;
  final GestureTapCallback press;
  const RoundedIconBtn({
    Key key,
    @required this.icon,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      child: FlatButton(
        padding: EdgeInsets.symmetric(horizontal: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: Colors.white,
        onPressed: press,
        child: Icon(icon, size: 15),
        // child: SvgPicture.asset(
        //   "assets/icons/Back ICon.svg",
        //   height: 15,
        // ),
      ),
    );
  }
}
