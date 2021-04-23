class FetchingResult<DATA> {
  const FetchingResult({required this.data, this.noMoreAdditionalData = false});

  final DATA data;
  final bool noMoreAdditionalData;
}
