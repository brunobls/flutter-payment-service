import 'package:dartz/dartz.dart';
import 'package:digital_account/data/datasources/i_get_account_datasource.dart';
import 'package:digital_account/domain/entities/account.dart';
import 'package:digital_account/domain/repositories/i_account_repository.dart';

class AccountRepository implements IAccountRepository {
  late final IGetAccountDatasource _getAccountDatasource;
  AccountRepository(this._getAccountDatasource);

  @override
  Future<Either<Exception, Account>> call() async {
    return await _getAccountDatasource();
  }
}
