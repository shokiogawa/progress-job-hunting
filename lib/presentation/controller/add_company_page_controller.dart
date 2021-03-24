import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_company_page_controller.freezed.dart';

@freezed
abstract class AddCompanyPageState with _$AddCompanyPageState {
  factory AddCompanyPageState({
    @Default("") String companyState,
    @Default("") String companyName,
    @Default("") String companyEx,
  }) = _AddCompanyPageState;

}
