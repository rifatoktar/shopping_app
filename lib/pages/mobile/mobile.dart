import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../constants/constants.dart';
import '../../widgets/mobile/header.dart';
import '../../widgets/mobile/product_card.dart';
import '../../widgets/mobile/promo_card.dart';
import '../../widgets/mobile/search_bar.dart';
import '../../widgets/mobile/side_menu.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      key: scaffoldKey,
      drawer: SideMenu(),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
          padding: EdgeInsets.zero,
          constraints: BoxConstraints(),
          icon: Icon(
            Iconsax.textalign_left,
            color: secondaryColor,
            size: 24,
          ),
        ),
        title: Center(
          child: Text(
            "Shoply",
            style: ConstantMobile.brandText,
          ),
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
            margin: EdgeInsets.only(right: 10),
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
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 16), child: SearchBar()),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width * .9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage("assets/images/main.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Container(
              margin: EdgeInsets.only(left: 16, top: 50),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "New furnitures \njust arrived",
                      style: ConstantMobile.adText,
                    ),
                    SizedBox(
                      height: 150,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 30,
                          width: 80,
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
          Header(header: "Promos"),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 300,
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
                scrollDirection: Axis.horizontal,
                physics: const AlwaysScrollableScrollPhysics(),
                controller: _controller,
                children: const [
                  PromoCard(
                    imageAsset: 'assets/images/laptop.jpg',
                    promoText: '20% discount \nfor laptops',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  PromoCard(
                      imageAsset: "assets/images/cosmetic.jpg",
                      promoText: "50% discount \nfor cosmetics"),
                  SizedBox(
                    width: 16,
                  ),
                  PromoCard(
                      imageAsset: "assets/images/cosmetic.jpg",
                      promoText: "50% discount \nfor cosmetics")
                ]),
          ),
          SizedBox(
            height: 20,
          ),
          Header(header: "Furnitures"),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 230,
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: const AlwaysScrollableScrollPhysics(),
              controller: _controller,
              children: const [
                ProductCard(
                  rate: '4.9',
                  imageAsset: 'assets/images/couch1.png',
                  price: '\$ 199',
                ),
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
          SizedBox(
            width: 20,
          ),
        ]),
      )),
    );
  }
}
