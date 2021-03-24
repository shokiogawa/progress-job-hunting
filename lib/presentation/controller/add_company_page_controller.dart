import 'package:freezed_annotation/freezed_annotation.dart';
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

class AddCompanyPageController extends StateNotifier<AddCompanyPageState>{
  AddCompanyPageController() : super(AddCompanyPageState());

  Future<void> saveCompanyInfo(String companyState, String name, String ex) async{
    state = state.copyWith(companyState: companyState, companyName: name, companyEx: ex);
  }
}
