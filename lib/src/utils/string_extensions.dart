extension StringExt on String {
  String firstLetterToUpperCase() {
    return this[0].toUpperCase() + substring(1);
  }
}
