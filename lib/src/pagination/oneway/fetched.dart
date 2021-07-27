class Fetched<DATA> {
  const Fetched({required this.data, required this.nextKey});

  final DATA data;
  final String? nextKey;
}
