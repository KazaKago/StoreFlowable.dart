import 'package:store_flowable/as_data_type.dart';
import 'package:store_flowable/core/state.dart';

abstract class StoreFlowable<KEY, DATA> {
  Stream<State<DATA>> publish({final bool forceRefresh});

  Future<DATA> get({final AsDataType type});

  Future<void> validate();

  Future<void> refresh({final bool clearCacheWhenFetchFails, final bool continueWhenError});

  Future<void> update(final DATA? newData);
}
