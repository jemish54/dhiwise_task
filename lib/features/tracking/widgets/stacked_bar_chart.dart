import 'package:dhiwise_task/core/models/contribution.dart';
import 'package:dhiwise_task/util/context_extensions.dart';
import 'package:flutter/material.dart';

class StackedBarChart extends StatelessWidget {
  const StackedBarChart({
    super.key,
    required this.contributionList,
  });

  final List<Contribution> contributionList;

  @override
  Widget build(BuildContext context) {
    final total =
        contributionList.fold(0.0, (sum, element) => sum + element.amount);
    const height = 12.0;
    return SizedBox(
      height: height,
      width: context.windowSize.width - 96,
      child: Stack(
        children: contributionList.indexed
            .map(
              (e) => Positioned(
                left: e.$1 == 0
                    ? 0
                    : (context.windowSize.width - 96) *
                            (contributionList.sublist(0, e.$1).fold(0.0,
                                    (sum, element) => sum + element.amount) /
                                total) -
                        8,
                child: Container(
                  height: height,
                  width:
                      (context.windowSize.width - 96) * (e.$2.amount / total) +
                          8,
                  decoration: ShapeDecoration(
                    shape: const StadiumBorder(),
                    color: e.$2.color,
                  ),
                ),
              ),
            )
            .toList()
            .reversed
            .toList(),
      ),
    );
  }
}
