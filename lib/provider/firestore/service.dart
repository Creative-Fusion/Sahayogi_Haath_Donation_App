
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class FirestoreService{
  FirestoreService._();
  static final instance = FirestoreService._();

  Firestore _service=Firestore.instance;

  Future<void> setData({
    @required String path,
    @required Map<String, dynamic> data,
    bool merge = false,
  }) async {
    final reference = _service.document(path);
    print('$path: $data');
    await reference.setData(data, merge: merge);
  }

  Future<void> deleteData({@required String path}) async {
    final reference = _service.document(path);
    print('delete: $path');
    await reference.delete();
  }
}