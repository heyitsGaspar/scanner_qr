// To parse this JSON data, do
//
//     final waiterResponseDto = waiterResponseDtoFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

WaiterResponseDto waiterResponseDtoFromJson(String str) => WaiterResponseDto.fromJson(json.decode(str));

String waiterResponseDtoToJson(WaiterResponseDto data) => json.encode(data.toJson());

class WaiterResponseDto {
    WaiterResponseDto({
        required this.name,
        required this.lastName,
        required this.birthdate,
        required this.active,
        required this.createdAt,
        required this.updatedAt,
        required this.age,
        required this.id,
    });

    final String name;
    final String lastName;
    final DateTime birthdate;
    final int active;
    final DateTime createdAt;
    final DateTime updatedAt;
    final int age;
    final String id;

    factory WaiterResponseDto.fromJson(Map<String, dynamic> json) => WaiterResponseDto(
        name: json["name"],
        lastName: json["lastName"],
        birthdate: DateTime.parse(json["birthdate"]),
        active: json["active"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        age: json["age"],
        id: json["id"],
    );

     factory WaiterResponseDto.fromMap(Map<String, dynamic> json) => WaiterResponseDto(
        name: json["name"],
        lastName: json["lastName"],
        birthdate: DateTime.parse(json["birthdate"]),
        active: json["active"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        age: json["age"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "lastName": lastName,
        "birthdate": birthdate.toIso8601String(),
        "active": active,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "age": age,
        "id": id,
    };
}
