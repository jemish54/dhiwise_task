import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class ColorConvertor implements JsonConverter<Color, int> {
  const ColorConvertor();

  @override
  Color fromJson(int json) {
    return Color(json);
  }

  @override
  int toJson(Color object) {
    return object.value;
  }
}
