import 'package:flutter/material.dart';
import 'package:date_field/date_field.dart';

class TimeField extends StatelessWidget {
  final String promptText;

  TimeField({@required this.promptText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 40,
        right: 40,
        top: 10,
        bottom: 10,
      ),
      child: DateTimeFormField(
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.black45),
          errorStyle: TextStyle(color: Colors.redAccent),
          border: OutlineInputBorder(),
          suffixIcon: Icon(Icons.watch_later_outlined),
          labelText: promptText,
        ),
        mode: DateTimeFieldPickerMode.time,
      ),
    );
  }
}
