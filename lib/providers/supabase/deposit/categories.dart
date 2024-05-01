import 'package:collection/collection.dart';
import 'package:finsight/collections/supabase.dart';
import 'package:finsight/models/models.dart';
import 'package:finsight/services/supabase/supabase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final depositCategoriesProvider =
    FutureProvider<List<SupabaseDepositsCategory>>((ref) async {
  final categories = await supabase
      .from(SupabaseViews.depositAvailableCategories)
      .select()
      .withConverter<List<SupabaseDepositsCategory>>(
        (json) => json
            .map(
              (map) => SupabaseDepositsCategory.values
                  .firstWhere((el) => el.name == map['offerCategory']),
            )
            .sorted((a, b) => a.index.compareTo(b.index))
            .toList(),
      );

  return categories;
});
