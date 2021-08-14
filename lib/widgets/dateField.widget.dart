import 'package:flutter/material.dart';
import 'package:date_field/date_field.dart';

class DateField extends StatelessWidget {
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return DateTimeFormField(
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.black),
        errorStyle: TextStyle(color: Colors.redAccent),
        border: OutlineInputBorder(),
        suffixIcon: Icon(Icons.event_note),
        labelText: 'Date',
      ),
      mode: DateTimeFieldPickerMode.date,
      autovalidateMode: AutovalidateMode.always,
      validator: (e) => ((e?.year ?? 0) > date.year)
          ? 'Please select a date in the past'
          : null,
      onDateSelected: (DateTime value) {
        print(value);
      },
    );
  }
}
