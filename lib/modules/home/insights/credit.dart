import 'dart:ui';

import 'package:finsight/models/models.dart';
import 'package:finsight/modules/home/insights/deposit.dart';
import 'package:finsight/modules/home/rankings/credits/credits_item.dart';
import 'package:finsight/providers/supabase/credits/categories.dart';
import 'package:finsight/providers/supabase/credits/credits.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:carousel_slider/carousel_slider.dart';

final selectedCreditsOfferIndex = StateProvider<int>((ref) => 0);

class InsightPageCreditsSection extends HookConsumerWidget {
  const InsightPageCreditsSection({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final mediaQurey = MediaQuery.of(context);

    final creditsQuery = ref.watch(creditProvider);
    final credits = useState(
      creditsQuery.asData?.value.creditsMap.values.expand((el) => el).toSet(),
    );
    final creditsNotifier = ref.watch(creditProvider.notifier);

    final autoPlay = ref.watch(autoPlayProvider);
    final controller = useMemoized(() => CarouselController(), []);

    useEffect(() {
      if (creditsQuery.asData?.value.creditsMap.values == null) {
        return null;
      }
      credits.value = creditsQuery.asData?.value.creditsMap.values
          .expand((el) => el)
          .toSet();
      return null;
    }, [
      creditsQuery.asData?.value.creditsMap.values,
    ]);

    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: PointerDeviceKind.values.toSet(),
      ),
      child: CarouselSlider.builder(
        carouselController: controller,
        options: CarouselOptions(
          aspectRatio: (mediaQurey.size.width - 20) /
              (65 + MediaQuery.devicePixelRatioOf(context)),
          scrollDirection: Axis.horizontal,
          autoPlay: autoPlay,
          pageSnapping: true,
          pageViewKey: const PageStorageKey('credit'),
          enableInfiniteScroll: false,
          viewportFraction: .9,
          onPageChanged: (value, reason) async {
            if (reason == CarouselPageChangedReason.manual) {
              ref.read(autoPlayProvider.notifier).state = false;
            }

            if (value != 0 || ref.read(selectedCreditsOfferIndex) == 1) {
              ref.read(selectedCreditsOfferIndex.notifier).state = value;
            }
            final availableCreditCategories =
                ref.read(creditCategoriesProvider).asData?.value ?? [];
            final isLastCategory = creditsQuery.asData?.value.category ==
                availableCreditCategories.last;
            final hasMore = creditsQuery.asData?.value.hasMore == true;
            final isLastCredit = credits.value?.length == value + 1;

            switch ((isLastCredit, hasMore, isLastCategory)) {
              case (true, true, _):
                await creditsNotifier.fetchMore();
                break;
              case (true, false, false):
                {
                  final nextCategory = availableCreditCategories.elementAt(
                    creditsQuery.asData!.value.category.index + 1,
                  );
                  await creditsNotifier.setCategory(nextCategory);
                }
                break;
              default:
                break;
            }
          },
        ),
        itemCount: credits.value?.length ?? 0,
        itemBuilder: (context, index, pageViewIndex) =>
            HookBuilder(builder: (context) {
          final credit = credits.value!.elementAt(index);

          return Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: CreditsItem(credit: credit),
          );
        }),
      ),
    );
  }
}
