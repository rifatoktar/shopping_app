import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../constants/constants.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            margin: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                "Shoply",
                style: ConstantMobile.brandText,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ListTile(
            leading: Icon(
              Iconsax.home_2,
              color: secondaryColor,
            ),
            title: Text(
              "Home",
              style: ConstantMobile.sidebarText,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Iconsax.shopping_cart, color: secondaryColor),
            title: Text(
              "Cart",
              style: ConstantMobile.sidebarText,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Iconsax.save_2, color: secondaryColor),
            title: Text(
              "Saved",
              style: ConstantMobile.sidebarText,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Iconsax.setting_2, color: secondaryColor),
            title: Text(
              "Settings",
              style: ConstantMobile.sidebarText,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Iconsax.category, color: secondaryColor),
            title: Text(
              "More",
              style: ConstantMobile.sidebarText,
            ),
            onTap: () {},
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "By you shopping through \nShoply you are accepting \nour terms and policies",
              style: ConstantMobile.sideMenuBottomText,
            ),
          ),
          SizedBox(
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "Shoply LLC. © 2023",
              style: ConstantMobile.sideMenuBottomText,
            ),
          ),
        ],
      ),
    );
  }
}
