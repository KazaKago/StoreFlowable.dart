import 'package:rxdart/rxdart.dart';
import 'package:store_flowable/src/data_state.dart';
import 'package:store_flowable/src/data_state_manager.dart';
import 'package:store_flowable/src/flow_accessor.dart';

abstract class FlowableDataStateManager<KEY> implements DataStateManager<KEY>, FlowAccessor<KEY> {
  final Map<KEY, BehaviorSubject<DataState>> _dataState = {};

  @override
  Stream<DataState> getFlow(final KEY key) {
    return _dataState.getOrCreate(key);
  }

  @override
  DataState loadState(final KEY key) {
    return _dataState.getOrCreate(key).requireValue;
  }

  @override
  void saveState(final KEY key, final DataState state) {
    _dataState.getOrCreate(key).add(state);
  }

  void clearAll() {
    _dataState
      ..forEach((key, value) => value.close())
      ..clear();
  }
}

extension _MapBehaviorSubjectDataStateExtension<K> on Map<K, BehaviorSubject<DataState>> {
  BehaviorSubject<DataState> getOrCreate(final K key) {
    return getOrCreateSeeded(key, () => const DataState.fixed(noMoreAdditionalData: false));
  }
}

extension _MapBehaviorSubjectExtension<K, V> on Map<K, BehaviorSubject<V>> {
  BehaviorSubject<V> getOrCreateSeeded(final K key, final V Function() seed) {
    return getOrPut(key, () => BehaviorSubject.seeded(seed()));
  }
}

extension _MapExtension<K, V> on Map<K, V> {
  V getOrPut(final K key, final V Function() orElse) {
    final value = this[key];
    if (value == null) {
      final elseValue = orElse();
      this[key] = elseValue;
      return elseValue;
    } else {
      return value;
    }
  }
}
