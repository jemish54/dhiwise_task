// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contribution.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContributionImpl _$$ContributionImplFromJson(Map<String, dynamic> json) =>
    _$ContributionImpl(
      title: json['title'] as String,
      amount: (json['amount'] as num).toDouble(),
      color: const ColorConvertor().fromJson(json['color'] as int),
    );

Map<String, dynamic> _$$ContributionImplToJson(_$ContributionImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'amount': instance.amount,
      'color': const ColorConvertor().toJson(instance.color),
    };
