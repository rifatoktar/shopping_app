import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoply_web/widgets/tablet/promo_card.dart';

import '../../constants/constants.dart';
import '../../widgets/header.dart';
import '../../widgets/tablet/product_card.dart';

class TabletScreen extends StatefulWidget {
  const TabletScreen({super.key});

  @override
  State<TabletScreen> createState() => _TabletScreenState();
}

class _TabletScreenState extends State<TabletScreen> {
  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.only(left: 16),
          child: Text(
            "Shoply",
            style: ConstantWeb.brandText,
          ),
        ),
        leadingWidth: MediaQuery.of(context).size.width * .5,
        title: Row(
          children: [
            Container(
              height: 35,
              width: MediaQuery.of(context).size.width * .3,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  color: mainColor),
              child: TextField(
                cursorColor: secondaryColor,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search a product...',
                  hintStyle: ConstantMobile.searchText,
                  suffixIcon: IconButton(
                    focusColor: Colors.transparent,
                    color: primaryColor,
                    iconSize: 20,
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    icon: Icon(Iconsax.microphone_2),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            Container(
              height: 35,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                color: primaryColor,
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Iconsax.search_normal_1,
                  size: 20,
                  color: secondaryColor,
                ),
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Iconsax.user,
              color: secondaryColor,
              size: 24,
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Container(
            margin: EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Iconsax.notification_status,
                color: secondaryColor,
                size: 24,
              ),
            ),
          ),
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
              child: ListView(
                children: [
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
                    child: SelectableText(
                      "By you shopping through \nShoply you are accepting \nour terms and policies",
                      style: ConstantMobile.sideMenuBottomText,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: SelectableText(
                      "Shoply LLC. © 2023",
                      style: ConstantMobile.sideMenuBottomText,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 370,
                    width: MediaQuery.of(context).size.width * .5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage("assets/images/main.jpg"),
                          fit: BoxFit.cover),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 50, top: 50),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "New furnitures \njust arrived",
                              style: ConstantWeb.adText,
                            ),
                            SizedBox(
                              height: 150,
                            ),
                            GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: primaryColor),
                                  child: Center(
                                    child: Text(
                                      "Check it",
                                      style: ConstantMobile.checkText,
                                    ),
                                  ),
                                ))
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Header(
                    header: 'Furnitures',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 291,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: const AlwaysScrollableScrollPhysics(),
                      controller: _controller,
                      children: const [
                        ProductCard(
                            rate: "4.9",
                            imageAsset: "assets/images/couch1.png",
                            price: "\$ 199"),
                        SizedBox(
                          width: 16,
                        ),
                        ProductCard(
                            rate: "4.9",
                            imageAsset: "assets/images/couch2.png",
                            price: "\$ 159"),
                        SizedBox(
                          width: 16,
                        ),
                        ProductCard(
                            rate: "4.9",
                            imageAsset: "assets/images/couch3.png",
                            price: "\$ 139"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: Header(header: "Promos")),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      child: ListView(
                          scrollDirection: Axis.vertical,
                          physics: const AlwaysScrollableScrollPhysics(),
                          controller: _controller,
                          children: const [
                            TabletPromoCard(
                                imageAsset: "assets/images/laptop.jpg",
                                promoText: "20% discount \nfor laptops"),
                            SizedBox(
                              height: 16,
                            ),
                            TabletPromoCard(
                                imageAsset: "assets/images/cosmetic.jpg",
                                promoText: "50% discount \nfor cosmetics")
                          ]),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
