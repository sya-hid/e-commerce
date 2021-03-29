import 'package:ecommerce/screens/profile/components/profile_menu.dart';
import 'package:ecommerce/screens/profile/components/profile_pict.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            icon: "assets/icons/User Icon.svg",
            text: "My Account",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/Bell.svg",
            text: "Notification",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/Settings.svg",
            text: "Settings",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/Question mark.svg",
            text: "Help Center",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/Log out.svg",
            text: "Log Out",
            press: () {},
          )
        ],
      ),
    );
  }
}
