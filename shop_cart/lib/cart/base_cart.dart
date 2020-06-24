import 'base_cart_item_controller.dart';

import 'base_cart_item_.dart';

class BaseCart {
  List<BaseCartItem> items;

  BaseCart(this.items);

  
  BaseCart.fromJson(Map<String, dynamic> jsonObject) {
    this.items = BaseCartItemController.toBaseCartItems(jsonObject['items']);
  }
}
