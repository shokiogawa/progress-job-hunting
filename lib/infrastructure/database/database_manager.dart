import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:progress_job_hunting_app/domain/value_object/company.dart';

class DataBaseManager{
final FirebaseFirestore _db =FirebaseFirestore.instance;

  Future<void>saveCompanyInfo(Company company) async{
    await _db.collection("company").doc(company.companyName).set(company.toMap());
  }
}