import 'package:flutter/material.dart';

class EndSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        Divider(thickness: 1.5, color: Colors.black),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
      ],
    );
  }
}
