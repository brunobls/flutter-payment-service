import 'package:digital_account/domain/entities/account.dart';
import 'package:dartz/dartz.dart';

abstract class IAccountRepository {
  Future<Either<Exception, Account>> call();
}
