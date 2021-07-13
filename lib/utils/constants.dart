import 'package:flutter/material.dart';

//colors
const Color kPrimaryColor = Color(0xFFFEE1D3);
const Color kSecondaryColor = Color(0xFFFB9343);
const Color kActiveCardColor = Color(0xFFFFD6D6D6);
const Color kInactiveCardColor = Color(0xFFFFFFFF);

//text styles
const kMenuTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontFamily: 'Montserrat',
);

const kHeadingTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 30,
  fontFamily: 'Montserrat',
);

const kSubheadingTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 18,
  fontFamily: 'Montserrat',
);

const kSub3TextStyle = TextStyle(
  color: Colors.black,
  fontSize: 15,
  fontFamily: 'Montserrat',
);

const kButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 17,
  fontFamily: 'Montserrat',
);

const kTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black54, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black54, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
