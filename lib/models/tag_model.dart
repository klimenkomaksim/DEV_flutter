import 'package:flutter/material.dart';

class TagModel {
  int? _id;
  String? _name;
  String? _bgColorHex;
  String? _textColorHex;

  TagModel(
      {required int id,
      required String name,
      required String bgColorHex,
      required String textColorHex}) {
    _id = id;
    _name = name;
    _bgColorHex = bgColorHex;
    _textColorHex = textColorHex;
  }

  int? get id => _id;
  String? get name => _name;
  Color get backgroundColor => formatColor(_bgColorHex);
  Color get textColorHex => formatColor(_textColorHex);

  Color formatColor(String? hexColor) {
    if (hexColor == null) {
      return Colors.black;
    }

    final colorString = hexColor.substring(1);
    final colorInt = int.parse(colorString, radix: 16);

    return Color(colorInt).withOpacity(1);
  }

  TagModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _bgColorHex = json['bg_color_hex'];
    _textColorHex = json['text_color_hex'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['id'] = _id;
    data['name'] = _name;
    data['bg_color_hex'] = _bgColorHex;
    data['text_color_hex'] = _textColorHex;

    return data;
  }
}
