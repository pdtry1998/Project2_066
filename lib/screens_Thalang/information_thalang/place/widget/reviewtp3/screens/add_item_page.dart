import 'package:flutter/material.dart';
import 'package:project/screens_Thalang/information_thalang/place/widget/reviewtp3/services/add_item_service.dart';
import 'package:project/screens_Thalang/information_thalang/place/widget/reviewtp3/components/show_notification.dart';
import 'package:project/screens_Thalang/information_thalang/place/widget/reviewtp3/services/logger_service.dart';


class AddItemPagetp3 extends StatefulWidget {
  AddItemPagetp3({Key key}) : super(key: key);

  @override
  _AddItemPagetp3State createState() => _AddItemPagetp3State();
}

class _AddItemPagetp3State extends State<AddItemPagetp3> {
  final pdname = TextEditingController();
  final pddes = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add item1234"),
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[

                      TextField(
                        decoration: InputDecoration(labelText: "Name"),
                        controller: pdname,
                      ),
                      Padding(padding: const EdgeInsets.all(10)),
                      TextField(
                        decoration:
                        InputDecoration(labelText: "Detail"),
                        controller: pddes,
                      ),
                      Padding(padding: const EdgeInsets.all(10)),
                      RaisedButton(
                        child: Text("Add items"),
                        onPressed: () {
                          if (pdname.text == "" || pddes.text == "") {
                            showMessageBoxtp3(context, "Error",
                                "Please enter name and detail before adding it to firebase",
                                actions: [dismissButton(context)]);
                            logger.e("pdname or pddes can't be null");
                          } else {
                            addItemtp3(
                                context,
                                {"name": pdname.text, "description": pddes.text},
                                pdname.text);
                            pdname.text = "";
                            pddes.text = "";
                          }
                        },
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }


}