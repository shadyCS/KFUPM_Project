import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kfupm_project/components/already_have_account.dart';
import 'package:kfupm_project/components/rounded_button.dart';
import 'package:kfupm_project/components/rounded_input_filed.dart';
import 'package:kfupm_project/components/rounded_password_filed.dart';
import 'package:kfupm_project/screens/login/components/background.dart';
import 'package:kfupm_project/screens/sign_up/sign_up_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'LOGIN',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            'assets/svg/login.svg',
            height: size.height * 0.35,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          RoundedinputField(
            hinttext: 'EMAIL',
            onChanged: (value) {},
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          RoundedButton(
            text: 'LOGIN',
            press: () {},
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          AlreadyhaveAnAccountCheck(
            press: () {
              Navigator.pushNamed(context, SignUpScreen.id);
            },
          ),
        ],
      ),
    );
  }
}
