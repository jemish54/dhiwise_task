import 'package:dhiwise_task/core/database/goal.service.dart';
import 'package:dhiwise_task/core/models/goal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final goalsProvider = StreamProvider<List<Goal>>((ref) {
  // await ref.read(goalServiceProvider).populateFirestore();
  return ref.read(goalServiceProvider).getGoals();
});

final displayingGoalIndexProvider = StateProvider<int>((ref) {
  return 0;
});
