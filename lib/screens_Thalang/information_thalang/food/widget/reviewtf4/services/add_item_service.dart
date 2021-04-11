import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:project/screens_Thalang/information_thalang/food/widget/reviewtf4/components/show_notification.dart';
import 'logger_service.dart';

Future<void> addItemtf4(
    BuildContext context, Map<String, dynamic> data, String documentName) {
  return Firestore.instance
      .collection("catalogtf4")  // ชื่อ collection on firestore
      .document(documentName)
      .setData(data)
      .then((returnData) {
    showMessageBoxtf4(context, "Success", "Added item($documentName) to Firestore",
        actions: [dismissButton(context)]);
    logger.i("setData success");
  }).catchError((e) {
    logger.e(e);
  });
}