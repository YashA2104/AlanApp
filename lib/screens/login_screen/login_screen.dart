import 'package:alanfinal/screens/Login_screen/Login_body.dart';
import 'package:alanfinal/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = '/login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pushNamed(context, SplashScreen.routeName);
            },
            child: Icon(Icons.arrow_back_ios)),
        title: Text(
          'Login',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        backgroundColor: Colors.white,
      ),
      body: LoginBody(),
    );
  }
}
