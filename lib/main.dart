import 'package:flutter/material.dart';
import 'package:meraki/screens/BloodTestReportsScreen/bloodTestReports.screen.dart';
import 'package:meraki/screens/MenuScreen/menu.screen.dart';
import 'package:meraki/utils/constants.dart';

void main() {
  runApp(Meraki_App());
}

class Meraki_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      routes: {
        MenuScreen.id: (context) => MenuScreen(),
        BloodTestReportsScreen.id: (context) => BloodTestReportsScreen(),
      },
      initialRoute: MenuScreen.id,
    );
  }
}
