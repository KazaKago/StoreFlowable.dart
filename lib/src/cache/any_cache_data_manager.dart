import 'package:store_flowable/src/cache/cache_data_manager.dart';

class AnyCacheDataManager<DATA> implements CacheDataManager<DATA> {
  AnyCacheDataManager({required this.loadFunc, required this.saveFunc, required this.saveNextFunc, required this.savePrevFunc});

  final Future<DATA?> Function() loadFunc;
  final Future<void> Function(DATA? newData) saveFunc;
  final Future<void> Function(DATA cachedData, DATA newData) saveNextFunc;
  final Future<void> Function(DATA cachedData, DATA newData) savePrevFunc;

  @override
  Future<DATA?> load() {
    return loadFunc();
  }

  @override
  Future<void> save(DATA? newData) {
    return saveFunc(newData);
  }

  @override
  Future<void> saveNext(DATA cachedData, DATA newData) {
    return saveNextFunc(cachedData, newData);
  }

  @override
  Future<void> savePrev(DATA cachedData, DATA newData) {
    return savePrevFunc(cachedData, newData);
  }
}
