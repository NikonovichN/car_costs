import 'package:freezed_annotation/freezed_annotation.dart';

class TimestampSerializer implements JsonConverter<DateTime, dynamic> {
  const TimestampSerializer();

  @override
  DateTime fromJson(dynamic timestamp) => DateTime.parse(timestamp);

  @override
  String toJson(DateTime timestamp) => timestamp.toIso8601String();
}
