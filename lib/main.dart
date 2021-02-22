import 'package:flutter/material.dart';
import 'package:kfupm_project/screens/login/login_screen.dart';
import 'package:kfupm_project/screens/sign_up/sign_up_screen.dart';
import 'package:kfupm_project/screens/welcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KFUPM App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        LoginScreen.id: (context) => LoginScreen()
      },
    );
  }
}
