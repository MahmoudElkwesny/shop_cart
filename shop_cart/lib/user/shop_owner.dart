import '../user/user.dart';
import 'user.dart';

class ShopOwner extends User {
  ShopOwner(
    String id,
    String fisrtName,
    String lastName,
    String email,
    String phone,
    String gender,
  ) : super(id, fisrtName, lastName, email, phone, gender);
}
