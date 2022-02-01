import 'package:dartz/dartz.dart';
import 'package:digital_account/application/usecases/i_get_account.dart';
import 'package:digital_account/application/viewmodels/account_viewmodel.dart';

class GetAccount implements IGetAccount {
  @override
  Future<Either<Exception, AccountViewmodel>> call() {
    throw UnimplementedError();
  }
}
