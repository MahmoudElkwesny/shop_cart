 class BasePayment {
  String paymentId;
  String amount;
  String paymentMethod;
  DateTime paymentDate;

  BasePayment(
      this.paymentId, this.amount, this.paymentMethod, this.paymentDate);

  BasePayment.fromJson(Map<String, dynamic> jsonObject) {
    this.paymentId = jsonObject['payment_id'];
    this.amount = jsonObject['amount'];
    this.paymentMethod = jsonObject['payment_method'];
    this.paymentDate = DateTime.parse(jsonObject['payment_date']);
  }
}
