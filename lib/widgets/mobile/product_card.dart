import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../constants/constants.dart';

class ProductCard extends StatelessWidget {
  final String rate;
  final String imageAsset;
  final String price;
  const ProductCard(
      {super.key,
      required this.rate,
      required this.imageAsset,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: mainColor),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 16,
            ),
            Container(
              height: 15,
              margin: EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  WebsafeSvg.asset("assets/icons/star.svg", height: 12),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    rate,
                    style: ConstantMobile.rateText,
                  )
                ],
              ),
            ),
            Image.asset(
              imageAsset,
              width: 70,
              height: 90,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                style: ConstantMobile.loremText,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    price,
                    style: ConstantMobile.price,
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: primaryColor),
                      child: Center(
                          child: Text(
                        "Add to cart",
                        style: ConstantMobile.addCartText,
                      )),
                    ),
                  )
                ],
              ),
            )
          ]),
    );
  }
}
