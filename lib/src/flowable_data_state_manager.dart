import 'package:rxdart/rxdart.dart';
import 'package:store_flowable/src/datastate/additional_data_state.dart';
import 'package:store_flowable/src/datastate/data_state.dart';
import 'package:store_flowable/src/datastate/data_state_manager.dart';
import 'package:store_flowable/src/datastate/flow_accessor.dart';

abstract class FlowableDataStateManager<KEY> implements DataStateManager<KEY>, FlowAccessor<KEY> {
  final Map<KEY, BehaviorSubject<DataState>> _dataState = {};

  @override
  Stream<DataState> getFlow(final KEY key) {
    return _dataState.getOrCreate(key);
  }

  @override
  DataState load(final KEY key) {
    return _dataState.getOrCreate(key).value;
  }

  @override
  void save(final KEY key, final DataState state) {
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
    return getOrCreateSeeded(key, () => const DataState.fixed(nextDataState: AdditionalDataState.fixedWithNoMoreAdditionalData(), prevDataState: AdditionalDataStateFixedWithNoMoreAdditionalData(), isInitial: true));
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
