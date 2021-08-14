import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:meraki/utils/constants.dart';

DateTime selectedDate;
String date =
    '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}';

class Calendar extends StatelessWidget {
  final Function toggleCalendarDate;
  Calendar({this.toggleCalendarDate});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(25.0),
          child: SfCalendar(
            view: CalendarView.month,
            backgroundColor: kPrimaryColor,
            minDate: DateTime.now(),
            maxDate: DateTime.now().add(Duration(days: 60)),
            initialSelectedDate: DateTime.now(),
            selectionDecoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.blue, width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(4)),
              shape: BoxShape.rectangle,
            ),
            onSelectionChanged: toggleCalendarDate,
          ),
        ),
        Text(
          date,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
