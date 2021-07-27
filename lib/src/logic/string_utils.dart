extension StringExtension on String? {
  bool isNullOrEmpty() {
    return this == null || this!.isEmpty;
  }
}
