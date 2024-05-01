import 'package:finsight/models/models.dart';
import 'package:finsight/services/isar/isar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InfoNotifier extends Notifier<InfoState> {
  bool get isFilled {
    final fields = [
      state.id,
      state.name,
      state.accountType,
      state.hasBankAccount,
      state.bankAccounts,
      state.bankAccountType,
      state.bankAccountTypeLevel5,
      state.accountName,
      state.statementCsv,
    ];

    return fields.every((element) => element != null);
  }

  @override
  InfoState build() {
    final info = isar.infoStates.get(0);
    return info ?? InfoState(id: 0);
  }

  void setState(
    InfoState Function(InfoState) transform,
  ) {
    state = transform(state);

    isar.write((isar) {
      isar.infoStates.put(state);
    });
  }
}

final infoProvider =
    NotifierProvider<InfoNotifier, InfoState>(() => InfoNotifier());
