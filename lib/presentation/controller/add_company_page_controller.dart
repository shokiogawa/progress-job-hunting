import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:progress_job_hunting_app/domain/value_object/company_status.dart';
import 'package:progress_job_hunting_app/infrastructure/repository/company_repository.dart';
import 'package:progress_job_hunting_app/view/utility/data/company_status.dart';
import 'package:state_notifier/state_notifier.dart';

part 'add_company_page_controller.freezed.dart';

@freezed
abstract class AddCompanyPageState with _$AddCompanyPageState {
  factory AddCompanyPageState({
    CompanyStatus companyStatus,
    @Default("") String companyState,
    @Default("") String companyName,
    @Default("") String companyEx,
    @Default(false) bool isLoading,
  }) = _AddCompanyPageState;
}

class AddCompanyPageController extends StateNotifier<AddCompanyPageState> {
  final CompanyRepository companyRepository;

  AddCompanyPageController(this.companyRepository)
      : super(AddCompanyPageState(companyStatus:companyStatus.first , isLoading: false));

  Future<void> saveCompanyInfo(
      CompanyStatus companyStatus, String name, String ex) async {
    print("ここだよ" + state.companyState);
    state = state.copyWith(isLoading: true);
    print(state.isLoading);
    await companyRepository.saveCompanyInfo(companyStatus, name, ex).then((value){
      state = state.copyWith(isLoading: false);
      print(state.isLoading);
    });

  }

  void fetchCompanyState(CompanyStatus companyStatus){
    state = state.copyWith(companyStatus: companyStatus);
  }
}
