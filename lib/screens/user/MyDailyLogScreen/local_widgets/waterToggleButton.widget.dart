import 'package:flutter/material.dart';
import 'package:meraki/utils/constants.dart';

enum WaterSelection {
  glasses,
  litres,
}

class WaterToggleButton extends StatefulWidget {
  WaterSelection selectedWaterType;
  @override
  _WaterToggleButtonState createState() => _WaterToggleButtonState();
}

class _WaterToggleButtonState extends State<WaterToggleButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              widget.selectedWaterType = WaterSelection.glasses;
            });
          },
          child: Container(
            height: 35,
            width: 90,
            color: widget.selectedWaterType == WaterSelection.glasses
                ? kActiveCardColor
                : kInactiveCardColor,
            child: Center(
              child: Text(
                'GLASSES',
                style: kSub3TextStyle,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              widget.selectedWaterType = WaterSelection.litres;
            });
          },
          child: Container(
            height: 35,
            width: 90,
            color: widget.selectedWaterType == WaterSelection.litres
                ? kActiveCardColor
                : kInactiveCardColor,
            child: Center(
              child: Text(
                'LITRES',
                style: kSub3TextStyle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
