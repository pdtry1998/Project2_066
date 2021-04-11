import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ItemPagetp1 extends StatefulWidget {
  final String pdname;
  final String pddescription;
  ItemPagetp1({Key key, @required this.pdname, @required this.pddescription})
      : super(key: key);

  @override
  _ItemPagetp1State createState() => _ItemPagetp1State();
}

class _ItemPagetp1State extends State<ItemPagetp1> {
  String pddescription = "Please wait...";

  @override
  void initState() {
    super.initState();
    Firestore.instance
        .collection("catalogtp1")
        .document(widget.pdname)
        .get()
        .then((value) {
      setState(() {
        pddescription = value.data["description"];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pdname),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.pdname,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
            ),
            Text(
              pddescription,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}