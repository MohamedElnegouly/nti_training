import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:training_app/core/service/dataBaseService.dart';

class Firestoreservice implements Databaseservice {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  
  @override
  Future<void> addData(
      {required String path, required Map<String, dynamic> data}) async{
   await firestore.collection(path);
  }
}
