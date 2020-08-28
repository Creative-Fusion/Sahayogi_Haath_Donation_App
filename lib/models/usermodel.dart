
import 'package:flutter/cupertino.dart';

enum UserType {donor, organization}

class DonorModel{
  DonorModel({@required this.name,@required this.email,@required this.address,@required this.phone,@required this.profileImage,@required this.userType});

  String name;
  String email;
  String phone;
  String address;
  String profileImage;
  String userType;

  Map<String, dynamic> toMap(){
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'address': address,
      'profile_image': profileImage,
      'user_type': userType,
      'isAdmin': false,
    };
  }
}

class OrganizationModel{
  OrganizationModel({@required this.name,@required this.email,@required this.address,@required this.phone,@required this.establishedDate,@required this.profileImage,@required this.type,@required this.userType,@required this.documentImage});

  String email;
  String name;
  String phone;
  String address;
  String establishedDate;
  String userType;
  String type;
  String profileImage;
  String documentImage;

  Map<String, dynamic> toMap(){
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'address': address,
      'established_date': establishedDate,
      'type': type,
      'profile_image': profileImage,
      'document_image': documentImage,
      'user_type': userType,
    };
  }
}