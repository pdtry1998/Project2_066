import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ItemPagetp2 extends StatefulWidget {
  final String pdname;
  final String pddescription;
  ItemPagetp2({Key key, @required this.pdname, @required this.pddescription})
      : super(key: key);

  @override
  _ItemPagetp2State createState() => _ItemPagetp2State();
}

class _ItemPagetp2State extends State<ItemPagetp2> {
  String pddescription = "Please wait...";

  @override
  void initState() {
    super.initState();
    Firestore.instance
        .collection("catalogtp2")
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