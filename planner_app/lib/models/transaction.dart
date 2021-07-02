
class Transaction {
  final String id, title;
  final double amount;
  DateTime date;

  Transaction(
      {required this.id,
      required this.title,
      required this.amount,
      required this.date});
}
