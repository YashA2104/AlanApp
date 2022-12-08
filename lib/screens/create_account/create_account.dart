import 'package:alanfinal/screens/create_account/create_body.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  static String routeName = '/createaccount';
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CreateAccountBody(),
    );
  }
}
