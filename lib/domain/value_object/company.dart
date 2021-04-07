import 'package:flutter/material.dart';
import 'package:progress_job_hunting_app/domain/value_object/company_status.dart';
class Company{
  final CompanyStatus companyStatus;
  final String companyName;
  final String companyEx;

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  const Company({
    @required this.companyStatus,
    @required this.companyName,
    @required this.companyEx,
  });

  Company copyWith({
    CompanyStatus companyStatus,
    String companyName,
    String companyEx,
  }) {
    if ((companyStatus == null ||
            identical(companyStatus, this.companyStatus)) &&
        (companyName == null || identical(companyName, this.companyName)) &&
        (companyEx == null || identical(companyEx, this.companyEx))) {
      return this;
    }

    return new Company(
      companyStatus: companyStatus ?? this.companyStatus,
      companyName: companyName ?? this.companyName,
      companyEx: companyEx ?? this.companyEx,
    );
  }

  @override
  String toString() {
    return 'Company{companyStatus: $companyStatus, companyName: $companyName, companyEx: $companyEx}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Company &&
          runtimeType == other.runtimeType &&
          companyStatus == other.companyStatus &&
          companyName == other.companyName &&
          companyEx == other.companyEx);

  @override
  int get hashCode =>
      companyStatus.hashCode ^ companyName.hashCode ^ companyEx.hashCode;

  factory Company.fromMap(Map<String, dynamic> map) {
    return new Company(
      companyStatus: map['companyStatus'] as CompanyStatus,
      companyName: map['companyName'] as String,
      companyEx: map['companyEx'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'companyStatus': this.companyStatus.toMap(),
      'companyName': this.companyName,
      'companyEx': this.companyEx,
    } as Map<String, dynamic>;
  }

//</editor-fold>

}