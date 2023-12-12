import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'convertor/color_convertor.dart';

part 'contribution.freezed.dart';
part 'contribution.g.dart';

@freezed
class Contribution with _$Contribution {
  const factory Contribution({
    required final String title,
    required final double amount,
    @ColorConvertor() required final Color color,
  }) = _Contribution;

  factory Contribution.fromJson(Map<String, dynamic> json) =>
      _$ContributionFromJson(json);
}
