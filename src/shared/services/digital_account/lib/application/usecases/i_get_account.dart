import 'package:digital_account/application/viewmodels/account_viewmodel.dart';
import 'package:dartz/dartz.dart';

abstract class IGetAccount {
  Future<Either<Exception, AccountViewmodel>> call();
}
