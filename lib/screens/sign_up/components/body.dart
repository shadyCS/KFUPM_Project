import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kfupm_project/components/already_have_account.dart';
import 'package:kfupm_project/components/rounded_button.dart';
import 'package:kfupm_project/components/rounded_input_filed.dart';
import 'package:kfupm_project/components/rounded_password_filed.dart';
import 'package:kfupm_project/constants.dart';
import 'package:kfupm_project/screens/login/login_screen.dart';
import 'package:kfupm_project/screens/sign_up/components/background.dart';

class Body extends StatelessWidget {
  final Widget child;

  const Body({this.child});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SIGN UP',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              'assets/svg/signup.svg',
              width: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedinputField(
              hinttext: 'Your Email',
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.03),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryColor,
              press: () {},
            ),
            SizedBox(height: size.height * 0.05),
            AlreadyhaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            )
          ],
        ),
      ),
    );
  }
}
