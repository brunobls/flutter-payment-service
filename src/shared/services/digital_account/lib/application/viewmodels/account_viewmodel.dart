import 'package:digital_account/domain/entities/account.dart';
import 'card_viewmodel.dart';

class AccountViewmodel {
  late final double balance;
  late final int cc;
  late final int ag;
  late final List<CardViewmodel> cards;

  AccountViewmodel.fromEntitie(Account account) {
    balance = account.currencyBalance;
    cc = account.cc;
    ag = account.ag;
    cards = List.from(
      account.cards.map((e) => CardViewmodel.fromEntitie(e)),
    );
  }
}
