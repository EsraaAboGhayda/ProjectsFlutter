// model/quiz_model.dart
// ignore_for_file: public_member_api_docs, sort_constructors_first// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class PeopleModel {
    String name;
  String image;
  String message;
  num unread_message_count;
String date;
  PeopleModel({
    required this.name,
    required this.image,
    required this.message,
    required this.unread_message_count,
    required this.date
  });

  PeopleModel copyWith({
    String? name,
    String? image,
    String? message,
    num? unread_message_count,
    String? date,
  }) {
    return PeopleModel(
      name: name ?? this.name,
      image: image ?? this.image,
      message: message ?? this.message,
      unread_message_count: unread_message_count ?? this.unread_message_count,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image': image,
      'message': message,
      'unread_message_count': unread_message_count,
      'date': date,
    };
  }

  factory PeopleModel.fromMap(Map<String, dynamic> map) {
    return PeopleModel(
      name: map['name'] ?? '',
      image: map['image'] ?? '',
      message: map['message'] ?? '',
      unread_message_count: map['unread_message_count'] ?? 0,
      date: map['date'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PeopleModel.fromJson(String source) => PeopleModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PeopleModel(name: $name, image: $image, message: $message, unread_message_count: $unread_message_count, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PeopleModel &&
      other.name == name &&
      other.image == image &&
      other.message == message &&
      other.unread_message_count == unread_message_count &&
      other.date == date;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      image.hashCode ^
      message.hashCode ^
      unread_message_count.hashCode ^
      date.hashCode;
  }
}
