import 'package:flutter/material.dart';
import 'package:meraki/widgets/addItemButton.widget.dart';
import 'package:meraki/widgets/homeButton.widget.dart';
import 'package:meraki/utils/constants.dart';
import 'package:meraki/widgets/largeButton.widget.dart';
import 'package:meraki/widgets/timeField.widget.dart';
import 'package:meraki/widgets/textInputField.widget.dart';

enum WaterSelection {
  glasses,
  litres,
}

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
  WaterSelection selectedWaterType;
  MealSelection selectedMealType;
  String dropdownValue = 'Full';

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
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Divider(thickness: 1.5, color: Colors.black),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Icon(
                      Icons.remove,
                      size: 40,
                    ),
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
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 90,
                    width: 90,
                    child: Center(
                      child: Text(
                        '$water',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: kSecondaryColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    child: Icon(
                      Icons.add,
                      size: 40,
                    ),
                    onTap: () {
                      setState(
                        () {
                          water = water + 0.5;
                        },
                      );
                    },
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedWaterType = WaterSelection.glasses;
                      });
                    },
                    child: Container(
                      height: 35,
                      width: 90,
                      color: selectedWaterType == WaterSelection.glasses
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      child: Center(
                        child: Text(
                          'GLASSES',
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
                        selectedWaterType = WaterSelection.litres;
                      });
                    },
                    child: Container(
                      height: 35,
                      width: 90,
                      color: selectedWaterType == WaterSelection.litres
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      child: Center(
                        child: Text(
                          'LITRES',
                          style: kSub3TextStyle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Divider(thickness: 1.5, color: Colors.black),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Center(
                child: Text(
                  "SLEEP",
                  style: kSubheadingTextStyle,
                ),
              ),
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Divider(thickness: 1.5, color: Colors.black),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Divider(thickness: 1.5, color: Colors.black),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
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
              Center(
                child: Text(
                  'INTENSITY',
                  style: kSubheadingTextStyle,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              AddItemButton(
                buttonText: 'ADD EXERCISE',
                onTap: () {},
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Divider(thickness: 1.5, color: Colors.black),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
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
              Center(
                child: Text(
                  'ALCOHOL',
                  style: kSubheadingTextStyle,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Divider(thickness: 1.5, color: Colors.black),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Divider(thickness: 1.5, color: Colors.black),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Divider(thickness: 1.5, color: Colors.black),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              TextInputField(
                hintText: 'ABILITY TO STICK TO THE PLAN',
                keyboardType: TextInputType.multiline,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Divider(thickness: 1.5, color: Colors.black),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              TextInputField(
                hintText: 'COMMENTS FOR THE DAY',
                keyboardType: TextInputType.multiline,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Divider(thickness: 1.5, color: Colors.black),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Center(
                child: LargeButton(
                  onTap: () {},
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
