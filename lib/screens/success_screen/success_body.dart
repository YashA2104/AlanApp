import 'package:alanfinal/screens/Login_screen/Login_screen.dart';
import 'package:alanfinal/screens/who_screen/who_screen.dart';
import 'package:alanfinal/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class SuccessBody extends StatelessWidget {
  static String routeName = '/SuccesssBody';
  const SuccessBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(40)),
      child: Column(
        children: [
          Container(
            height: getProportionateScreenWidth(330),
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius:
                    BorderRadius.circular(getProportionateScreenWidth(20))),
          ),
          SizedBox(
            height: getProportionateScreenWidth(40),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10)),
            child: Text(
              'Login successful. Please click continue to move into the application',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: getProportionateScreenWidth(15)),
            ),
          ),
          SizedBox(
            height: getProportionateScreenWidth(40),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, WhoScreen.routeName);
            },
            child: Container(
              child: Padding(
                padding: EdgeInsets.only(
                    left: getProportionateScreenWidth(125),
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
                  borderRadius:
                      BorderRadius.circular(getProportionateScreenWidth(20))),
            ),
          ),
        ],
      ),
    );
  }
}
