import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  final String id;
  final String name;
  final String email;
  final String token;
  final String type;
  final String password;
  final String address;
  User({
    required this.id,
    required this.name,
    required this.email,
    required this.token,
    required this.type,
    required this.password,
    required this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'token': token,
      'type': type,
      'password': password,
      'address': address,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] as String,
      name: map['name'] as String,
      email: map['email'] as String,
      token: map['token'] as String,
      type: map['type'] as String,
      password: map['password'] as String,
      address: map['address'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);
}
