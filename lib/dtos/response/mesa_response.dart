// To parse this JSON data, do
//
//     final tableResponseDto = tableResponseDtoFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

TableResponseDto tableResponseDtoFromJson(String str) => TableResponseDto.fromJson(json.decode(str));

String tableResponseDtoToJson(TableResponseDto data) => json.encode(data.toJson());

class TableResponseDto {
    TableResponseDto({
        required this.numMesa,
        required this.capacity,
        required this.active,
        required this.createdAt,
        required this.updatedAt,
        required this.id,
    });

    final int numMesa;
    final int capacity;
    final int active;
    final DateTime createdAt;
    final DateTime updatedAt;
    final String id;

    factory TableResponseDto.fromJson(Map<String, dynamic> json) => TableResponseDto(
        numMesa: json["numMesa"],
        capacity: json["capacity"],
        active: json["active"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        id: json["id"],
    );
     factory TableResponseDto.fromMap(Map<String, dynamic> json) => TableResponseDto(
        numMesa: json["numMesa"],
        capacity: json["capacity"],
        active: json["active"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "numMesa": numMesa,
        "capacity": capacity,
        "active": active,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "id": id,
    };
}
