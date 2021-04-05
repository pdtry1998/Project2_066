import 'package:flutter/material.dart';
import 'package:project/screens_mueang/information_mueange/place/widget/review4/services/add_item_service.dart';
import 'package:project/screens_mueang/information_mueange/place/widget/review4/components/show_notification.dart';
import 'package:project/screens_mueang/information_mueange/place/widget/review4/services/logger_service.dart';


class AddItemPage4 extends StatefulWidget {
  AddItemPage4({Key key}) : super(key: key);

  @override
  _AddItemPage4State createState() => _AddItemPage4State();
}

class _AddItemPage4State extends State<AddItemPage4> {
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
                            showMessageBox4(context, "Error",
                                "Please enter name and detail before adding it to firebase",
                                actions: [dismissButton(context)]);
                            logger.e("pdname or pddes can't be null");
                          } else {
                            addItem4(
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