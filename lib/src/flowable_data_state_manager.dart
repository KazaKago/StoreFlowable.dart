import 'package:rxdart/rxdart.dart';
import 'package:store_flowable/src/datastate/additional_data_state.dart';
import 'package:store_flowable/src/datastate/data_state.dart';
import 'package:store_flowable/src/datastate/data_state_manager.dart';
import 'package:store_flowable/src/datastate/flow_accessor.dart';

abstract class FlowableDataStateManager<PARAM> implements DataStateManager<PARAM>, FlowAccessor<PARAM> {
  final Map<PARAM, BehaviorSubject<DataState>> _dataState = {};

  @override
  Stream<DataState> getFlow(PARAM param) {
    return _dataState.getOrCreate(param);
  }

  @override
  DataState load(PARAM param) {
    return _dataState.getOrCreate(param).value;
  }

  @override
  void save(PARAM param, DataState state) {
    _dataState.getOrCreate(param).add(state);
  }

  void clearAll() {
    _dataState
      ..forEach((key, value) => value.close())
      ..clear();
  }
}

extension _MapBehaviorSubjectDataStateExtension<K> on Map<K, BehaviorSubject<DataState>> {
  BehaviorSubject<DataState> getOrCreate(K key) {
    return getOrCreateSeeded(key, () => const DataState.fixed(nextDataState: AdditionalDataState.fixedWithNoMoreAdditionalData(), prevDataState: AdditionalDataStateFixedWithNoMoreAdditionalData()));
  }
}

extension _MapBehaviorSubjectExtension<K, V> on Map<K, BehaviorSubject<V>> {
  BehaviorSubject<V> getOrCreateSeeded(K key, V Function() seed) {
    return getOrPut(key, () => BehaviorSubject.seeded(seed()));
  }
}

extension _MapExtension<K, V> on Map<K, V> {
  V getOrPut(K key, V Function() orElse) {
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
