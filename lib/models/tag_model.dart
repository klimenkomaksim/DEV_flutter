import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tag_model.g.dart';

@JsonSerializable()
class TagModel {
  final int id;
  final String name;
  @JsonKey(name: 'bg_color_hex', defaultValue: '')
  final String backgroundColorHex;
  @JsonKey(name: 'text_color_hex', defaultValue: '')
  final String textColorHex;

  TagModel(
      {required this.id,
      required this.name,
      required this.backgroundColorHex,
      required this.textColorHex});

  factory TagModel.fromJson(Map<String, dynamic> json) =>
      _$TagModelFromJson(json);

  Map<String, dynamic> toJson() => _$TagModelToJson(this);

  Color get backgroundColor => formatColor(backgroundColorHex);
  Color get textColor => formatColor(textColorHex);

  Color formatColor(String hexColor) {
    if (hexColor.isEmpty) {
      return Colors.black;
    }

    final colorString = hexColor.substring(1);
    final colorInt = int.parse(colorString, radix: 16);

    return Color(colorInt).withOpacity(1);
  }
}
