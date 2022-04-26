import 'package:store_flowable/src/core/loading_state_stream.dart';
import 'package:store_flowable/src/getting_from.dart';

abstract class StoreFlowable<DATA> {
  LoadingStateStream<DATA> publish({bool forceRefresh});

  Future<DATA?> getData({GettingFrom from});

  Future<DATA> requireData({GettingFrom from});

  Future<void> validate();

  Future<void> refresh();

  Future<void> update(DATA? newData);
}
