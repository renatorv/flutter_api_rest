import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_api_rest/widgets/input_text.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 50,
      left: 20,
      right: 20,
      child: Column(
        children: [
          InputText(
            label: 'EMAIL ADDRESS',
            keyboardType: TextInputType.emailAddress,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.black12,
                ),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: InputText(
                    label: 'PASSWORD',
                    obscureText: true,
                    borderEnabled: false,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'FORGOT PASS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
