import 'package:store_flowable/as_data_type.dart';
import 'package:store_flowable/core/state.dart';

abstract class PagingStoreFlowable<KEY, DATA> {
  Stream<State<List<DATA>>> publish({final bool forceRefresh});

  Future<List<DATA>> get({final AsDataType type});

  Future<void> validate();

  Future<void> refresh({final bool clearCacheWhenFetchFails, final bool continueWhenError});

  Future<void> requestAddition({final bool continueWhenError});

  Future<void> update(final List<DATA>? newData);
}
