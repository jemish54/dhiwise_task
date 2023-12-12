import 'package:freezed_annotation/freezed_annotation.dart';

import 'contribution.dart';

part 'goal.freezed.dart';
part 'goal.g.dart';

@freezed
class Goal with _$Goal {
  @JsonSerializable(explicitToJson: true)
  const factory Goal({
    required final String title,
    required final double targetAmount,
    required final DateTime expectedDate,
    @Default([]) final List<Contribution> contributionList,
  }) = _Goal;

  factory Goal.fromJson(Map<String, dynamic> json) => _$GoalFromJson(json);
}
