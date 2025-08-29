abstract class Databaseservice {
  Future<void> addData(
      {required String path, required Map<String, dynamic> data});

Future <dynamic>  getData({required String path, String? docId});
}
