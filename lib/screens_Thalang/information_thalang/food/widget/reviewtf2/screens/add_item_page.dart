import 'package:flutter/material.dart';
import 'package:project/screens_Thalang/information_thalang/food/widget/reviewtf2/services/add_item_service.dart';
import 'package:project/screens_Thalang/information_thalang/food/widget/reviewtf2/components/show_notification.dart';
import 'package:project/screens_Thalang/information_thalang/food/widget/reviewtf2/services/logger_service.dart';


class AddItemPagetf2 extends StatefulWidget {
  AddItemPagetf2({Key key}) : super(key: key);

  @override
  _AddItemPagetf2State createState() => _AddItemPagetf2State();
}

class _AddItemPagetf2State extends State<AddItemPagetf2> {
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
                            showMessageBoxtf2(context, "Error",
                                "Please enter name and detail before adding it to firebase",
                                actions: [dismissButton(context)]);
                            logger.e("pdname or pddes can't be null");
                          } else {
                            addItemtf2(
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