import 'package:finsight/providers/preferences/state.dart';
import 'package:finsight/services/isar/isar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PreferencesNotifier extends Notifier<PreferencesState> {
  @override
  PreferencesState build() {
    try {
      final cached = isar.preferencesStates.get(0);

      if (cached == null) {
        isar.write((isar) {
          isar.preferencesStates.put(const PreferencesState(id: 0));
        });

        return const PreferencesState(id: 0);
      }

      return cached;
    } catch (e, stack) {
      debugPrint(e.toString());
      debugPrint(stack.toString());
      return const PreferencesState(id: 0);
    }
  }

  void setState(PreferencesState Function(PreferencesState state) cb) {
    state = cb(state);

    isar.write((isar) {
      isar.preferencesStates.put(state);
    });
  }
}

final preferencesProvider =
    NotifierProvider<PreferencesNotifier, PreferencesState>(
  () => PreferencesNotifier(),
);
