import 'card.dart';

class Account {
  late final int _balance;
  late final int _cc;
  late final int _ag;
  late final List<Card> _cards;

  int get balance => _balance;
  double get currencyBalance => _balance / 100;
  int get cc => _cc;
  int get ag => _ag;
  List<Card> get cards => _cards;

  Account({
    required int balance,
    required int cc,
    required int ag,
    required List<Card> cards,
  }) {
    _balance = balance;
    _cc = cc;
    _ag = ag;
    _cards = cards;
  }

  void addCard(Card card) {
    if (_cards.length > 2) {
      throw Exception('A conta não pode ter mais de dois cartões associados');
    }
  }
}
