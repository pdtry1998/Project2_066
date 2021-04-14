import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/constant.dart';
import 'package:project/screens/home_screen/home.dart';
import 'package:project/screens_login/home/my_service.dart';
import 'package:project/screens_login/home/my_service2.dart';





class LoginWithFree extends StatelessWidget {
  const LoginWithFree({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(36),
            side: BorderSide(color: mFacebookColor)),
        onPressed: () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => MyService2())
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset('assets/images_login/home.svg'),
              SizedBox(
                width: 15,
              ),
              Text(
                'Go to application',
                style: TextStyle(color: mFacebookColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}