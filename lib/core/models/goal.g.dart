// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoalImpl _$$GoalImplFromJson(Map<String, dynamic> json) => _$GoalImpl(
      title: json['title'] as String,
      targetAmount: (json['targetAmount'] as num).toDouble(),
      expectedDate: DateTime.parse(json['expectedDate'] as String),
      contributionList: (json['contributionList'] as List<dynamic>?)
              ?.map((e) => Contribution.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$GoalImplToJson(_$GoalImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'targetAmount': instance.targetAmount,
      'expectedDate': instance.expectedDate.toIso8601String(),
      'contributionList':
          instance.contributionList.map((e) => e.toJson()).toList(),
    };
