import 'package:store_flowable/src/core/state_stream.dart';
import 'package:store_flowable/src/getting_from.dart';

abstract class StoreFlowable<KEY, DATA> {
  StateStream<DATA> publish({final bool forceRefresh});

  Future<DATA?> getData({final GettingFrom from});

  Future<DATA> requireData({final GettingFrom from});

  Future<void> validate();

  Future<void> refresh({final bool clearCacheWhenFetchFails, final bool continueWhenError});

  Future<void> update(final DATA? newData);
}
