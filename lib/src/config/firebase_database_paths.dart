class DataBasePaths {
  DataBasePaths();

  final users = ['/users'];
  List<String> user(String userUid) => ['/users', '/$userUid'];
  List<String> cars(String userUid) => ['/users', '/$userUid', '/cars'];
  List<String> car(String userUid, String vin) =>
      ['/users', '/$userUid', '/cars', '/$vin'];
}
