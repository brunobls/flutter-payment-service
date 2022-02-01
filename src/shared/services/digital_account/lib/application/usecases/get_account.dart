import 'package:dartz/dartz.dart';
import 'package:digital_account/application/usecases/i_get_account.dart';
import 'package:digital_account/application/viewmodels/account_viewmodel.dart';
import 'package:digital_account/domain/repositories/i_account_repository.dart';

class GetAccount implements IGetAccount {
  late final IAccountRepository _accountRepository;

  GetAccount(
    this._accountRepository,
  );

  @override
  Future<Either<Exception, AccountViewmodel>> call() async =>
      (await _accountRepository()).fold(
        (error) => Left(
          throw Exception('Não existe uma conta para esse usuário'),
        ),
        (result) => Right(
          AccountViewmodel.fromEntitie(result),
        ),
      );
}
