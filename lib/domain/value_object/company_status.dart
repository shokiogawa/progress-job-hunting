import 'package:flutter/material.dart';
class CompanyStatus {
  final int id;
  final String status;

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  const CompanyStatus({
    @required this.id,
    @required this.status,
  });

  CompanyStatus copyWith({
    int id,
    String status,
  }) {
    if ((id == null || identical(id, this.id)) &&
        (status == null || identical(status, this.status))) {
      return this;
    }

    return new CompanyStatus(
      id: id ?? this.id,
      status: status ?? this.status,
    );
  }

  @override
  String toString() {
    return 'CompanyStatus{id: $id, status: $status}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CompanyStatus &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          status == other.status);

  @override
  int get hashCode => id.hashCode ^ status.hashCode;

  factory CompanyStatus.fromMap(Map<String, dynamic> map) {
    return new CompanyStatus(
      id: map['id'] as int,
      status: map['status'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'id': this.id,
      'status': this.status,
    } as Map<String, dynamic>;
  }

//</editor-fold>

}
