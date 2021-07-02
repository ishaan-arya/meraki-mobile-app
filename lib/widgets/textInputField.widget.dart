import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final String hintText;
  TextInputField({this.hintText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 40,
      ),
      child: TextField(
        autocorrect: true,
        decoration: InputDecoration(hintText: hintText),
      ),
    );
  }
}
