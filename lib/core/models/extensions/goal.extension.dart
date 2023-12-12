import 'package:dhiwise_task/core/models/goal.dart';

extension GoalCalculations on Goal {
  double get achievedAmount => contributionList
      .map((e) => e.amount)
      .fold(0.0, (total, amount) => total + amount);
}
