import 'package:flutter/material.dart';
import 'package:project/screens_mueang/information_mueange/drink/widget/widget/reviewd2/components/show_notification.dart';
import 'package:project/screens_mueang/information_mueange/drink/widget/widget/reviewd2/services/add_item_service.dart';
import 'package:project/screens_mueang/information_mueange/drink/widget/widget/reviewd2/services/logger_service.dart';


class AddItemPaged2 extends StatefulWidget {
  AddItemPaged2({Key key}) : super(key: key);

  @override
  _AddItemPaged2State createState() => _AddItemPaged2State();
}

class _AddItemPaged2State extends State<AddItemPaged2> {
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
                            showMessageBoxd2(context, "Error",
                                "Please enter name and detail before adding it to firebase",
                                actions: [dismissButton(context)]);
                            logger.e("pdname or pddes can't be null");
                          } else {
                            addItemd2(
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