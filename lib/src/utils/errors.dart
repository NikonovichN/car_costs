class NoDataException implements Exception {
  final String message;
  const NoDataException({this.message = "No data!"});
}

class NoUserDataException implements Exception {
  final String message;
  NoUserDataException({this.message = "No user data!"});
}
