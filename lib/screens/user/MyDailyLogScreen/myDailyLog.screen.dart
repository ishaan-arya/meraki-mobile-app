import 'package:flutter/material.dart';
import 'package:meraki/widgets/addItemButton.widget.dart';
import 'package:meraki/widgets/homeButton.widget.dart';
import 'package:meraki/utils/constants.dart';
import 'package:meraki/widgets/largeButton.widget.dart';
import 'package:meraki/widgets/timeField.widget.dart';
import 'package:meraki/widgets/textInputField.widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meraki/screens/user/MyDailyLogScreen/local_widgets/waterCircle.widget.dart';
import 'package:meraki/screens/user/MyDailyLogScreen/local_widgets/endSection.widget.dart';
import 'package:meraki/screens/user/MyDailyLogScreen/local_widgets/circleButton.widget.dart';
import 'package:meraki/screens/user/MyDailyLogScreen/local_widgets/sectionName.widget.dart';
import 'package:meraki/screens/user/MyDailyLogScreen/local_widgets/waterToggleButton.widget.dart';

enum MealSelection {
  measuringCups,
  ml,
}

class MyDailyLogScreen extends StatefulWidget {
  static const String id = 'myDailyLogScreen_id';

  @override
  _MyDailyLogScreenState createState() => _MyDailyLogScreenState();
}

class _MyDailyLogScreenState extends State<MyDailyLogScreen> {
  MealSelection selectedMealType;
  String dropdownValue = 'Full';
  final _firestore = FirebaseFirestore.instance;
  var water = 0.0;
  var _value = 0.0;

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
                  'TODAY',
                  style: kHeadingTextStyle,
                ),
              ),
              EndSection(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleButton(
                    onTap: () {
                      setState(
                        () {
                          if (water > 0.0) {
                            water = water - 0.5;
                          }
                          ;
                        },
                      );
                    },
                    icon: Icons.remove,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  WaterCircle(water: water),
                  SizedBox(
                    width: 15,
                  ),
                  CircleButton(
                    onTap: () {
                      setState(
                        () {
                          if (water >= 0.0) {
                            water = water + 0.5;
                          }
                          ;
                        },
                      );
                    },
                    icon: Icons.add,
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Center(
                child: Text(
                  'WATER',
                  style: kSubheadingTextStyle,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              WaterToggleButton(),
              EndSection(),
              SectionName(text: 'SLEEP'),
              TimeField(
                promptText: 'BEDTIME',
              ),
              TimeField(
                promptText: 'WAKE UP',
              ),
              TextInputField(
                hintText: 'QUALITY',
                keyboardType: TextInputType.text,
              ),
              EndSection(),
              TextInputField(
                hintText: 'FRUIT',
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              TextInputField(
                hintText: 'QUANTITY',
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              AddItemButton(
                buttonText: 'ADD FRUIT',
                onTap: () {
                  //implement add fruit functionality
                },
              ),
              EndSection(),
              TextInputField(
                hintText: 'EXERCISE TYPE',
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              TextInputField(
                hintText: 'DURATION',
                keyboardType: TextInputType.datetime,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Center(
                child: Text(
                  '${_value.toInt()}',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Slider(
                  value: _value,
                  min: 0,
                  max: 10,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                  inactiveColor: Colors.grey,
                  activeColor: kSecondaryColor,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              SectionName(text: 'INTENSITY'),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              AddItemButton(
                buttonText: 'ADD EXERCISE',
                onTap: () {},
              ),
              EndSection(),
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: TextInputField(
                      hintText: null,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Expanded(
                    child: Text('ML', style: kSubheadingTextStyle),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              SectionName(text: 'ALCOHOL'),
              EndSection(),
              TextInputField(
                hintText: 'MEAL',
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              TextInputField(
                hintText: 'QUANTITY',
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedMealType = MealSelection.measuringCups;
                      });
                    },
                    child: Container(
                      height: 35,
                      width: 170,
                      color: selectedMealType == MealSelection.measuringCups
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      child: Center(
                        child: Text(
                          'MEASURING CUPS',
                          style: kSub3TextStyle,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedMealType = MealSelection.ml;
                      });
                    },
                    child: Container(
                      height: 35,
                      width: 90,
                      color: selectedMealType == MealSelection.ml
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      child: Center(
                        child: Text(
                          'ML',
                          style: kSub3TextStyle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'FEELING AFTER MEAL',
                    style: kSubheadingTextStyle,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  DropdownButton<String>(
                    value: dropdownValue,
                    icon: Icon(Icons.arrow_downward),
                    iconSize: 20,
                    elevation: 16,
                    underline: Container(
                      height: 2,
                      color: Colors.grey,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>[
                      'Full',
                      'Light',
                      'Heavy',
                      'Satisfied',
                      'Unsatisfied',
                      'Other',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              AddItemButton(
                buttonText: 'ADD MEAL',
                onTap: () {},
              ),
              EndSection(),
              TextInputField(
                hintText: 'MEDICINE',
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              TextInputField(
                hintText: 'QUANTITY',
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              AddItemButton(
                buttonText: 'ADD MEDICINE',
                onTap: () {
                  //implement add medicine functionality
                },
              ),
              EndSection(),
              TextInputField(
                hintText: 'ABILITY TO STICK TO THE PLAN',
                keyboardType: TextInputType.multiline,
              ),
              EndSection(),
              TextInputField(
                hintText: 'COMMENTS FOR THE DAY',
                keyboardType: TextInputType.multiline,
              ),
              EndSection(),
              Center(
                child: LargeButton(
                  onTap: () {
                    // _firestore.collection('daily_logs').add({
                    //   'water': water,
                    // });
                  },
                  buttonText: 'UPDATE LOG',
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
