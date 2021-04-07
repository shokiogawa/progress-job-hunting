import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:progress_job_hunting_app/domain/value_object/company.dart';

class DataBaseManager {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> saveCompanyInfo(Company company) async {
    print(company.toMap());
    // await Future.delayed(Duration(seconds: 5),_onTime);
    try {
      await _db
          .collection("company")
          .doc(company.companyName)
          .set(company.toMap());
    } catch (error) {
      print(error.toString());
      // throw Future.error(error);
    }
  }
  void _onTime(){
    print("test");
  }
}
