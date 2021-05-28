import 'package:flutter/material.dart';
import 'package:meraki/utils/constants.dart';

class MenuButton extends StatelessWidget {
  MenuButton({@required this.title, @required this.onTap});
  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: kSecondaryColor,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(title, style: kMenuTextStyle),
        ),
      ),
    );
  }
}
