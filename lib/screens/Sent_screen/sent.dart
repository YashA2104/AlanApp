import 'package:alanfinal/screens/sent_screen/sent_body.dart';

import 'package:alanfinal/size_config.dart';
import 'package:flutter/material.dart';

class SentScreen extends StatelessWidget {
  static String routeName = '/Sent';
  const SentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Email Sent',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        backgroundColor: Colors.white,
      ),
      body: SentBody(),
    );
  }
}
