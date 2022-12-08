import 'package:alanfinal/screens/success_screen/success_screen.dart';
import 'package:alanfinal/size_config.dart';
import 'package:flutter/material.dart';

class CreateAccountBody extends StatelessWidget {
  static String routeName = '/createaccount';
  const CreateAccountBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create Account',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenWidth(50)),
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(10),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(15)),
              child: Text(
                'Please Enter your Credentials to Log in with Alan.',
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
                  labelText: "Name",
                  hintText: "ex: John Doe",
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
                  labelText: "Email",
                  hintText: "ex: john.doe@mail.com",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
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
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            Container(
              height: getProportionateScreenWidth(50),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  hintText: "Confirm your Password",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, SuccessScreen.routeName);
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
                    borderRadius:
                        BorderRadius.circular(getProportionateScreenWidth(25))),
              ),
            ),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
          ],
        ),
      ),
    );
  }
}
