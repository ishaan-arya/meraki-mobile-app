import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  @override
  HomeButton({@required this.onTap});
  final Function onTap;

  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.only(left: 15),
        child: Icon(
          Icons.home,
          size: 40,
        ),
      ),
      onTap: onTap,
    );
  }
}
