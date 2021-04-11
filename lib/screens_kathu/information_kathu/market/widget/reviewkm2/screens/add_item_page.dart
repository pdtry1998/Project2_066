import 'package:flutter/material.dart';
import 'package:project/screens_kathu/information_kathu/market/widget/reviewkm2/services/add_item_service.dart';
import 'package:project/screens_kathu/information_kathu/market/widget/reviewkm2/components/show_notification.dart';
import 'package:project/screens_kathu/information_kathu/market/widget/reviewkm2/services/logger_service.dart';


class AddItemPagekm2 extends StatefulWidget {
  AddItemPagekm2({Key key}) : super(key: key);

  @override
  _AddItemPagekm2State createState() => _AddItemPagekm2State();
}

class _AddItemPagekm2State extends State<AddItemPagekm2> {
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
                            showMessageBoxkm2(context, "Error",
                                "Please enter name and detail before adding it to firebase",
                                actions: [dismissButton(context)]);
                            logger.e("pdname or pddes can't be null");
                          } else {
                            addItemkm2(
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