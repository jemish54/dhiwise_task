import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dhiwise_task/core/models/contribution.dart';
import 'package:dhiwise_task/core/models/goal.dart';
import 'package:dhiwise_task/core/providers/firestore.provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final goalServiceProvider = Provider<GoalService>((ref) {
  return GoalService(firestore: ref.watch(firestoreProvider));
});

class GoalService {
  GoalService({required FirebaseFirestore firestore}) : _firestore = firestore;

  final FirebaseFirestore _firestore;

  Stream<List<Goal>> getGoals() {
    final querySnapshotStream = _firestore.collection('goals').snapshots();
    return querySnapshotStream.map(
        (event) => event.docs.map((e) => Goal.fromJson(e.data())).toList());
  }

  Future<void> populateFirestore() async {
    final goalList = [
      Goal(
        title: 'Buy a dream house',
        targetAmount: 50000,
        expectedDate: DateTime(2030, 01),
        contributionList: [
          const Contribution(
            title: 'Monthly Salary',
            amount: 15000,
            color: Colors.blue,
          ),
          const Contribution(
            title: 'Income 2',
            amount: 7000,
            color: Colors.amber,
          ),
          const Contribution(
            title: 'Income 3',
            amount: 600,
            color: Colors.purple,
          ),
        ],
      ),
      Goal(
        title: 'Save for a new car',
        targetAmount: 25000,
        expectedDate: DateTime(2026, 04),
        contributionList: [
          const Contribution(
            title: 'Monthly Salary',
            amount: 8000,
            color: Colors.blue,
          ),
          const Contribution(
            title: 'Income 2',
            amount: 1000,
            color: Colors.amber,
          ),
        ],
      ),
      Goal(
        title: 'Travel to Europe',
        targetAmount: 15000,
        expectedDate: DateTime(2029, 01),
        contributionList: [
          const Contribution(
            title: 'Income 2',
            amount: 900,
            color: Colors.amber,
          ),
          const Contribution(
            title: 'Income 2',
            amount: 500,
            color: Colors.purple,
          ),
        ],
      ),
      Goal(
        title: 'Pay off student loans',
        expectedDate: DateTime(2025, 01),
        targetAmount: 25000,
        contributionList: [
          const Contribution(
            title: 'Monthly Salary',
            amount: 5000,
            color: Colors.blue,
          ),
          const Contribution(
            title: 'Income 2',
            amount: 600,
            color: Colors.amber,
          ),
          const Contribution(
            title: 'Income 3',
            amount: 200,
            color: Colors.purple,
          ),
        ],
      ),
    ];

    try {
      log('Trying to Add to Firestore');
      for (final goal in goalList) {
        final doc = await _firestore.collection('goals').add(goal.toJson());
        log(doc.id);
      }
    } on FirebaseException catch (e) {
      log(e.message ?? e.toString());
    } catch (e) {
      log(e.toString());
    }

    log('Done Populating Firestore');
  }
}
