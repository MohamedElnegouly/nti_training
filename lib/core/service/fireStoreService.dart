import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:training_app/core/service/dataBaseService.dart';

class Firestoreservice implements Databaseservice {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<void> addData(
      {required String path,
      required Map<String, dynamic> data,
      String? docId}) async {
    if (docId != null) {
      await firestore.collection(path).doc(docId).set(data);
    } else {
      await firestore.collection(path).add(data);
    }
  }

  @override
  Future getData({required String path, String? docId}) async {
    var data;
    if (docId != null) {
      data = await firestore.collection(path).doc(docId).get();
    } else {
      data = await firestore.collection(path).get();
    }
    return data.data();
  }
}
