import 'package:finsight/models/models.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InfoNotifier extends Notifier<InfoState> {
  @override
  InfoState build() {
    return InfoState();
  }

  void setState(
    InfoState Function(InfoState) transform,
  ) {
    state = transform(state);
  }
}

final infoProvider =
    NotifierProvider<InfoNotifier, InfoState>(() => InfoNotifier());
