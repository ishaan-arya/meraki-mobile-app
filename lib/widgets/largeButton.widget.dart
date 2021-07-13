import 'package:flutter/material.dart';
import 'package:meraki/utils/constants.dart';

class LargeButton extends StatelessWidget {
  final Function onTap;
  final String buttonText;

  LargeButton({
    @required this.onTap,
    @required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 140,
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(buttonText, style: kButtonTextStyle),
        ),
      ),
    );
  }
}
