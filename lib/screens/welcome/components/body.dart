import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kfupm_project/components/rounded_button.dart';
import 'package:kfupm_project/constants.dart';
import 'package:kfupm_project/screens/login/login_screen.dart';
import 'package:kfupm_project/screens/sign_up/sign_up_screen.dart';
import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome to KFUPM',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          SvgPicture.asset(
            'assets/svg/chat.svg',
            height: size.height * 0.47,
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          RoundedButton(
            text: 'LOGIN',
            press: () {
              Navigator.pushNamed(context, LoginScreen.id);
            },
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          RoundedButton(
            text: 'SIGN UP',
            press: () {
              Navigator.pushNamed(context, SignUpScreen.id);
            },
            color: kPrimaryLightColor,
            textColor: Colors.black,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          FlatButton(
            child: Text('Continue as guest'),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
