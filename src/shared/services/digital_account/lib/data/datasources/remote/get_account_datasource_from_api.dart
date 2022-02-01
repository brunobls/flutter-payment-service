import 'package:dartz/dartz.dart';
import 'package:digital_account/data/datasources/i_get_account_datasource.dart';
import 'package:digital_account/data/dtos/account_dto.dart';
import 'package:digital_account/domain/entities/account.dart';

class GetAccountDatasourceFromApi implements IGetAccountDatasource {
  @override
  Future<Either<Exception, Account>> call() async {
    Map<String, dynamic> map = {
      'ag': 1254,
      'cc': 789845651232,
      'balance': 15200,
      'cards': [
        {'number': 123456789},
        {'number': 987654321}
      ],
    };

    return Right(AccountDto.fromJson(map));
  }
}
