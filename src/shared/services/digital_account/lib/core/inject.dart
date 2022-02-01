import 'package:digital_account/application/usecases/get_account.dart';
import 'package:digital_account/application/usecases/i_get_account.dart';
import 'package:digital_account/data/datasources/i_get_account_datasource.dart';
import 'package:digital_account/data/datasources/remote/get_account_datasource_from_api.dart';
import 'package:digital_account/data/repositories/account_repository.dart';
import 'package:digital_account/domain/repositories/i_account_repository.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static void initialize() {
    GetIt getIt = GetIt.instance;

    // datasource
    getIt.registerLazySingleton<IGetAccountDatasource>(
      () => GetAccountDatasourceFromApi(),
    );

    // repositories
    getIt.registerLazySingleton<IAccountRepository>(
      () => AccountRepository(getIt()),
    );

    // usecases
    getIt.registerLazySingleton<IGetAccount>(
      () => GetAccount(getIt()),
    );
  }
}
