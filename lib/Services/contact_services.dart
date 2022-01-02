import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:contact_book/Models/contact_model.dart';


class ContactServices {
  //Add Product
  Future createContact(ContactModel contactModel) async {
    return await FirebaseFirestore.instance
        .collection("contactsCollection")
        .add(contactModel.toJson());
  }

  //Update Product
  Future updateContact(ContactModel contactModel) async {
    return await FirebaseFirestore.instance
        .collection("contactsCollection")
        .doc(contactModel.contactId)
        .update({

      "firstName": contactModel.firstName,
      "lastName": contactModel.lastName,
      "contactNumber": contactModel.contactNumber,
      "contactImage": contactModel.contactImage,
    });
  }
  ///Get All Products
  Stream<List<ContactModel>> streamContacts() {
    return FirebaseFirestore.instance
        .collection('contactsCollection')
        .snapshots()
        .map((list) => list.docs
        .map((singleDoc) => ContactModel.fromJson(singleDoc.data()))
        .toList());
  }
}