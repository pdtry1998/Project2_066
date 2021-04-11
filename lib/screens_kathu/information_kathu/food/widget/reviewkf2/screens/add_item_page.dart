import 'package:flutter/material.dart';
import 'package:project/screens_kathu/information_kathu/food/widget/reviewkf1/services/add_item_service.dart';
import 'package:project/screens_kathu/information_kathu/food/widget/reviewkf1/components/show_notification.dart';
import 'package:project/screens_kathu/information_kathu/food/widget/reviewkf1/services/logger_service.dart';


class AddItemPagekf1 extends StatefulWidget {
  AddItemPagekf1({Key key}) : super(key: key);

  @override
  _AddItemPagekf1State createState() => _AddItemPagekf1State();
}

class _AddItemPagekf1State extends State<AddItemPagekf1> {
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
                            showMessageBoxkf1(context, "Error",
                                "Please enter name and detail before adding it to firebase",
                                actions: [dismissButton(context)]);
                            logger.e("pdname or pddes can't be null");
                          } else {
                            addItemkf1(
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