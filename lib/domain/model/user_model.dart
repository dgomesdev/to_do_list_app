import 'package:to_do_list_app/data/entity/response/user_response_entity.dart';

class UserModel {
  late final String id;
  late final String username;
  late final String email;
  late final String password;

  UserModel({required UserResponseEntity user}) {
    id = user.id;
    username = user.username;
    email = user.email;
    password = user.password;
  }
}
