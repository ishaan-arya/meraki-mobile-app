import 'package:flutter/material.dart';
import 'package:meraki/screens/user/BloodTestReportsScreen/bloodTestReports.screen.dart';
import 'package:meraki/screens/user/MenuScreen/menu.screen.dart';
import 'package:meraki/screens/user/ScheduleAppointmentScreen/scheduleAppointment.screen.dart';
import 'package:meraki/screens/user/MyDailyLogScreen/myDailyLog.screen.dart';
import 'package:meraki/screens/user/SignUpScreen/signUp.screen.dart';
import 'package:meraki/screens/user/SignInScreen/signIn.screen.dart';
import 'package:meraki/screens/admin/AdminMenuScreen/adminMenu.screen.dart';
import 'package:meraki/screens/admin/AdminDailyLogScreen/adminDailyLog.screen.dart';
import 'package:meraki/utils/constants.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        //User Screens
        MenuScreen.id: (context) => MenuScreen(),
        BloodTestReportsScreen.id: (context) => BloodTestReportsScreen(),
        ScheduleAppointmentScreen.id: (context) => ScheduleAppointmentScreen(),
        MyDailyLogScreen.id: (context) => MyDailyLogScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        SignInScreen.id: (context) => SignInScreen(),
        //Admin Screens
        AdminMenuScreen.id: (context) => AdminMenuScreen(),
        AdminDailyLogScreen.id: (context) => AdminDailyLogScreen(),
      },
      initialRoute: SignUpScreen.id,
    );
  }
}
