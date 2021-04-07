import 'package:progress_job_hunting_app/domain/value_object/company.dart';
import 'package:progress_job_hunting_app/domain/value_object/company_status.dart';
import 'package:progress_job_hunting_app/infrastructure/database/database_manager.dart';
import 'package:progress_job_hunting_app/view/utility/data/company_status.dart';

class CompanyRepository{
  final DataBaseManager dataBaseManager;
  CompanyRepository(this.dataBaseManager);

  Future<void>saveCompanyInfo(CompanyStatus companyStatus, String name, String ex) async{
    Company company;
    company = Company(companyStatus: companyStatus, companyName: name, companyEx: ex);
    print("ここが会社の名前だよ" + company.companyName);
    await dataBaseManager.saveCompanyInfo(company);
  }
}