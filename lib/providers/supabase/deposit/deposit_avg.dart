import 'package:finsight/collections/supabase.dart';
import 'package:finsight/models/models.dart';
import 'package:finsight/services/supabase/supabase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final depositAvgApyProvider = FutureProvider<List<SupabaseDepositAvgAPY>>(
  (ref) async {
    return await supabase
        .from(SupabaseViews.depositAvgAPYEstimatedEarning)
        .select()
        .withConverter<List<SupabaseDepositAvgAPY>>(
          (json) =>
              json.map((el) => SupabaseDepositAvgAPY.fromJson(el)).toList(),
        );
  },
);
