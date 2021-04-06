import 'package:flutter/material.dart';
import 'constants.dart';

class IconText extends StatelessWidget {

  IconText({this.cardIcon, this.cardText});

  final IconData cardIcon;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: kIconSize,
        ),
        SizedBox(
          height: kSpaceBetween,
        ),
        Text(
          cardText,
          style: kCardTextStyle,
        ),
      ],
    );
  }
}