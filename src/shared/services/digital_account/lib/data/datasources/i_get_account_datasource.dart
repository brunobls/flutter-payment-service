import 'package:dartz/dartz.dart';
import 'package:digital_account/domain/entities/account.dart';

abstract class IGetAccountDatasource {
  Future<Either<Exception, Account>> call();
}
