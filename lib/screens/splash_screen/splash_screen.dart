import 'package:alanfinal/screens/splash_screen/splashbody.dart';
import 'package:alanfinal/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = '/Splash';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Alan',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        backgroundColor: Colors.white,
      ),
      body: SplashBody(),
    );
  }
}
