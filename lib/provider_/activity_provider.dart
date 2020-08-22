import 'package:flutter/cupertino.dart';
import 'package:uuid/uuid.dart';

import '../services/firestore_service.dart';
import '../models/activitymodel.dart';

class ActivityProvider with ChangeNotifier {
  final firestoreService = FirestoreService();
  String _title;
  String _description;
  String _activityID;
  var uuid = Uuid();

  //getters
  String get title => _title;
  String get description => _description;

  //setters
  changeTitle(String value) {
    _title = value;
    notifyListeners();
  }

  changeDescription(String value) {
    _description = value;
    notifyListeners();
  }

  loadValues(Activity activity) {
    _title = activity.title;
    _description = activity.description;
    _activityID = activity.activityID;
  }

  saveActivity() {
    if (_activityID == null) {
      //create new activity
      var newActivity = Activity(
          title: title, description: description, activityID: uuid.v4());
      firestoreService.saveActivity(newActivity);
    } else {
      //update
      var updatedActivity = Activity(
          title: title, description: description, activityID: _activityID);
      firestoreService.saveActivity(updatedActivity);
    }
    // notifyListeners();
  }

  removeActivity(String activityID) {
    firestoreService.removeActivity(activityID);
    // notifyListeners();
  }
}
