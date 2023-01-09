import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../constants/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          height: 40,
          width: MediaQuery.of(context).size.width * .8,
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
          height: 40,
          width: 65,
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
    );
  }
}
