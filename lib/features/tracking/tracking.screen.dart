import 'package:dhiwise_task/core/models/extensions/goal.extension.dart';
import 'package:dhiwise_task/core/models/goal.dart';
import 'package:dhiwise_task/features/tracking/providers/goals.provider.dart';
import 'package:dhiwise_task/theme/colors.dart';
import 'package:dhiwise_task/util/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'widgets/bottom_navigation_bar.dart';
import 'widgets/circle_arc_chart.dart';
import 'widgets/contribution_card.dart';
import 'widgets/goal_description.dart';
import 'widgets/target_description.dart';

class DashboardScreen extends HookConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(displayingGoalIndexProvider);
    final pageController = usePageController(initialPage: index);
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: ref.watch(goalsProvider).when(
            data: (goals) => goals.isEmpty
                ? const Center(
                    child: Text('No Goals To Show'),
                  )
                : SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 80),
                        Text(
                          goals[index].title,
                          textAlign: TextAlign.center,
                          style: context.textTheme.headlineMedium?.apply(
                            fontWeightDelta: 1,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 54),
                        SizedBox(
                          height: context.fractionalHeight(fraction: 0.3),
                          child: PageView(
                              controller: pageController,
                              onPageChanged: (value) => ref
                                  .read(displayingGoalIndexProvider.notifier)
                                  .state = value,
                              children: goals
                                  .map(
                                    (goal) => Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CircleArcChart(
                                          value: goal.achievedAmount,
                                          maxValue: goal.targetAmount,
                                          child: circleArcChartDescription(
                                            context,
                                            goal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                  .toList()),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: goals.indexed
                              .map(
                                (e) => Container(
                                  height: 10,
                                  width: 10,
                                  margin: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: e.$1 == index
                                        ? Colors.white
                                        : Colors.white.withOpacity(0.2),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                        const SizedBox(height: 24),
                        GoalDescription(goal: goals[index]),
                        TargetDescription(
                          goal: goals[index],
                        ),
                        const SizedBox(height: 24),
                        ContributionCard(
                          contributionList: goals[index].contributionList,
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
            error: (error, stackTrace) => Center(
              child: Text(error.toString()),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

  Column circleArcChartDescription(
    BuildContext context,
    Goal goal,
  ) {
    return Column(
      children: [
        const SizedBox(height: 24),
        const Icon(
          Icons.home_rounded,
          size: 90,
          color: Colors.white,
        ),
        const SizedBox(height: 8),
        Text(
          goal.achievedAmount.toStringAsFixed(2),
          style: context.textTheme.headlineMedium?.apply(color: Colors.white),
        ),
        Text(
          'You Saved',
          style: context.textTheme.headlineSmall
              ?.apply(color: Colors.white.withOpacity(0.3)),
        ),
      ],
    );
  }
}
