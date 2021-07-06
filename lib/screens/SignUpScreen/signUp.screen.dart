import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meraki/utils/constants.dart';

class SignUpScreen extends StatefulWidget {
  static const String id = 'signUpScreen_id';

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Center(
              child: Text(
                'Sign Up',
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
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Password',
                ),
                obscureText: true,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account ?'),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign In',
                    style: TextStyle(color: Colors.black87),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text('SIGN UP', style: kButtonTextStyle),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
