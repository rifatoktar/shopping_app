import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class Header extends StatelessWidget {
  final String header;
  const Header({super.key, required this.header});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(
            header,
            style: ConstantMobile.secondHeader,
          ),
          Spacer(),
          TextButton(
              onPressed: () {},
              child: Text(
                "See all",
                style: ConstantMobile.seeAllText,
              ))
        ],
      ),
    );
  }
}
