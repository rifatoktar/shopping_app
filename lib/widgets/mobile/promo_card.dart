import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class PromoCard extends StatelessWidget {
  final String imageAsset;
  final String promoText;
  const PromoCard(
      {super.key, required this.imageAsset, required this.promoText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 225,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(imageAsset), fit: BoxFit.cover)),
        child: Container(
          margin: EdgeInsets.only(top: 45, left: 25),
          child: Text(
            promoText,
            style: ConstantMobile.promoText,
          ),
        ),
      ),
    );
  }
}
