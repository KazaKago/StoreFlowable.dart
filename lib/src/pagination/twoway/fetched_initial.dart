class FetchedInitial<DATA> {
  const FetchedInitial({required this.data, required this.nextKey, required this.prevKey});

  final DATA data;
  final String? nextKey;
  final String? prevKey;
}
