import 'package:flutter/material.dart';
import 'package:meraki/utils/constants.dart';

class SectionName extends StatelessWidget {
  SectionName({this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: kSubheadingTextStyle,
      ),
    );
  }
}
