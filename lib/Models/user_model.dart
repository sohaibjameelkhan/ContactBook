// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    this.docId,
    this.firstName,
    this.lastName,
    this.userNumber,
    this.userImage,
  });

  String? docId;
  String? firstName;
  String? lastName;
  String? userNumber;
  String? userImage;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    docId: json["docID"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    userNumber: json["userNumber"],
    userImage: json["userImage"],
  );

  Map<String, dynamic> toJson() => {
    "docID": docId,
    "firstName": firstName,
    "lastName": lastName,
    "userNumber": userNumber,
    "userImage": userImage,
  };
}
