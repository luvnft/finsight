import 'package:finsight/collections/supabase.dart';
import 'package:finsight/models/models.dart';
import 'package:finsight/services/supabase/supabase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final creditsEstEarnAvgProvider =
    FutureProvider<List<SupabaseCreditEstEarnAvg>>((ref) async {
  return await supabase
      .from(SupabaseViews.creditEstEarnAvg)
      .select()
      .withConverter<List<SupabaseCreditEstEarnAvg>>(
        (json) =>
            json.map((el) => SupabaseCreditEstEarnAvg.fromJson(el)).toList(),
      );
});
