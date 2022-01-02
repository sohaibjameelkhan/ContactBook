import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:contact_book/Models/user_model.dart';

class UserServices {
  ///Create User
  Future createUser(UserModel userModel) async {
    return await FirebaseFirestore.instance
        .collection("userCollection")
        .add(userModel.toJson());
  }

  ///Fetch User Record
  Stream<UserModel> fetchUserRecord(String userID) {
    return FirebaseFirestore.instance
        .collection("userCollection")
        .doc(userID)
        .snapshots()
        .map((userData) => UserModel.fromJson(userData.data()!));

  }

  ///Update user record

  Future updateUserDetails(UserModel userModel) async {
    return await FirebaseFirestore.instance
        .collection("userCollection")
        .doc(userModel.docId)
        .update({
      "firstName": userModel.firstName,
      "lastName": userModel.lastName,
      "userNumber": userModel.userNumber,
      "userImage": userModel.userImage,

    });
  }
}
