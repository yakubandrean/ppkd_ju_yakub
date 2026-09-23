// To parse this JSON data, do
//
//     final Character = CharacterFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'character_model.g.dart';

List<Character> CharacterFromJson(String str) =>
    List<Character>.from(json.decode(str).map((x) => Character.fromJson(x)));

String CharacterToJson(List<Character> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@JsonSerializable()
class Character {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "firstName")
  final String? firstName;
  @JsonKey(name: "lastName")
  final String? lastName;
  @JsonKey(name: "fullName")
  final String? fullName;
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "family")
  final String? family;
  @JsonKey(name: "image")
  final String? image;
  @JsonKey(name: "imageUrl")
  final String? imageUrl;

  Character({
    this.id,
    this.firstName,
    this.lastName,
    this.fullName,
    this.title,
    this.family,
    this.image,
    this.imageUrl,
  });

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterToJson(this);
}
