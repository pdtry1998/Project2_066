import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:project/screens_Thalang/information_thalang/place/widget/reviewtp4/components/show_notification.dart';
import 'logger_service.dart';

Future<void> addItemtp4(
    BuildContext context, Map<String, dynamic> data, String documentName) {
  return Firestore.instance
      .collection("catalogtp4")  // ชื่อ collection on firestore
      .document(documentName)
      .setData(data)
      .then((returnData) {
    showMessageBoxtp4(context, "Success", "Added item($documentName) to Firestore",
        actions: [dismissButton(context)]);
    logger.i("setData success");
  }).catchError((e) {
    logger.e(e);
  });
}