import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:progress_job_hunting_app/infrastructure/database/database_manager.dart';
import 'package:progress_job_hunting_app/infrastructure/repository/company_repository.dart';
import 'package:progress_job_hunting_app/presentation/controller/add_company_page_controller.dart';
import 'package:progress_job_hunting_app/presentation/controller/login_page_controller.dart';

//データベース
final databaseManager = Provider((ref) => DataBaseManager());

//リポジトリ
final companyRepository =
    Provider((ref) => CompanyRepository(ref.read(databaseManager)));

//コントローラー
final addCompanyPageController = StateNotifierProvider(
    (ref) => AddCompanyPageController(ref.read(companyRepository)));
final logInPageController = Provider((ref) => LoginPageController());
