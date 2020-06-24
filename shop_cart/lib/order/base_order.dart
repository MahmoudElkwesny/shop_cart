import '../payment/base_payment.dart';
import '../user/customer.dart';
import '../cart/base_cart.dart';

abstract class BaseOrder {
  BaseCart cart;
  Customer customer;
  BasePayment payment;

  BaseOrder(this.cart, this.customer, this.payment);

  BaseOrder.fromJson(Map<String, dynamic> jsonObject) {
    this.customer = Customer.fromJson(jsonObject['customer']);
    this.cart = BaseCart.fromJson(jsonObject['cart']);
    this.payment = BasePayment.fromJson(jsonObject['payment']);
  }
  double total() {}
}
