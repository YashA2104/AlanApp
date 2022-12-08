import 'package:alanfinal/screens/create_account/create_account.dart';
import 'package:alanfinal/screens/forgot_password/forgot_password.dart';
import 'package:alanfinal/screens/who_screen/who_screen.dart';

import 'package:alanfinal/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginBody extends StatelessWidget {
  static String routName = '/LoginBody';
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
              vertical: getProportionateScreenWidth(50)),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15)),
                child: Text(
                  'Please Login to Alan with your email and Password.',
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
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Enter your Email",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(30)),
              Container(
                height: getProportionateScreenWidth(50),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter your Password",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionateScreenWidth(190),
                    top: getProportionateScreenWidth(10)),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, ForgotPassword.routeName);
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: getProportionateScreenWidth(13)),
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenWidth(30),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, WhoScreen.routeName);
                },
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: getProportionateScreenWidth(140),
                        top: getProportionateScreenWidth(10)),
                    child: Text(
                      'Login',
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
              SizedBox(
                height: getProportionateScreenWidth(30),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(130),
                    vertical: getProportionateScreenWidth(10)),
                child: Row(
                  children: [
                    Container(
                      color: Colors.black,
                      height: getProportionateScreenWidth(1),
                      width: getProportionateScreenWidth(20),
                    ),
                    Text("OR",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: getProportionateScreenWidth(17))),
                    Container(
                      height: getProportionateScreenWidth(1),
                      width: getProportionateScreenWidth(20),
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: getProportionateScreenWidth(30),
              ),
              Text(
                'Don\'t have an account? Sign Up!',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(15)),
              ),
              SizedBox(
                height: getProportionateScreenWidth(10),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, CreateAccount.routeName);
                },
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: getProportionateScreenWidth(80),
                        top: getProportionateScreenWidth(10)),
                    child: Text(
                      'Create a new account',
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
      ],
    );
  }
}
