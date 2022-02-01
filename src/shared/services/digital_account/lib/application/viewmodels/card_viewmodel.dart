import 'dart:convert';

class CardViewmodel {
  late final int number;
  CardViewmodel({
    required this.number,
  });

  Map<String, dynamic> toMap() {
    return {
      'number': number,
    };
  }

  factory CardViewmodel.fromMap(Map<String, dynamic> map) {
    return CardViewmodel(
      number: map['number'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CardViewmodel.fromJson(String source) =>
      CardViewmodel.fromMap(json.decode(source));
}
