import 'package:finsight/models/models.dart';
import 'package:finsight/services/isar/isar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InfoNotifier extends Notifier<InfoState> {
  bool get isFilled {
    final commonFields = [
      state.id,
      state.name,
      state.accountType,
      state.hasBankAccount,
      state.bankAccounts,
    ];

    final noBankAccountFields = [
      state.bankAccountType,
    ];

    final bankAccountFields = [
      state.bankAccountTypeLevel5,
      state.accountName,
      state.statementCsv,
    ];

    final noBankAccountFilled =
        noBankAccountFields.every((element) => element != null);
    final bankAccountFilled =
        bankAccountFields.every((element) => element != null);

    return commonFields.every((element) => element != null) &&
        ((state.hasBankAccount == false && noBankAccountFilled) ||
            (state.hasBankAccount == true && bankAccountFilled));
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
