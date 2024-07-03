import 'package:user_repository/src/models/models.dart';

abstract class UserRepository {
  Future<void> signIn(String email, String password);

  Future<MyUser> signUp(MyUser myUser, String password);

  Future<void> logOut();

  Future<void> resetPassword(String email);
}
