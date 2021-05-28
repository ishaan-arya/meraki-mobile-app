import 'package:flutter/material.dart';
import 'package:meraki/widgets/homeButton.widget.dart';

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
          children: [
            HomeButton(
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
