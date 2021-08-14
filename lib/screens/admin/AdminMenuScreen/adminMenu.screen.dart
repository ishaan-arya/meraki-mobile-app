import 'package:flutter/material.dart';
import 'package:meraki/widgets/menuButton.widget.dart';

class AdminMenuScreen extends StatefulWidget {
  static const String id = "adminMenuScreen_id";

  @override
  _AdminMenuScreenState createState() => _AdminMenuScreenState();
}

class _AdminMenuScreenState extends State<AdminMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Image.asset('images/Meraki_logo.jpeg'),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              MenuButton(
                title: 'Daily Logs',
                onTap: () {
                  //Navigate to daily logs screen
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              MenuButton(
                title: 'Diet Plans',
                onTap: () {
                  //Navigate to diet plans screen
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              MenuButton(
                title: 'Blood Test Reports',
                onTap: () {
                  //Navigate to blood test reports
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              MenuButton(
                title: 'Appointment Requests',
                onTap: () {
                  //Navigate to appointment requests
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            ],
          ),
        ),
      ),
    );
  }
}
