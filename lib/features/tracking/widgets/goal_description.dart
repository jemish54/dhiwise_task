import 'package:dhiwise_task/constants/month_names.dart';
import 'package:dhiwise_task/core/models/goal.dart';
import 'package:dhiwise_task/util/context_extensions.dart';
import 'package:flutter/material.dart';

class GoalDescription extends StatelessWidget {
  const GoalDescription({
    super.key,
    required this.goal,
  });

  final Goal goal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: ListTile(
        title: Text(
          'Goal',
          style: context.textTheme.titleLarge?.apply(color: Colors.white),
        ),
        subtitle: Text(
          'by ${MonthNames.getName(goal.expectedDate.month)} ${goal.expectedDate.year}',
          style: context.textTheme.titleSmall
              ?.apply(color: Colors.white.withOpacity(0.4)),
        ),
        trailing: Text(
          '\$${goal.targetAmount.toStringAsFixed(2)}',
          style: context.textTheme.titleLarge?.apply(color: Colors.white),
        ),
      ),
    );
  }
}
