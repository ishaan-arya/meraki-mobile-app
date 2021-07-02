import 'package:flutter/material.dart';
import 'package:meraki/screens/BloodTestReportsScreen/bloodTestReports.screen.dart';
import 'package:meraki/screens/ScheduleAppointmentScreen/scheduleAppointment.screen.dart';
import 'package:meraki/screens/MyDailyLogScreen/myDailyLog.screen.dart';
import 'package:meraki/widgets/menuButton.widget.dart';

class MenuScreen extends StatefulWidget {
  static const String id = "menuScreen_id";

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
                title: 'My Daily Log',
                onTap: () {
                  Navigator.pushNamed(context, MyDailyLogScreen.id);
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              MenuButton(
                title: 'My Diet Plan',
                onTap: () {
                  print('It was pressed');
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              MenuButton(
                title: 'My Blood Test Reports',
                onTap: () {
                  Navigator.pushNamed(context, BloodTestReportsScreen.id);
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              MenuButton(
                title: 'Schedule An Appointment',
                onTap: () {
                  Navigator.pushNamed(context, ScheduleAppointmentScreen.id);
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
