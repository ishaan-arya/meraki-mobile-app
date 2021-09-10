import 'package:flutter/material.dart';

class CircleButton extends StatefulWidget {
  CircleButton({this.onTap, this.icon});

  final Function onTap;
  final IconData icon;
  @override
  _CircleButtonState createState() => _CircleButtonState();
}

class _CircleButtonState extends State<CircleButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Icon(
        widget.icon,
        size: 40,
      ),
      onTap: widget.onTap,
    );
  }
}
