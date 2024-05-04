import 'dart:ui';

import 'package:finsight/models/models.dart';
import 'package:finsight/modules/home/rankings/deposit/deposit_item.dart';
import 'package:finsight/providers/supabase/deposit/deposit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:carousel_slider/carousel_slider.dart';

final selectedDepositOfferIndex = StateProvider<int>((ref) => 0);
final autoPlayProvider = StateProvider<bool>((ref) => true);

class InsightPageDepositSection extends HookConsumerWidget {
  const InsightPageDepositSection({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final mediaQuery = MediaQuery.of(context);
    final depositsQuery = ref.watch(depositProvider);
    final deposits = useState(
      depositsQuery.asData?.value.depositsMap.values.expand((el) => el).toSet(),
    );
    final depositsNotifier = ref.watch(depositProvider.notifier);

    final autoPlay = ref.watch(autoPlayProvider);
    final controller = useMemoized(() => CarouselController(), []);

    useEffect(() {
      if (depositsQuery.asData?.value.depositsMap.values == null) {
        return null;
      }
      deposits.value = depositsQuery.asData?.value.depositsMap.values
          .expand((el) => el)
          .toSet();
      return null;
    }, [
      depositsQuery.asData?.value.depositsMap.values,
    ]);

    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: PointerDeviceKind.values.toSet(),
      ),
      child: CarouselSlider.builder(
        carouselController: controller,
        options: CarouselOptions(
          aspectRatio:
              (mediaQuery.size.width - 20) / (65 + mediaQuery.devicePixelRatio),
          scrollDirection: Axis.horizontal,
          autoPlay: autoPlay,
          pageSnapping: true,
          pageViewKey: const PageStorageKey('deposit'),
          enableInfiniteScroll: false,
          viewportFraction: .95,
          onPageChanged: (value, reason) async {
            if (reason == CarouselPageChangedReason.manual) {
              ref.read(autoPlayProvider.notifier).state = false;
            }

            if (value != 0 || ref.read(selectedDepositOfferIndex) == 1) {
              ref.read(selectedDepositOfferIndex.notifier).state = value;
            }

            final isLastCategory = depositsQuery.asData?.value.category ==
                SupabaseDepositsCategory.values.last;
            final hasMore = depositsQuery.asData?.value.hasMore == true;
            final isLastDeposit = deposits.value?.length == value + 1;

            switch ((isLastDeposit, hasMore, isLastCategory)) {
              case (true, true, _):
                await depositsNotifier.fetchMore();
                break;
              case (true, false, false):
                {
                  final nextCategory =
                      SupabaseDepositsCategory.values.elementAt(
                    depositsQuery.asData!.value.category.index + 1,
                  );
                  await depositsNotifier.setCategory(nextCategory);
                }
                break;
              default:
                break;
            }
          },
        ),
        itemCount: deposits.value?.length ?? 0,
        itemBuilder: (context, index, pageViewIndex) =>
            HookBuilder(builder: (context) {
          final deposit = deposits.value!.elementAt(index);

          return Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: DepositItem(deposit: deposit),
          );
        }),
      ),
    );
  }
}
