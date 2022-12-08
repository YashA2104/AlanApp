import 'package:alanfinal/screens/Login_screen/Login_screen.dart';

import 'package:alanfinal/screens/sent_screen/sent.dart';
import 'package:alanfinal/size_config.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  static String routeName = '/Forgot pass';
  ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.4,
        leading: InkWell(
            onTap: () {
              Navigator.pushNamed(context, LoginScreen.routeName);
            },
            child: Icon(Icons.arrow_back_ios)),
        title: Text('Forgot Password',
            style: TextStyle(
                color: Colors.black,
                fontSize: getProportionateScreenWidth(15),
                fontWeight: FontWeight.bold)),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
              vertical: getProportionateScreenWidth(50)),
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenWidth(50),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15)),
                child: Text(
                  'Please enter the registered email ID.',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(15)),
                ),
              ),
              SizedBox(
                height: getProportionateScreenWidth(40),
              ),
              Container(
                height: getProportionateScreenWidth(50),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Enter your Email",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenWidth(30),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, SentScreen.routeName);
                },
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: getProportionateScreenWidth(140),
                        top: getProportionateScreenWidth(10)),
                    child: Text(
                      'Continue',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: getProportionateScreenWidth(17)),
                    ),
                  ),
                  height: getProportionateScreenWidth(50),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(
                          getProportionateScreenWidth(25))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
