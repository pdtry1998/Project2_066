import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ItemPagetp4 extends StatefulWidget {
  final String pdname;
  final String pddescription;
  ItemPagetp4({Key key, @required this.pdname, @required this.pddescription})
      : super(key: key);

  @override
  _ItemPagetp4State createState() => _ItemPagetp4State();
}

class _ItemPagetp4State extends State<ItemPagetp4> {
  String pddescription = "Please wait...";

  @override
  void initState() {
    super.initState();
    Firestore.instance
        .collection("catalogtp4")
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