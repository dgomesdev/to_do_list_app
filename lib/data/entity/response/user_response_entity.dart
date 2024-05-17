import 'package:to_do_list_app/data/entity/response/response_entity.dart';

class UserResponseEntity implements ResponseEntity {
  final String id;
  final String username;
  final String email;
  final String password;

  const UserResponseEntity(
    this.id,
    this.username,
    this.email,
    this.password,
  );
}
