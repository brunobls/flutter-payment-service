import 'package:digital_account/domain/entities/card.dart';

extension CardDto on Card {
  static Card fromJson(Map json) {
    return Card(number: json['number'] as int);
  }
}
