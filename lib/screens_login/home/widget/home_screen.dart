import 'package:flutter/material.dart';
import 'package:project/constant.dart';
import 'package:project/screens_login/home/home.dart';
import 'package:project/screens_login/login/login_with_facebook.dart';





class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset('assets/images_login/8.png'),
          //SliderDot(),
         SizedBox(
            height: 20,
          ),
          Text(
            'Welcome to \nPhuket',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: mPrimaryColor,
              fontSize: 40,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 0,
          ),
          Home(),
         // LoginWithGoogle(),
          SizedBox(
            height: 10.0,
          ),
          LoginWithFacebook(),

        ],
      ),
    );
  }

}
