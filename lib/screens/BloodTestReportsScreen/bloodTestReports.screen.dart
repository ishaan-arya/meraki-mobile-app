import 'package:flutter/material.dart';
import 'package:meraki/widgets/homeButton.widget.dart';
import 'package:meraki/utils/constants.dart';
import 'package:date_field/date_field.dart';

class BloodTestReportsScreen extends StatefulWidget {
  static String id = "bloodTestReportsScreen_id";

  @override
  _BloodTestReportsScreenState createState() => _BloodTestReportsScreenState();
}

class _BloodTestReportsScreenState extends State<BloodTestReportsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeButton(
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Center(
              child: Text(
                'BLOOD TEST REPORTS',
                style: kHeadingTextStyle,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Divider(thickness: 1.5, color: Colors.black),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: DateTimeFormField(
                decoration: const InputDecoration(
                  hintStyle: TextStyle(color: Colors.black),
                  errorStyle: TextStyle(color: Colors.redAccent),
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.event_note),
                  labelText: 'Date',
                ),
                mode: DateTimeFieldPickerMode.date,
                autovalidateMode: AutovalidateMode.always,
                validator: (e) =>
                    (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                onDateSelected: (DateTime value) {
                  print(value);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
