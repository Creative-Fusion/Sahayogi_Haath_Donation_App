
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sahayogihaath/models/usermodel.dart';
import 'package:sahayogihaath/provider/firestore/path.dart';
import 'package:sahayogihaath/provider/firestore/service.dart';

class UserDatabase{

  UserDatabase(){
    getCurrentUserData();
  }

  final _service = FirestoreService.instance;
  
  FirebaseAuth _auth =  FirebaseAuth.instance;

  FirebaseUser user;

  Map<String,dynamic> userData;

  Future<Map<String,dynamic>> getCurrentUserData() async{
    user = await _auth.currentUser();

    await Firestore.instance.collection('users').document(user.uid).get().then((doc){
      if(doc.exists){
        userData= doc.data;
      } else{
        print('No Doc Found');
      }
    });
    return userData;
  }

  Future<void> registerDonor(DonorModel donor, {String uid}) async{
    await _service.setData(
      path: FirestorePath.user(uid), 
      data: donor.toMap(),
    );
  }

  Future<void> registerOrganization(OrganizationModel organization, {String uid}) async{
    await _service.setData(
      path: FirestorePath.user(uid), 
      data: organization.toMap(),
    );
  }
}