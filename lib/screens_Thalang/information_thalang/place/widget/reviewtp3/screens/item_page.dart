import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ItemPagetp3 extends StatefulWidget {
  final String pdname;
  final String pddescription;
  ItemPagetp3({Key key, @required this.pdname, @required this.pddescription})
      : super(key: key);

  @override
  _ItemPagetp3State createState() => _ItemPagetp3State();
}

class _ItemPagetp3State extends State<ItemPagetp3> {
  String pddescription = "Please wait...";

  @override
  void initState() {
    super.initState();
    Firestore.instance
        .collection("catalogtp3")
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