import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class PaginatedState {
  final int offset;
  final int limit;
  final bool hasMore;

  PaginatedState({
    required this.offset,
    required this.limit,
    required this.hasMore,
  });

  int get nextOffset => offset + limit + 1;
}

abstract class PaginatedAsyncNotifier<T extends PaginatedState>
    extends AsyncNotifier<T> {
  PaginatedAsyncNotifier() : super();

  Future<void> fetchMore();
}

abstract class FamilyPaginatedAsyncNotifier<T extends PaginatedState, Arg>
    extends FamilyAsyncNotifier<T, Arg> {
  FamilyPaginatedAsyncNotifier() : super();

  Future<void> fetchMore();
}

// ignore: subtype_of_sealed_class
class AsyncPaginating<T> extends AsyncData<T> {
  const AsyncPaginating(super.value);

  @override
  bool get isLoading => true;
}

extension AsyncDataPaginating<T> on AsyncValue<T> {
  bool get isLoadingNextPage => this is AsyncPaginating<T>;
}
