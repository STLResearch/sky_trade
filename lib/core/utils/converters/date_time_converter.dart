import 'package:freezed_annotation/freezed_annotation.dart' show JsonConverter;

final class DateTimeConverter implements JsonConverter<DateTime, int> {
  const DateTimeConverter();

  @override
  DateTime fromJson(int json) => DateTime.fromMillisecondsSinceEpoch(
        json,
      );

  @override
  int toJson(DateTime object) => object.millisecondsSinceEpoch;
}

final class NullableDateTimeConverter
    implements JsonConverter<DateTime?, int?> {
  const NullableDateTimeConverter();

  @override
  DateTime? fromJson(int? json) {
    if (json == null) return null;

    return DateTime.fromMillisecondsSinceEpoch(
      json,
    );
  }

  @override
  int? toJson(DateTime? object) {
    if (object == null) return null;

    return object.millisecondsSinceEpoch;
  }
}

final class StringDateTimeConverter implements JsonConverter<DateTime, String> {
  const StringDateTimeConverter();

  @override
  DateTime fromJson(String json) => DateTime.parse(
        json,
      );

  @override
  String toJson(DateTime object) => object.toIso8601String();
}
