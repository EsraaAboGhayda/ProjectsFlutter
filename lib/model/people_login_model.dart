// model/user_login_model.dart
// ignore_for_file: public_member_api_docs, sort_constructors_first// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PeopleLoginModel {
  String name;
   PeopleLoginModel({
    required this.name,
  });

  PeopleLoginModel copyWith({
    String? name,
  }) {
    return PeopleLoginModel(
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }

  factory PeopleLoginModel.fromMap(Map<String, dynamic> map) {
    return PeopleLoginModel(
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PeopleLoginModel.fromJson(String source) => PeopleLoginModel.fromMap(json.decode(source));

  @override
  String toString() => 'PeopleLoginModel(name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PeopleLoginModel &&
      other.name == name;
  }

  @override
  int get hashCode => name.hashCode;
}

