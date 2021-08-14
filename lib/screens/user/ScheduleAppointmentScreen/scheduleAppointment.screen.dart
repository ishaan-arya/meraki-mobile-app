import 'package:flutter/material.dart';
import 'package:meraki/widgets/homeButton.widget.dart';
import 'package:meraki/utils/constants.dart';
import 'package:meraki/widgets/calendar.widget.dart';
import 'package:meraki/widgets/timeField.widget.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class ScheduleAppointmentScreen extends StatefulWidget {
  static const String id = 'scheduleAppointmentScreen_id';

  @override
  _ScheduleAppointmentScreenState createState() =>
      _ScheduleAppointmentScreenState();
}

class _ScheduleAppointmentScreenState extends State<ScheduleAppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  'SCHEDULE AN APPOINTMENT',
                  style: kHeadingTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Divider(thickness: 1.5, color: Colors.black),
              Calendar(
                toggleCalendarDate: (CalendarSelectionDetails details) {
                  setState(
                    () {
                      selectedDate = details.date;
                      date =
                          '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}';
                    },
                  );
                },
              ),
              TimeField(
                promptText: 'Pick a Time',
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text('CHECK AVAILABILITY', style: kButtonTextStyle),
                  style: TextButton.styleFrom(
                    backgroundColor: kSecondaryColor,
                    padding: EdgeInsets.all(15),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            ],
          ),
        ),
      ),
    );
  }
}
