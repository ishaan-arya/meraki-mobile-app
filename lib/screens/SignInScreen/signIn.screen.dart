import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meraki/utils/constants.dart';
import 'package:meraki/screens/MenuScreen/menu.screen.dart';
import 'package:meraki/widgets/largeButton.widget.dart';

class SignInScreen extends StatefulWidget {
  static const String id = 'signInScreen_id';

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Center(
              child: Text(
                'Sign In',
                style: kHeadingTextStyle,
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Email',
                ),
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  email = value;
                },
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Password',
                ),
                obscureText: true,
                onChanged: (value) {
                  password = value;
                },
              ),
            ),
            SizedBox(
              height: 40,
            ),
            LargeButton(
              onTap: () {
                Navigator.pushNamed(context, MenuScreen.id);
              },
              buttonText: 'SIGN IN',
            )
          ],
        ),
      ),
    );
  }
}
