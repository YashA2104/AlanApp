import 'package:alanfinal/screens/caretaker/caretaker.dart';
import 'package:alanfinal/screens/home_blind/home_blind.dart';
import 'package:alanfinal/screens/home_blind/home_blind.dart';
import 'package:alanfinal/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WhoScreen extends StatelessWidget {
  static String routeName = '/WhoScreen';
  const WhoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: getProportionateScreenWidth(40)),
              Text(
                "Welcome!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenWidth(40),
                    color: Colors.black),
              ),
              SizedBox(
                height: getProportionateScreenWidth(5),
              ),
              Text(
                "Let's Start by you telling us who's using the application?",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(13),
                    color: Colors.black),
              ),
              SizedBox(
                height: getProportionateScreenWidth(50),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HomeBlind.routeName);
                },
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                    child: Row(
                      children: [
                        Container(
                            height: getProportionateScreenWidth(160),
                            width: getProportionateScreenWidth(150),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    getProportionateScreenWidth(15)))),
                        SizedBox(width: getProportionateScreenWidth(25)),
                        Text(
                          "Disabled",
                          style: TextStyle(
                              fontSize: getProportionateScreenWidth(15),
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(
                          getProportionateScreenWidth(15))),
                  height: getProportionateScreenWidth(200),
                  width: double.infinity,
                ),
              ),
              SizedBox(
                height: getProportionateScreenWidth(20),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Caretaker.routeName);
                },
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                    child: Row(
                      children: [
                        Container(
                            height: getProportionateScreenWidth(160),
                            width: getProportionateScreenWidth(150),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    getProportionateScreenWidth(15)))),
                        SizedBox(width: getProportionateScreenWidth(25)),
                        Text(
                          "Care-taker",
                          style: TextStyle(
                              fontSize: getProportionateScreenWidth(15),
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(
                          getProportionateScreenWidth(15))),
                  height: getProportionateScreenWidth(200),
                  width: double.infinity,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
