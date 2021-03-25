import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:progress_job_hunting_app/infrastructure/repository/company_repository.dart';
import 'package:state_notifier/state_notifier.dart';

part 'add_company_page_controller.freezed.dart';

@freezed
abstract class AddCompanyPageState with _$AddCompanyPageState {
  factory AddCompanyPageState({
    @Default("") String companyState,
    @Default("") String companyName,
    @Default("") String companyEx,
  }) = _AddCompanyPageState;
}

class AddCompanyPageController extends StateNotifier<AddCompanyPageState> {
  final CompanyRepository companyRepository;

  AddCompanyPageController(this.companyRepository)
      : super(AddCompanyPageState(companyState: "説明会"));

  Future<void> saveCompanyInfo(
      String companyState, String name, String ex) async {
    print("ここだよ" + state.companyState);
    await companyRepository.saveCompanyInfo(companyState, name, ex);

  }

  void fetchCompanyState(String companyState){
    state = state.copyWith(companyState: companyState);
  }
}
