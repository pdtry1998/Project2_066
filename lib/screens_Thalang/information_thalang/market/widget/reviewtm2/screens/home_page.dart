import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project/screens_Thalang/information_thalang/market/widget/reviewtm2/screens/add_item_page.dart';
import 'package:project/screens_Thalang/information_thalang/market/widget/reviewtm2/screens/item_page.dart';

class PageHometm2 extends StatefulWidget {
  _PageHometm2State createState() => _PageHometm2State();
}

class _PageHometm2State extends State<PageHometm2> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("รีวิว"),
      ),
      body: StreamBuilder(
        stream: Firestore.instance.collection("catalogtm2").snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: Column(
                children: <Widget>[
                  CircularProgressIndicator(),
                  Text("Loading . . . "),
                ],
              ),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Container(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(  // ส่วนลิ้งไปหน้าถัดไป
                                  builder: (context) => ItemPagetm2(
                                    pdname: snapshot
                                        .data.documents[index].documentID,
                                    pddescription: snapshot
                                        .data
                                        .documents[index]
                                        .data["description"],
                                  ))
                          );
                        },
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              title:
                              Text(
                                  snapshot.data.documents[index].documentID),
                              subtitle:
                              Text(
                                  snapshot.data.documents[index].data["description"]),

                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => AddItemPagetm2()),);},
        child: Icon(Icons.border_color),
      ),
    );
  }
}