import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:project/screens/home_screen/home.dart';
import 'package:project/screens_Thalang/thalang.dart';
import 'package:project/screens_add_show/screens/add_list_product.dart';
import 'package:project/screens_add_show/screens/show_list_product.dart';
import 'package:project/screens_kathu/kathu.dart';
import 'package:project/screens_login/home/widget/home_screen.dart';
import 'package:project/screens_mueang/mueange.dart';

class MyService extends StatefulWidget {
  @override
  _MyServiceState createState() => _MyServiceState();
}

class _MyServiceState extends State<MyService> {
  // Explicit
  String login = '...';
  Widget currentWidget = ShowListProduct();
  GoogleSignIn _googleSignIn = new GoogleSignIn();
  FirebaseAuth _auth = FirebaseAuth.instance;

  // Method
  @override
  void initState() {
    super.initState();
    findDisplayName();
  }


  Widget showListProduct() {
    return ListTile(
      leading: Icon(Icons.star,size: 36.0,color: Colors.purple.shade500,),
      title: Text('Show List'),
      subtitle: Text('แสดงข้อมูล ร้านอาหาร สถานที่แนะนำ'),
      onTap: () {
        setState(() {
          currentWidget = ShowListProduct();
        });
        Navigator.of(context).pop();
      },
    );
  }

  Widget showAddList() {
    return ListTile(
      leading: Icon(Icons.add_circle, size: 36.0,color: Colors.blue.shade900,),
      title: Text('Add List '),subtitle: Text('เพิ่มร้านอาหาร สถานที่แนะนำ'),
      onTap: () {
        setState(() {
          currentWidget = AddListProduct();
        });
        Navigator.of(context).pop();
      },
    );
  }

  Widget showHome() {
    return ListTile(
      leading: Icon(Icons.wb_sunny, size: 36.0,color: Colors.blue.shade300,),
      title: Text('Phuket'),
      subtitle: Text('เป็นจังหวัดทางภาคใต้ของประเทศไทย'),
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FirstScreen()));

      },
    );
  }

  Widget showMueang() {
    return ListTile(
      leading: Icon(Icons.account_balance, size: 36.0,color: Colors.green.shade400,),
      title: Text('Mueang'),
      subtitle: Text('อำเภอเมือง จังหวัดภูเก็ต'),
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Mueange()));
      },
    );
  }

  Widget showKathu() {
    return ListTile(
      leading: Icon(Icons.toys, size: 36.0,color: Colors.yellow.shade600,),
      title: Text('Kathu'),
      subtitle: Text('อำเภอกะทู้ จังหวัดภูเก็ต'),
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Kathu()));
      },
    );
  }

  Widget showThalang() {
    return ListTile(
      leading: Icon(Icons.notifications, size: 36.0,color: Colors.orange.shade900,),
      title: Text('Thalang'),
      subtitle: Text('อำเภอถลาง จังหวัดภูเก็ต'),
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Thalang()));
      },
    );
  }

  Widget showExit() {
    return ListTile(
      leading: Icon(Icons.exit_to_app, size: 36.0,color: Colors.red.shade900,),
      title: Text('Logout'),
      subtitle: Text('ออกจากระบบ'),
      onTap: () => gooleSignout().whenComplete(() {
        Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) => HomeScreen()
        ));
      }),
      // {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen() ));
      // },

    );
  }

  Future<void> findDisplayName() async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    FirebaseUser firebaseUser = await firebaseAuth.currentUser();
    setState(() {
      login = firebaseUser.displayName;
    });
    print('login = $login');
  }

  Widget showLogin() {
    return Text(
      'Login by $login',
      style: TextStyle(color: Colors.white),
    );
  }

  Widget showAppName() {
    return Text(
      'Travel in Phuket',
      style: TextStyle(
        color: Colors.white,
        fontFamily: 'Mansalva',
        fontWeight: FontWeight.bold,
        fontSize: 24.0,
      ),
    );
  }

  Widget showLogo() {
    return Container(
      width: 80.0,
      height: 80.0,
      child: Image.asset('assets/images_home/1.1.png'),
    );
  }

  Widget showHead() {
    return DrawerHeader(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images_destination/1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: <Widget>[
          showLogo(),
          showAppName(),
          SizedBox(
            height: 6.0,
          ),
          showLogin(),
        ],
      ),
    );
  }

  Widget showDrawer() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          showHead(),
          showListProduct(),
          showAddList(),
          showHome(),
          showMueang(),
          showKathu(),
          showThalang(),
          showExit()
        ],
      ),
    );
  }

  Widget signOutButton() {
    return IconButton(
      icon: Icon(Icons.exit_to_app),
      tooltip: 'Sign Out',
      onPressed: () {
        myAlert();
      },
    );
  }

  void myAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Are You Sure ?'),
            content: Text('Do You Want Sign Out ?'),
            actions: <Widget>[
              cancelButton(),
              okButton(),
            ],
          );
        });
  }

  Widget okButton() {
    return FlatButton(
      child: Text('OK'),
      onPressed: () {
        Navigator.of(context).pop();
        processSignOut();
      },
    );
  }

  Future<void> processSignOut() async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    await firebaseAuth.signOut().then((response) {
      MaterialPageRoute materialPageRoute =
          MaterialPageRoute(builder: (BuildContext context) => HomeScreen());
      Navigator.of(context).pushAndRemoveUntil(
          materialPageRoute, (Route<dynamic> route) => false);
    });
  }

  Widget cancelButton() {
    return FlatButton(
      child: Text('Cancel'),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PHUKET'),
        actions: <Widget>[signOutButton()],
      ),
      body: currentWidget,
      drawer: showDrawer(),
    );
  }


  bool isSignIn = false;

  // Future<void> handleSignIn() async {
  //   GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
  //   GoogleSignInAuthentication googleSignInAuthentication =
  //   await googleSignInAccount.authentication;
  //
  //   AuthCredential credential = GoogleAuthProvider.getCredential(
  //       idToken: googleSignInAuthentication.idToken,
  //       accessToken: googleSignInAuthentication.accessToken);
  //
  //   AuthResult result = (await _auth.signInWithCredential(credential));
  //
  //   _user = result.user;
  //
  //   setState(() {
  //     isSignIn = true;
  //   });
  // }
  Future<void> gooleSignout() async {
    await _auth.signOut().then((onValue) {
      _googleSignIn.signOut();
      setState(() {
        isSignIn = true;
      });
    });
  }
}
