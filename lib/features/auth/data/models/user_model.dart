// ignore_for_file: public_member_api_docs, sort_constructors_first, overridden_fields
import 'dart:convert';
import 'package:jobseque/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  String? token;
  @override
  int id;
  @override
  String email;
  @override
  String name;
  UserModel({
    this.token,
    required this.id,
    required this.email,
    required this.name,
  }) : super(
          id: id,
          email: email,
          name: name,
        );

  UserModel copyWith({
    String? token,
    int? id,
    String? email,
    String? name,
  }) {
    return UserModel(
      token: token ?? this.token,
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
      'id': id,
      'email': email,
      'name': name,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      token: map['token'] != null ? map['token'] as String : null,
      email: map['email'] as String,
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }
  factory UserModel.fromServerForLogin(Map<String, dynamic> map) {
    return UserModel(
      token: map['token'] != null ? map['token'] as String : null,
      email: map['user']['email'] as String,
      id: map['user']['id'] as int,
      name: map['user']['name'] as String,
    );
  }
  factory UserModel.fromServerForRegister(Map<String, dynamic> map) {
    return UserModel(
      token: map['token'] != null ? map['token'] as String : null,
      email: map['data']['email'] as String,
      id: map['data']['id'] as int,
      name: map['data']['name'] as String,
    );
  }

  factory UserModel.fromServerForChangePassword(Map<String, dynamic> map) {
    return UserModel(
      email: map['data']['email'] as String,
      id: map['data']['id'] as int,
      name: map['data']['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(token: $token, id: $id, email: $email, name: $name)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.token == token &&
        other.id == id &&
        other.email == email &&
        other.name == name;
  }

  @override
  int get hashCode {
    return token.hashCode ^ id.hashCode ^ email.hashCode ^ name.hashCode;
  }
}
