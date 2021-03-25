import 'package:flutter/material.dart';
class Company{
  final String companyState;
  final String companyName;
  final String companyEx;

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  const Company({
    @required this.companyState,
    @required this.companyName,
    @required this.companyEx,
  });

  Company copyWith({
    String companyState,
    String companyName,
    String companyEx,
  }) {
    if ((companyState == null || identical(companyState, this.companyState)) &&
        (companyName == null || identical(companyName, this.companyName)) &&
        (companyEx == null || identical(companyEx, this.companyEx))) {
      return this;
    }

    return new Company(
      companyState: companyState ?? this.companyState,
      companyName: companyName ?? this.companyName,
      companyEx: companyEx ?? this.companyEx,
    );
  }

  @override
  String toString() {
    return 'Company{companyState: $companyState, companyName: $companyName, companyEx: $companyEx}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Company &&
          runtimeType == other.runtimeType &&
          companyState == other.companyState &&
          companyName == other.companyName &&
          companyEx == other.companyEx);

  @override
  int get hashCode =>
      companyState.hashCode ^ companyName.hashCode ^ companyEx.hashCode;

  factory Company.fromMap(Map<String, dynamic> map) {
    return new Company(
      companyState: map['companyState'] as String,
      companyName: map['companyName'] as String,
      companyEx: map['companyEx'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'companyState': this.companyState,
      'companyName': this.companyName,
      'companyEx': this.companyEx,
    } as Map<String, dynamic>;
  }

//</editor-fold>

}