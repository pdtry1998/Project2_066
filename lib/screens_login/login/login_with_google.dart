import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:project/constant.dart';
import 'package:project/screens_login/home/my_service.dart';



class LoginWithGoogle extends StatefulWidget {
  @override
  _LoginWithGoogleState createState() => _LoginWithGoogleState();
}

class _LoginWithGoogleState extends State<LoginWithGoogle> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseUser _user;

  GoogleSignIn _googleSignIn = new GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(36),
            side: BorderSide(color: mGoogleColor)),

        onPressed: () =>
            handleSignIn().whenComplete(() {
              Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) => MyService()
              ));
            }),
        //onPressed: () => processSigngInWithGoogle(),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset('assets/images_login/google.svg'),
              SizedBox(
                width: 12,
              ),
              Text(
                'Connect with Google',
                style: TextStyle(color: mGoogleColor),
              ),
            ],
          ),
        ),
      ),
    );
  }


  bool isSignIn = false;

  Future<void> handleSignIn() async {
    GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
    await googleSignInAccount.authentication;

    AuthCredential credential = GoogleAuthProvider.getCredential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);

    AuthResult result = (await _auth.signInWithCredential(credential));

    _user = result.user;

    setState(() {
      isSignIn = true;
    });
  }

  Future<void> gooleSignout() async {
    await _auth.signOut().then((onValue) {
      _googleSignIn.signOut();
      setState(() {
        isSignIn = true;
      });
    });
  }

}
