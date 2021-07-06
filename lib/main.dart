import 'package:flutter/material.dart';
import 'package:meraki/screens/BloodTestReportsScreen/bloodTestReports.screen.dart';
import 'package:meraki/screens/MenuScreen/menu.screen.dart';
import 'package:meraki/screens/ScheduleAppointmentScreen/scheduleAppointment.screen.dart';
import 'package:meraki/screens/MyDailyLogScreen/myDailyLog.screen.dart';
import 'package:meraki/screens/SignUpScreen/signUp.screen.dart';
import 'package:meraki/screens/SignInScreen/signIn.screen.dart';
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
        ScheduleAppointmentScreen.id: (context) => ScheduleAppointmentScreen(),
        MyDailyLogScreen.id: (context) => MyDailyLogScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        SignInScreen.id: (context) => SignInScreen(),
      },
      initialRoute: MyDailyLogScreen.id,
    );
  }
}
