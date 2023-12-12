import 'package:dhiwise_task/core/models/contribution.dart';
import 'package:dhiwise_task/theme/colors.dart';
import 'package:dhiwise_task/util/context_extensions.dart';
import 'package:flutter/material.dart';

import 'stacked_bar_chart.dart';

class ContributionCard extends StatelessWidget {
  const ContributionCard({
    super.key,
    required this.contributionList,
  });

  final List<Contribution> contributionList;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(48),
      ),
      child: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Contributions',
                  style: context.textTheme.titleMedium?.apply(
                    color: AppColors.blue,
                    fontWeightDelta: 2,
                  ),
                ),
                Text(
                  'Show History',
                  style: context.textTheme.titleMedium?.apply(
                    color: AppColors.blue,
                    fontWeightDelta: 1,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: StackedBarChart(
                contributionList: contributionList,
              ),
            ),
            Column(
              children:
                  contributionList.map((e) => _contributionDetail(e)).toList(),
            )
          ],
        ),
      ),
    );
  }

  Widget _contributionDetail(Contribution contribution) {
    return Row(
      children: [
        CircleAvatar(
          radius: 6,
          backgroundColor: contribution.color,
        ),
        const SizedBox(width: 16),
        Text(contribution.title),
        const Spacer(),
        Text('\$${contribution.amount.toStringAsFixed(2)}'),
      ],
    );
  }
}
