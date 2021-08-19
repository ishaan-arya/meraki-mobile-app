import 'package:flutter/material.dart';
import 'package:meraki/widgets/homeButton.widget.dart';
import 'package:meraki/utils/constants.dart';

class AdminDailyLogScreen extends StatefulWidget {
  static const String id = "adminDailyLogScreen_id";

  @override
  _AdminDailyLogScreen createState() => _AdminDailyLogScreen();
}

class _AdminDailyLogScreen extends State<AdminDailyLogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
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
                  'DAILY LOGS',
                  style: kHeadingTextStyle,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Divider(thickness: 1.5, color: Colors.black),
            ],
          ),
        ),
      ),
    );
  }
}
