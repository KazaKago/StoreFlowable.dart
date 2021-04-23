import 'package:store_flowable/core/state.dart';
import 'package:store_flowable/getting_from.dart';

abstract class StoreFlowable<KEY, DATA> {
  Stream<State<DATA>> publish({final bool forceRefresh});

  Future<DATA?> getData({final GettingFrom from});

  Future<DATA> requireData({final GettingFrom from});

  Future<void> validate();

  Future<void> refresh({final bool clearCacheWhenFetchFails, final bool continueWhenError});

  Future<void> update(final DATA? newData);
}
