import 'package:dhiwise_task/core/models/extensions/goal.extension.dart';
import 'package:dhiwise_task/core/models/goal.dart';
import 'package:dhiwise_task/util/context_extensions.dart';
import 'package:flutter/material.dart';

class TargetDescription extends StatelessWidget {
  const TargetDescription({
    super.key,
    required this.goal,
  });

  final Goal goal;

  (double moreSavings, double monthlySavingProjection) _calculation() {
    final moreSavings = goal.targetAmount - goal.achievedAmount;

    final timeDiffInMonths =
        goal.expectedDate.difference(DateTime.now()).inDays / 30;

    return (moreSavings, moreSavings / timeDiffInMonths);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 24),
      color: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Need more savings',
                  style:
                      context.textTheme.titleMedium?.apply(color: Colors.white),
                ),
                Text(
                  '\$${_calculation().$1.toStringAsFixed(2)}',
                  style:
                      context.textTheme.titleMedium?.apply(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Monthly Saving Projection',
                  style:
                      context.textTheme.titleMedium?.apply(color: Colors.white),
                ),
                Text(
                  '\$${_calculation().$2.toStringAsFixed(2)}',
                  style:
                      context.textTheme.titleMedium?.apply(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
