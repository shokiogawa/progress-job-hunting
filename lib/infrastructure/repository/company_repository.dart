import 'package:progress_job_hunting_app/domain/value_object/company.dart';
import 'package:progress_job_hunting_app/infrastructure/database/database_manager.dart';

class CompanyRepository{
  final DataBaseManager dataBaseManager;
  CompanyRepository(this.dataBaseManager);

  //companyクラスに入れdatabaseにおくる処理。
  Future<void>saveCompanyInfo(String companyState, String name, String ex, String userId) async{
    Company company;
    company = Company(companyState: companyState, companyName: name, companyEx: ex, userId: userId);
    print("ここが会社の名前だよ" + company.companyName);
    await dataBaseManager.saveCompanyInfo(company);
  }
}