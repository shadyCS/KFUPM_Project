import 'package:flutter/material.dart';

import '../constants.dart';

class AlreadyhaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyhaveAnAccountCheck({
    this.login = true,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't Have an Account ? " : "Already Have an Account ? ",
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? 'SIGN UP' : "SIGN IN",
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
