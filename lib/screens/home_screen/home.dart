import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:project/screens/home_screen/first/slider_first.dart';
import 'package:project/screens/home_screen/third/third.dart';
import 'package:project/screens/home_screen/widget/destination_carousel.dart';
import 'package:project/screens/home_screen/widget/interpolate_carousel.dart';
import 'package:project/screens_add_show/screens/add_list_product.dart';
import 'package:project/screens_add_show/screens/show_list_product.dart';
import 'package:project/screens_login/home/home.dart';
import 'package:project/screens_login/home/widget/home_screen.dart';
import 'package:project/screens_mueang/mueange.dart';



class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  // Explicit
  // String login = '...';
  // Widget currentWidget = ShowListProduct();

  // Method
  @override
  // void initState() {
  //   super.initState();
  //   findDisplayName();
  // }

  // Widget showHome() {
  //   return ListTile(
  //     leading: Icon(Icons.home, size: 36.0,color: Colors.purple.shade500,),
  //     title: Text('หน้าแรก'),
  //     //subtitle: Text('หน้าแรกของแอปพลิเคชัน'),
  //     onTap: (){
  //       Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FirstScreen()));
  //
  //     },
  //   );
  // }
  //
  // Widget showListProduct() {
  //   return ListTile(
  //     leading: Icon(Icons.list,size: 36.0,color: Colors.blue.shade900,),
  //     title: Text('List Product'),
  //     subtitle: Text('Show All List Product'),
  //     onTap: () {
  //       setState(() {
  //         currentWidget = ShowListProduct();
  //       });
  //       Navigator.of(context).pop();
  //     },
  //   );
  // }
  //
  // Widget showAddList() {
  //   return ListTile(
  //     leading: Icon(Icons.playlist_add, size: 36.0,color: Colors.blue.shade300,),
  //     title: Text('Add List Product'),subtitle: Text('Add New Product to Database'),
  //     onTap: () {
  //       setState(() {
  //              currentWidget = AddListProduct();
  //       });
  //       Navigator.of(context).pop();
  //     },
  //   );
  // }
  //
  // Widget showMueang() {
  //   return ListTile(
  //     leading: Icon(Icons.account_balance, size: 36.0,color: Colors.green.shade400,),
  //     title: Text('Mueang'),
  //     subtitle: Text('อำเภอเมือง'),
  //     onTap: (){
  //       Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Mueange()));
  //     },
  //   );
  // }
  //
  // Widget showKathu() {
  //   return ListTile(
  //     leading: Icon(Icons.toys, size: 36.0,color: Colors.orangeAccent,),
  //     title: Text('Kathu'),
  //     subtitle: Text('อำเภอกะทู้'),
  //     onTap: (){
  //       Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FirstScreen()));
  //     },
  //   );
  // }
  //
  // Widget showThalang() {
  //   return ListTile(
  //     leading: Icon(Icons.notifications, size: 36.0,color: Colors.red.shade900,),
  //     title: Text('Thalang'),
  //     subtitle: Text('อำเภอถลาง'),
  //     onTap: (){
  //       Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FirstScreen()));
  //     },
  //   );
  // }
  //
  // Future<void> findDisplayName() async {
  //   FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  //   FirebaseUser firebaseUser = await firebaseAuth.currentUser();
  //   setState(() {
  //     login = firebaseUser.displayName;
  //   });
  //   print('login = $login');
  // }
  //
  // Widget showLogin() {
  //   return Text(
  //     'Login by $login',
  //     style: TextStyle(color: Colors.white),
  //   );
  // }
  //
  // Widget showAppName() {
  //   return Text(
  //     'Travel in Phuket',
  //     style: TextStyle(
  //       color: Colors.white,
  //       fontFamily: 'Mansalva',
  //       fontWeight: FontWeight.bold,
  //       fontSize: 24.0,
  //     ),
  //   );
  // }
  //
  // Widget showLogo() {
  //   return Container(
  //     width: 80.0,
  //     height: 80.0,
  //     child: Image.asset('assets/images_home/1.1.png'),
  //   );
  // }
  //
  // Widget showHead() {
  //   return DrawerHeader(
  //     decoration: BoxDecoration(
  //       image: DecorationImage(
  //         image: AssetImage('assets/images_destination/1.jpg'),
  //         fit: BoxFit.cover,
  //       ),
  //     ),
  //     child: Column(
  //       children: <Widget>[
  //         showLogo(),
  //         showAppName(),
  //         SizedBox(
  //           height: 6.0,
  //         ),
  //         showLogin(),
  //       ],
  //     ),
  //   );
  // }
  //
  // Widget showDrawer() {
  //   return Drawer(
  //     child: ListView(
  //       children: <Widget>[
  //         showHead(),
  //         showHome(),
  //         showListProduct(),
  //         showAddList(),
  //         showMueang(),
  //         showKathu(),
  //         showThalang()
  //       ],
  //     ),
  //   );
  // }
  //
  // Widget signOutButton() {
  //   return IconButton(
  //     icon: Icon(Icons.exit_to_app),
  //     tooltip: 'Sign Out',
  //     onPressed: () {
  //       myAlert();
  //     },
  //   );
  // }
  //
  // void myAlert() {
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           title: Text('Are You Sure ?'),
  //           content: Text('Do You Want Sign Out ?'),
  //           actions: <Widget>[
  //             cancelButton(),
  //             okButton(),
  //           ],
  //         );
  //       });
  // }
  //
  // Widget okButton() {
  //   return FlatButton(
  //     child: Text('OK'),
  //     onPressed: () {
  //       Navigator.of(context).pop();
  //       processSignOut();
  //     },
  //   );
  // }
  //
  // Future<void> processSignOut() async {
  //   FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  //   await firebaseAuth.signOut().then((response) {
  //     MaterialPageRoute materialPageRoute =
  //     MaterialPageRoute(builder: (BuildContext context) => HomeScreen());
  //     Navigator.of(context).pushAndRemoveUntil(
  //         materialPageRoute, (Route<dynamic> route) => false);
  //   });
  // }
  //
  // Widget cancelButton() {
  //   return FlatButton(
  //     child: Text('Cancel'),
  //     onPressed: () {
  //       Navigator.of(context).pop();
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('PHUKET'),
      //   actions: <Widget>[signOutButton()],
      // ),
      // // body: currentWidget,
      // drawer: showDrawer(),
      body: SafeArea(child: ListView(
        padding: EdgeInsets.symmetric(vertical: 30.0),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left:20.0,right: 30.0),
            child: Text('ท่องเที่ยวในภูเก็ต',style: TextStyle(fontSize: 34.5,fontWeight: FontWeight.bold
            ),),
          ),

          SizedBox(height: 10.0),

          Slider_First(),
          SizedBox(height: 15.0), // ปุ่มดูทั้งหมด
          DestinationCarousel(), // ส่วนแนะนำของหน้าแรก
          //Third(),
          //SizedBox(height: 5.0),
          InterpolateCarousel(), //ส่วนเพิ่มเติมของหน้าแรก

        ],
      )),
    );
  }
}



