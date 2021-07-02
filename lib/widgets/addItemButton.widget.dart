import 'package:flutter/material.dart';
import 'package:meraki/utils/constants.dart';

class AddItemButton extends StatelessWidget {
  final String buttonText;
  final Function onTap;

  AddItemButton({
    @required this.buttonText,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          height: 35,
          width: 135,
          color: Colors.white,
          child: Center(
            child: Text(
              buttonText,
              style: kSub3TextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
