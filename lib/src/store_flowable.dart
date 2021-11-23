import 'package:store_flowable/src/core/loading_state_stream.dart';
import 'package:store_flowable/src/getting_from.dart';

abstract class StoreFlowable<DATA> {
  LoadingStateStream<DATA> publish({final bool forceRefresh});

  Future<DATA?> getData({final GettingFrom from});

  Future<DATA> requireData({final GettingFrom from});

  Future<void> validate();

  Future<void> refresh();

  Future<void> update(final DATA? newData);
}
