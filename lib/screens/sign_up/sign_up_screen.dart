import 'package:flutter/material.dart';
import 'package:kfupm_project/components/rounded_input_filed.dart';
import 'package:kfupm_project/screens/sign_up/components/body.dart';

class SignUpScreen extends StatefulWidget {
  static const String id = 'sign_up_screen';
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
