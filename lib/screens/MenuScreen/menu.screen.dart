import 'package:flutter/material.dart';
import 'package:meraki/screens/BloodTestReportsScreen/bloodTestReports.screen.dart';
import 'package:meraki/widgets/menuButton.widget.dart';

class MenuScreen extends StatefulWidget {
  static String id = "menuScreen_id";

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Image.asset('images/Meraki_logo.jpeg'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            MenuButton(
              title: 'My Daily Log',
              onTap: () {
                print('It was pressed');
              },
            ),
            SizedBox(height: 25),
            MenuButton(
              title: 'My Diet Plan',
              onTap: () {
                print('It was pressed');
              },
            ),
            SizedBox(height: 25),
            MenuButton(
              title: 'My Blood Test Reports',
              onTap: () {
                Navigator.pushNamed(context, BloodTestReportsScreen.id);
              },
            ),
            SizedBox(height: 25),
            MenuButton(
              title: 'Schedule An Appointment',
              onTap: () {
                print('It was pressed');
              },
            ),
          ],
        ),
      ),
    );
  }
}
