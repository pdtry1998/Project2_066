import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
//import 'package:traditional_in_phuket/components/show_notification.dart';
import 'package:project/screens_mueang/information_mueange/place/widget/reviews/components/show_notification.dart';
import 'logger_service.dart';

Future<void> addItem(
    BuildContext context, Map<String, dynamic> data, String documentName) {
  return Firestore.instance
      .collection("catalog")  // ชื่อ collection on firestore
      .document(documentName)
      .setData(data)
      .then((returnData) {
    showMessageBox(context, "Success", "Added item($documentName) to Firestore",
        actions: [dismissButton(context)]);
    logger.i("setData success");
  }).catchError((e) {
    logger.e(e);
  });
}