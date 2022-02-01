import 'package:digital_account/domain/entities/card.dart';

class CardViewmodel {
  late final int number;

  CardViewmodel.fromEntitie(Card card) {
    number = card.number;
  }
}
