import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class TabletPromoCard extends StatelessWidget {
  final String imageAsset;
  final String promoText;
  const TabletPromoCard(
      {super.key, required this.imageAsset, required this.promoText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image:
            DecorationImage(image: AssetImage(imageAsset), fit: BoxFit.cover),
      ),
      child: Container(
        margin: EdgeInsets.only(top: 45, left: 25),
        child: Text(
          promoText,
          style: ConstantMobile.promoText,
        ),
      ),
    );
  }
}
