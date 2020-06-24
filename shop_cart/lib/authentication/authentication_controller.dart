
import 'authenticatable.dart';


import '../user/user.dart';


class FirebaseAuthenticationController implements Authenticatable {
  @override
  Future<User> register(String email, String password) {
    return null;
  }

  @override
  Future<bool> login(String email, String password) {
    return null;
  }

  @override
  Future<bool> resetPassword(String email) {
    return null;
  }

  @override
  Future<User> updateProfile(User user) {
    return null;
  }
}
