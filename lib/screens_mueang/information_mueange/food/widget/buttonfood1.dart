import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/constant.dart';
import 'package:project/screens_mueang/information_mueange/food/widget/mapfood1.dart';




class ButtonFood1 extends StatelessWidget {
  const ButtonFood1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: <Widget>[

          Expanded(
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36),
                  side: BorderSide(color: mGoogleColor)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MapFood1();
                    },
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset('assets/images_mueange/mapp.svg'),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Location',
                      style: TextStyle(color: mGoogleColor),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(width: 30,),



          Expanded(
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36),
                  side: BorderSide(color: mPrimaryColor)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      //return LoginScreen();
                      //return LoginPage();
                      //return Login3();
                    },
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset('assets/images_mueange/write2.svg'),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Review',
                      style: TextStyle(color: mPrimaryColor),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}