import 'package:flutter/material.dart';
import 'package:meraki/utils/constants.dart';

class WaterCircle extends StatelessWidget {
  WaterCircle({@required this.water});

  final double water;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      child: Center(
        child: Text(
          '$water',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: kSecondaryColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
