import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahayogihaath/class.dart';
import 'package:uuid/uuid.dart';

import '../models/usertransactionmodel.dart';

import '../services/firestore_service.dart';
import '../services/firestore_path.dart';

  String currentUser;
class UserTransactionProvider with ChangeNotifier{
  final getUser = Sorting();
  final _service = FirestoreService();
  String time;
  String donorImage;
  String _transactionId;
  String donor;
  String donee;
  String amount;
  String userName;
  var uuid = Uuid();
  
  loadValues(UserTransactionModel transaction) {
    time = transaction.time;
    donorImage = transaction.donorImage;
    donor = transaction.donor;
    donee = transaction.donee;
    _transactionId = transaction.transactionId;
    amount = transaction.amount;
  }
  
  Stream<List<UserTransactionModel>> getUserName(String user) {
        currentUser = user;
        return _service.getConditionData(
      path: FirestorePath.transactions(),
      key: 'donor',
      value: currentUser,
    ).map((snapshot) => snapshot
    .documents
    .map((doc) => UserTransactionModel.fromFirestore(doc.data))
    .toList());
  }

  Stream<List<UserTransactionModel>> getTransactions(){
    return _service.getConditionData(
      path: FirestorePath.transactions(), 
      key: 'donor',
      value: currentUser,
    ).map((snapshot) => snapshot
    .documents
    .map((doc) => UserTransactionModel.fromFirestore(doc.data))
    .toList());
  }

  saveTransaction(String amount, String donor, String donee, String donorImage, String time) {
    if (_transactionId == null) {
      String id = uuid.v4();
      var newTransaction = UserTransactionModel(
        time: time,
        donorImage: donorImage,
        donor: donor, 
        donee: donee,
        amount: amount, 
        transactionId: id);
      _service.saveData(path: FirestorePath.transaction(id), data: newTransaction.toMap());
      print(amount);
    }
    notifyListeners();
  }
  
}