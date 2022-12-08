import 'package:alanfinal/screens/success_screen/success_body.dart';

import 'package:alanfinal/size_config.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  static String routeName = '/Success';
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login Success',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        backgroundColor: Colors.white,
      ),
      body: SuccessBody(),
    );
  }
}
