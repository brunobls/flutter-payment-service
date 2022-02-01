import 'package:digital_account/domain/entities/account.dart';

import 'card_dto.dart';

extension AccountDto on Account {
  static Account fromJson(Map json) {
    return Account(
      ag: json['ag'] as int,
      balance: json['balance'] as int,
      cards: List.from(json['cards']).map((e) => CardDto.fromJson(e)).toList(),
      cc: json['cc'] as int,
    );
  }
}
