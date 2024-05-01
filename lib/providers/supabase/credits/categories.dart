import 'package:collection/collection.dart';
import 'package:finsight/collections/supabase.dart';
import 'package:finsight/models/models.dart';
import 'package:finsight/services/supabase/supabase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final creditCategoriesProvider =
    FutureProvider<List<SupabaseCreditCategory>>((ref) async {
  final categories = await supabase
      .from(SupabaseViews.creditAvailableCategories)
      .select()
      .withConverter<List<SupabaseCreditCategory>>(
        (json) => json
            .map(
              (category) => SupabaseCreditCategory.values.firstWhere(
                (el) => el.name == category['category'],
              ),
            )
            .sorted((a, b) => a.index.compareTo(b.index))
            .toList(),
      );

  return categories;
});
